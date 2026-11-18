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
// package org.allbinary.game.configuration.persistance

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/ByteArrayInputStream.dart';
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/DataInputStream.dart';
import 'package:allbinary/java/io/DataOutputStream.dart';
import 'package:allbinary/javax/microedition/rms/RecordEnumeration.dart';
import 'package:allbinary/javax/microedition/rms/RecordStore.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/HashtableUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/BasicPersitance.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordStore.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordFilter.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordComparator.dart';

class KeyValuePersistance extends BasicPersitance {
    late TsUtil tsUtil;

    // Java field initializers run after the base constructor
    void initFieldsKeyValuePersistance() {
    this.tsUtil = TsUtil.getInstance();
    }
    

    KeyValuePersistance(String recordId) : super(recordId) {
        this.initFieldsKeyValuePersistance();
        
    }
    

    void loadAll(AbeClientInformationInterface abeClientInformation) {
        this.loadAllSize(abeClientInformation, 1);
    }
    

    void loadAllSize(AbeClientInformationInterface abeClientInformation, int size) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            final RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            late ABHashtable hashtable;
            late String name;
            late String value;
            final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
            final StringMaker stringBuffer = StringMaker();
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
                    hashtable = ABHashtable.with0();
                    for (int index = 0; index < size; index++) {
                        name = inputStream.readUTF();
                        inputStream.readUTF();
                        value = inputStream.readUTF();
                        hashtable.put(name, value);
                    }
                    this.valueList.add(hashtable);
                    this.idList.add(smallIntegerSingletonFactory.getAt(id));
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
            this.logUtil.putF(StringMaker().append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            final ByteArrayOutputStream byteArrayOutputStream = ByteArrayOutputStream();
            final DataOutputStream outputStream = DataOutputStream(byteArrayOutputStream);
            late String value;
            final CommonSeps commonSeps = CommonSeps.getInstance();
            final List<Object?> objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
            late Object anyType;
            final int size = objectArray.length;
            for (int index = 0; index < size; index++) {
                outputStream.writeUTF((objectArray[index]! as String));
                outputStream.writeUTF(commonSeps.EQUALS);
                anyType = objectArray[index]!;
                value = (hashtable.get(anyType) as String);
                outputStream.writeUTF(value);
            }
            final TsUtil tsUtil = TsUtil.getInstance();
            final List<int> savedGameBytes = tsUtil.getByteArray(byteArrayOutputStream.toString());
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
    

    ABHashtable get(int index) {
        final ABHashtable hashtable = (this.valueList.objectArray[index]! as ABHashtable);
        return hashtable;
    }
}

