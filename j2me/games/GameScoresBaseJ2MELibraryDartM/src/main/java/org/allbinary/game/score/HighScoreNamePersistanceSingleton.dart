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
// package org.allbinary.game.score

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/ByteArrayInputStream.dart';
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/DataInputStream.dart';
import 'package:allbinary/java/io/DataOutputStream.dart';
import 'package:allbinary/javax/microedition/rms/RecordEnumeration.dart';
import 'package:allbinary/javax/microedition/rms/RecordStore.dart';
import 'package:allbinary/javax/microedition/rms/RecordStoreException.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordComparator.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordFilter.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordStore.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/java/exception/ExceptionUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/persistance/PlatformRecordIdUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class HighScoreNamePersistanceSingleton {
    static HighScoreNamePersistanceSingleton SINGLETON = HighScoreNamePersistanceSingleton();
    late LogUtil logUtil;
    late TsUtil tsUtil;
    late CommonStrings commonStrings;
    late PlatformRecordIdUtil platformRecordIdUtil;
    late String RECORD_ID;
    late String name;
    late BasicArrayList nameBasicArrayList;

    // Java field initializers run after the base constructor
    void initFieldsHighScoreNamePersistanceSingleton() {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    this.RECORD_ID = "_SN";
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.nameBasicArrayList = BasicArrayListD();
    }

    HighScoreNamePersistanceSingleton() {
        this.initFieldsHighScoreNamePersistanceSingleton();
    }
    

    static HighScoreNamePersistanceSingleton getInstance() {
        return HighScoreNamePersistanceSingleton.SINGLETON;
    }
    

    void clear() {
        this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    void deleteAll(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo) {
        int size = this.nameBasicArrayList.size();
        for (int index = 0; index < size; index++) {
            final int integer = (this.nameBasicArrayList.objectArray[index]! as int);
            this.delete(abeClientInformation, gameInfo, (integer).toInt());
        }
        this.clear();
    }
    

    String getRecordId(AbeClientInformationInterface abeClientInformation) {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.RECORD_ID);
    }
    

    void delete(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, int deleteId) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(StringMaker().append("Deleting: ").appendint(deleteId).toString(), this, this.commonStrings.delete);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            recordStore.deleteRecord(deleteId);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        } finally {
            if (recordStore != null) {
                PreLogUtil.put("Closing RecordStore", this, this.commonStrings.delete);
                recordStore.closeRecordStore();
            }
        }
    }
    

    BasicArrayList getIds() {
        return this.nameBasicArrayList;
    }
    

    String load(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            if (this.name == StringUtil.getInstance().EMPTY_STRING) {
                final String LOADING_ID = "Loading id: ";
                recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
                final RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
                final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
                late List<int> recordAsBytes;
                late ByteArrayInputStream byteArrayInputStream;
                late DataInputStream inputStream;
                while (recordEnum.hasNextElement()) {
                    final int id = recordEnum.nextRecordId();
                    this.logUtil.putF(StringMaker().append(LOADING_ID).appendint(id).toString(), this, this.commonStrings.LOAD);
                    recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes);
                    inputStream = DataInputStream(byteArrayInputStream);
                    while (inputStream.available() > 0) {
                        this.name = inputStream.readUTF();
                    }
                    this.nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id));
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.save(abeClientInformation, gameInfo, this.name);
            this.logUtil.putF(StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(ExceptionUtil.getInstance().getStackTrace(e)).toString(), this, this.commonStrings.LOAD);
            }
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                }
            } catch (jcaught) {
                if (jcaught is RecordStoreException) {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e);
                } else {
                    rethrow;
                }
            }
        }
        return this.name;
    }
    

    void save(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, String name) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(StringMaker().append("Saving: ").append(name).toString(), this, this.commonStrings.SAVE);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            final ByteArrayOutputStream byteArrayOutputStream = ByteArrayOutputStream();
            final DataOutputStream outputStream = DataOutputStream(byteArrayOutputStream);
            outputStream.writeUTF(name);
            final List<int> savedGameBytes = byteArrayOutputStream.toByteArray();
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length);
            this.name = name;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e);
            }
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.SAVE);
                    recordStore.closeRecordStore();
                }
            } catch (jcaught) {
                if (jcaught is RecordStoreException) {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.SAVE, e);
                } else {
                    rethrow;
                }
            }
        }
    }
}

