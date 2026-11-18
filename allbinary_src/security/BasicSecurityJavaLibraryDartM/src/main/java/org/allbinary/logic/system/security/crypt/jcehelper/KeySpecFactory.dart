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
import 'package:allbinary/java/security/spec/KeySpec.dart';
import 'package:allbinary/javax/crypto/spec/DESKeySpec.dart';
import 'package:allbinary/javax/crypto/spec/DESedeKeySpec.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class KeySpecFactory {
    static final KeySpecFactory instance = KeySpecFactory();
    late String DES;
    late String DESEDE;
    late String BLOWFISH;

    // Java field initializers run after the base constructor
    void initFieldsKeySpecFactory() {
    this.DES = "DES";
    this.DESEDE = "DESede";
    this.BLOWFISH = "Blowfish";
    }
    

    static KeySpecFactory getInstance() {
        return KeySpecFactory.instance;
    }
    

    KeySpecFactory() {
        this.initFieldsKeySpecFactory();
    }
    

    KeySpec getInstance2(String algorithm, List<int> keyData) {
        try {
            final TsUtil tsUtil = TsUtil.getInstance();
            if (tsUtil.compareTo(algorithm, this.DES) == 0) {
                return DESKeySpec(keyData);
            } else if (tsUtil.compareTo(algorithm, this.DESEDE) == 0) {
                return DESedeKeySpec(keyData);
            } else {
                throw JException('RuntimeException', '');
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            throw JException('RuntimeException', '');
            }
        }
    }
}

