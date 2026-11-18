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
import 'package:allbinary/java/io/ByteArrayInputStream.dart';
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/DataInputStream.dart';
import 'package:allbinary/java/io/DataOutputStream.dart';
import 'package:allbinary/javax/microedition/rms/RecordEnumeration.dart';
import 'package:allbinary/javax/microedition/rms/RecordStore.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/BasicPersitance.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordComparator.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordFilter.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordStore.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/HashtableUtil.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';

//GameInputPersistanceLibrary
class InputPersistance extends BasicPersitance {
    late TsUtil tsUtil;
    late HashtableUtil hashtableUtil;

    // Java field initializers run after the base constructor
    void initFieldsInputPersistance() {
    this.tsUtil = TsUtil.getInstance();
    this.hashtableUtil = HashtableUtil.getInstance();
    }
    

    InputPersistance(String name) : super(name) {
        this.initFieldsInputPersistance();
        
    }
    

    void loadAll(AbeClientInformationInterface abeClientInformation) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            final RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            int gameActionInputId = 0;
            int inputId = 0;
            late Input gameActionInput;
            late Input input;
            late ABHashtable hashtable;
            final GameKeyMappingFactory gameKeyFactory = GameKeyMappingFactory.getInstance();
            final StringMaker stringBuffer = StringMaker();
            final InputFactory inputFactory = InputFactory.getInstance();
            final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            final StdUtil stdUtil = StdUtil.getInstance();
            late List<int> recordAsBytes;
            late ByteArrayInputStream byteArrayInputStream;
            late DataInputStream inputStream;
            while (recordEnum.hasNextElement()) {
                final int id = recordEnum.nextRecordId();
                stringBuffer.delete(0, stringBuffer.length());
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL);
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes);
                    inputStream = DataInputStream(byteArrayInputStream);
                    hashtable = stdUtil.createHashtable();
                    int value = 0;
                    while (inputStream.available() > 0) {
                        final String gameActionInputIdAsString = inputStream.readUTF();
                        value = int.parse(gameActionInputIdAsString);
                        gameActionInputId = value;
                        inputStream.readUTF();
                        value = int.parse(inputStream.readUTF());
                        inputId = value;
                        gameActionInput = gameKeyFactory.getGameKey((gameActionInputId).toSigned(32));
                        input = inputFactory.getInstanceById((inputId).toSigned(32));
                        if (input == inputFactory.NO_INPUT || gameActionInput == null) {
                            stringBuffer.delete(0, stringBuffer.length());
                            if (input == inputFactory.NO_INPUT) {
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING_ID);
                                stringBuffer.appendlong(inputId);
                                stringBuffer.append(this.persistanceStrings.GAME_ACTION_INPUT);
                                stringBuffer.appendlong(gameActionInputId);
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                            if (gameActionInput == null) {
                                stringBuffer.delete(0, stringBuffer.length());
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong(gameActionInputId);
                                stringBuffer.append(this.persistanceStrings.ID);
                                stringBuffer.appendlong(inputId);
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL);
                            }
                        } else {
                        }
                        hashtable.put(input, gameActionInput);
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
                } else {
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        } finally {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore();
            }
        }
    }
    

    void save(AbeClientInformationInterface abeClientInformation, ABHashtable hashtable) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            final StringMaker stringBuffer = StringMaker();
            PreLogUtil.put(stringBuffer.append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            ByteArrayOutputStream byteArrayOutputStream = ByteArrayOutputStream();
            DataOutputStream outputStream = DataOutputStream(byteArrayOutputStream);
            late Input gameActionInput;
            late BasicArrayList list;
            late Input input;
            late List<int> savedGameBytes;
            final CommonSeps commonSeps = CommonSeps.getInstance();
            final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            final List<Object?> inputObjectArray = this.hashtableUtil.getKeysAsArray(hashtable);
            final int size = inputObjectArray.length;
            for (int index = 0; index < size; index++) {
                gameActionInput = (inputObjectArray[index]! as Input);
                list = (hashtable.get(inputObjectArray[index]!) as BasicArrayList);
                for (int index2 = 0; index2 < list.size(); index2++) {
                    final String gameActionInputIdAsString = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).toString();
                    outputStream.writeUTF(gameActionInputIdAsString);
                    outputStream.writeUTF(commonSeps.EQUALS);
                    input = (list.objectArray[index2]! as Input);
                    final String inputIdAsString = smallIntegerSingletonFactory.getAt(input.getId()).toString();
                    outputStream.writeUTF(inputIdAsString);
                }
            }
            savedGameBytes = byteArrayOutputStream.toByteArray();
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        } finally {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE);
                recordStore.closeRecordStore();
            }
        }
    }
}

