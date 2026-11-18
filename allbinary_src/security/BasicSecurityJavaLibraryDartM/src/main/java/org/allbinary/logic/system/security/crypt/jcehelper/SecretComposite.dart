/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
import 'package:allbinary/javax/crypto/Cipher.dart';
import 'package:allbinary/javax/crypto/SecretKey.dart';
import 'package:allbinary/org/allbinary/logic/java/byteutil/ByteUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.dart';

class SecretComposite extends BaseSecretComposite {
    late ByteUtil byteUtil;
    late Cipher cipher;
    late SecretKey secretKey;
    late List<int> key;

    // Java field initializers run after the base constructor
    void initFieldsSecretComposite() {
    this.byteUtil = ByteUtil.getInstance();
    
    
    
    }
    

    SecretComposite(SecretKey secretKey, Cipher cipher, List<int> key) {
        this.initFieldsSecretComposite();
        this.secretKey = secretKey;
        this.cipher = cipher;
        this.key = key;
    }
    

    @override
    List<int> encrypt(List<int> array) {
        array = this.mutilate(array);
        this.cipher.init(Cipher.ENCRYPT_MODE, this.secretKey);
        return this.cipher.doFinal(array);
    }
    

    @override
    List<int> decrypt(List<int> array) {
        this.cipher.init(Cipher.DECRYPT_MODE, this.secretKey);
        return this.mutilate(this.cipher.doFinal(array));
    }
    

    List<int> mutilate(List<int> array) {
        for (int index = 0; index < this.key.length; index++) {
            int value = this.key[index];
            if (value < 8 && value > 0) {
                array = this.byteUtil.xorByte(array, value);
            }
        }
        return array;
    }
}

