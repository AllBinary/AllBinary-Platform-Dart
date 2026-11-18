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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/rms/RecordEnumeration.dart';
import 'package:allbinary/javax/microedition/rms/RecordStore.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/BasicPersitance.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordComparator.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordFilter.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/HashtableUtil.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';

//GameInputNoPersistanceLibrary
class InputPersistance extends BasicPersitance {
    late HashtableUtil hashtableUtil;

    // Java field initializers run after the base constructor
    void initFieldsInputPersistance() {
    this.hashtableUtil = HashtableUtil.getInstance();
    }
    

    InputPersistance(String name) : super(name) {
        this.initFieldsInputPersistance();
        
    }
    

    void loadAll(AbeClientInformationInterface abeClientInformation) {
        final RecordStore recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
        final RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
        late ABHashtable hashtable;
        final StringMaker stringBuffer = StringMaker();
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        int id = 0;
        while (recordEnum.hasNextElement()) {
            id = recordEnum.nextRecordId();
            stringBuffer.delete(0, stringBuffer.length());
            this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
            hashtable = StdUtil.getInstance().createHashtable();
            this.valueList.add(hashtable);
            this.idList.add(smallIntegerSingletonFactory.getAt(id));
        }
        recordStore.closeRecordStore();
    }
    

    void save(AbeClientInformationInterface abeClientInformation, ABHashtable hashtable) {
        PreLogUtil.put(StringMaker().append(this.persistanceStrings.NOT_SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
        final RecordStore recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
        late Input gameActionInput;
        late BasicArrayList list;
        late Input input;
        final List<Object?> inputObjectArray = this.hashtableUtil.getKeysAsArray(hashtable);
        final int size = inputObjectArray.length;
        for (int index = 0; index < size; index++) {
            gameActionInput = (inputObjectArray[index]! as Input);
            list = (hashtable.get(inputObjectArray[index]!) as BasicArrayList);
            for (int index2 = 0; index2 < list.size(); index2++) {
                input = (list.get(index2) as Input);
            }
        }
        recordStore.closeRecordStore();
    }
}

