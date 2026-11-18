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
import 'package:allbinary/javax/microedition/rms/RecordStore.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/persistance/PlatformRecordIdUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/PersistanceStrings.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordStore.dart';

class BasicPersitance {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late PersistanceStrings persistanceStrings;
    late PlatformRecordIdUtil platformRecordIdUtil;
    late String recordId;
    late BasicArrayList valueList;
    late BasicArrayList idList;

    // Java field initializers run after the base constructor
    void initFieldsBasicPersitance() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.persistanceStrings = PersistanceStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    
    this.valueList = BasicArrayListD();
    this.idList = BasicArrayListD();
    }
    

    BasicPersitance(String recordId) {
        this.initFieldsBasicPersitance();
        this.recordId = recordId;
    }
    

    void deleteRecoreStore(AbeClientInformationInterface abeClientInformation) {
        RecordStore.deleteRecordStore(this.getRecordId(abeClientInformation));
    }
    

    void deleteAll(AbeClientInformationInterface abeClientInformation) {
        int size = this.idList.size();
        for (int index = 0; index < size; index++) {
            int integer = (this.idList.objectArray[index]! as int);
            this.delete(abeClientInformation, (integer).toInt());
        }
        this.clear();
    }
    

    void delete(AbeClientInformationInterface abeClientInformation, int deleteId) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(StringMaker().append(this.persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), this, this.commonStrings.delete);
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true);
            recordStore.deleteRecord(deleteId);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        } finally {
            if (recordStore != null) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.delete);
                recordStore.closeRecordStore();
            }
        }
    }
    

    String getRecordId(AbeClientInformationInterface abeClientInformation) {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, this.recordId);
    }
    

    BasicArrayList getList() {
        return this.valueList;
    }
    

    BasicArrayList getIds() {
        return this.idList;
    }
    

    void clear() {
        this.valueList.clear();
        this.idList.clear();
    }
}

