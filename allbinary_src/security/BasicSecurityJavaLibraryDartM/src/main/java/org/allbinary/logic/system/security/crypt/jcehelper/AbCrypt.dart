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
import 'package:allbinary/java/security/Security.dart';
import 'package:allbinary/java/security/spec/KeySpec.dart';
import 'package:allbinary/javax/crypto/Cipher.dart';
import 'package:allbinary/javax/crypto/SecretKey.dart';
import 'package:allbinary/javax/crypto/SecretKeyFactory.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/init/crypt/jcehelper/CryptInterface.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/bouncycastle/jce/provider/BouncyCastleProvider.dart';
import 'package:allbinary/org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.dart';
import 'package:allbinary/org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/crypt/jcehelper/SecretComposite.dart';

class AbCrypt implements CryptInterface {
    late TsUtil tsUtil;
    late BaseSecretComposite secretComposite;
    late String algorithm;

    // Java field initializers run after the base constructor
    void initFieldsAbCrypt() {
    this.tsUtil = TsUtil.getInstance();
    this.secretComposite = BaseSecretComposite.NULL_SECRET_COMPOSITE;
    
    }
    

    AbCrypt(String algorithm) {
        this.initFieldsAbCrypt();
        this.algorithm = algorithm;
    }
    

    void init(String keyAsString) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        try {
            try {
                Security.addProvider(BouncyCastleProvider());
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
                }
            }
            final List<int> key = this.tsUtil.getByteArray(keyAsString);
            final KeySpec keySpec = KeySpecFactory.getInstance().getInstance2(this.algorithm, key);
            final SecretKeyFactory keyFactory = SecretKeyFactory.getInstance1(this.algorithm);
            final SecretKey secretKey = keyFactory.generateSecret(keySpec);
            final Cipher cipher = Cipher.getInstance1(this.algorithm);
            this.secretComposite = SecretComposite(secretKey, cipher, key);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE("init Failed", this, commonStrings.INIT, e);
            }
        }
    }
    

    @override
    List<int> encrypt(List<int> array) {
        try {
            return this.secretComposite.encrypt(array);
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
            return this.secretComposite.decrypt(array);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
            }
        }
    }
}

