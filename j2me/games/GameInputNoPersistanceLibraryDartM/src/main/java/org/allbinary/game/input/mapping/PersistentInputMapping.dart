/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.input.mapping

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Enumeration.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/GamePersistanceStrings.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputPersistance.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/event/InputMappingEvent.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/event/NullInputMappingEventListener.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/EnumerationUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';

//GameInputNoPersistanceLibrary
class PersistentInputMapping {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late EnumerationUtil enumerationUtil;
    late InputToGameKeyMapping inputMapping;
    late InputMappingEventListenerInterface inputMappingEventListenerInterface;
    late InputPersistance inputPersistance;
    late InputMappingEvent inputMappingEvent;

    // Java field initializers run after the base constructor
    void initFieldsPersistentInputMapping() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.inputMapping = InputToGameKeyMapping();
    this.inputMappingEventListenerInterface = NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER;
    
    this.inputMappingEvent = InputMappingEvent(this);
    }
    

    static PersistentInputMapping getNullInstance() {
        if (PersistentInputMapping.instance == NullUtil.getInstance().NULL_OBJECT) {
            PersistentInputMapping.instance = PersistentInputMapping(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
        }
        return (PersistentInputMapping.instance as PersistentInputMapping);
    }
    

    PersistentInputMapping(String name) {
        this.initFieldsPersistentInputMapping();
        this.inputPersistance = InputPersistance(name);
    }
    

    int getTotalMapped() {
        return this.getInputMapping().getHashtable().size();
    }
    

    bool isDefaultNew() {
        return false;
    }
    

    InputToGameKeyMapping getDefault() {
        return InputToGameKeyMapping.getNullInstance();
    }
    

    void setDefault(AbeClientInformationInterface abeClientInformation) {
        this.getInputMapping().removeAll();
        this.getInputMapping().addMapping(this.getDefault());
        this.save(abeClientInformation);
    }
    

    void update(AbeClientInformationInterface abeClientInformation) {
        this.inputPersistance.deleteAll(abeClientInformation);
        this.save(abeClientInformation);
    }
    

    void save(AbeClientInformationInterface abeClientInformation) {
        this.inputPersistance.save(abeClientInformation, this.getInputMapping().getHashtable());
        this.inputMappingEvent.setInputToGameKeyMapping(this.getInputMapping());
        if (this.getInputMappingEventListenerInterface() != null) {
            this.getInputMappingEventListenerInterface().onInputMappingEvent(this.inputMappingEvent);
        }
    }
    

    void init(AbeClientInformationInterface abeClientInformation) {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        try {
            this.inputPersistance.loadAll(abeClientInformation);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
            this.inputPersistance.deleteRecoreStore(abeClientInformation);
            this.setDefault(abeClientInformation);
            this.inputPersistance.loadAll(abeClientInformation);
            }
        }
        final BasicArrayList list = this.inputPersistance.getList();
        int totalMappedTo = 0;
        final int size = list.size();
        late ABHashtable hashtable;
        late Enumeration enumeration;
        late Input mappedToInput;
        late Input gameActionInput;
        for (int index = 0; index < size; index++) {
            hashtable = (list.objectArray[index]! as ABHashtable);
            enumeration = hashtable.keys();
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                mappedToInput = (this.enumerationUtil.nextElement(enumeration) as Input);
                gameActionInput = (hashtable.get(mappedToInput) as Input);
                totalMappedTo++;
                this.getInputMapping().add(gameActionInput, mappedToInput);
            }
        }
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("End - Total Loaded Keys Mapped: ");
        stringBuffer.appendint(this.getTotalMapped());
        stringBuffer.append(" to: ");
        stringBuffer.appendint(totalMappedTo);
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
    }
    

    void setInputMappingEventListenerInterface(InputMappingEventListenerInterface inputMappingEventListenerInterface) {
        this.inputMappingEventListenerInterface = inputMappingEventListenerInterface;
    }
    

    InputMappingEventListenerInterface getInputMappingEventListenerInterface() {
        return this.inputMappingEventListenerInterface;
    }
    

    InputToGameKeyMapping getInputMapping() {
        return this.inputMapping;
    }
    

    bool isDelete(Input input) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    bool isSystemInput(Input input) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
}

