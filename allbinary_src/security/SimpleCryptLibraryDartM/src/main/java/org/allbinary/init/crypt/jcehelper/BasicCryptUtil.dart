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
// package org.allbinary.init.crypt.jcehelper

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/ByteArrayInputStream.dart';
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/init/crypt/jcehelper/CryptInterface.dart';

class BasicCryptUtil {
    static final BasicCryptUtil instance = BasicCryptUtil();
    late LogUtil logUtil;
    late TsUtil tsUtil;
    late String XML_START;

    // Java field initializers run after the base constructor
    void initFieldsBasicCryptUtil() {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.XML_START = "<?xml";
    }

    BasicCryptUtil() {
        this.initFieldsBasicCryptUtil();
    }
    

    static BasicCryptUtil getInstance() {
        return BasicCryptUtil.instance;
    }
    

    InputStream getDecryptedInputStream(InputStream inputStream, CryptInterface cryptInterface) {
        ByteArrayOutputStream buffer = ByteArrayOutputStream();
        int ch = 0;
        while (true) {
            ch = inputStream.read();
            if (ch == -1) {
                break;
            }
            buffer.write(ch);
        }
        List<int> decrypted = cryptInterface.decrypt(buffer.toByteArray());
        String decryptedString = jNewString(decrypted);
        int index = JString.indexOf(decryptedString, this.XML_START);
        if (index > 0) {
            decryptedString = decryptedString.substring(index);
        }
        return ByteArrayInputStream(this.tsUtil.getByteArray(decryptedString));
    }
}

