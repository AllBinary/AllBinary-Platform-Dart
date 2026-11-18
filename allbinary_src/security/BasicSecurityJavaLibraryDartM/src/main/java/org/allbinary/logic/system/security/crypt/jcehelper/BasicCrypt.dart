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
// package org.allbinary.logic.system.security.crypt.jcehelper

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/init/crypt/jcehelper/CryptInterface.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/java/byteutil/ByteUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class BasicCrypt implements CryptInterface {
    late ByteUtil byteUtil;
    late List<int> key;

    // Java field initializers run after the base constructor
    void initFieldsBasicCrypt() {
    this.byteUtil = ByteUtil.getInstance();
    
    }
    

    BasicCrypt(String keyAsString) {
        this.initFieldsBasicCrypt();
        List<int> key = NullUtil.getInstance().NULL_BYTE_ARRAY;
        try {
            key = TsUtil.getInstance().getByteArray(keyAsString);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "AbCrypt(alg,key)", e);
            }
        }
        this.key = key;
    }
    

    @override
    List<int> encrypt(List<int> array) {
        try {
            return this.mutilate(array);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
            }
        }
    }
    

    @override
    List<int> decrypt(List<int> array) {
        try {
            return this.mutilate(array);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
            }
        }
    }
    

    List<int> mutilate(List<int> array) {
        int value = 0;
        for (int index = 0; index < this.key.length; index++) {
            value = this.key[index];
            array = this.byteUtil.xor(array, value);
        }
        return array;
    }
}

