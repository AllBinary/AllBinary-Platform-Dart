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
// package org.allbinary.logic.system.security.crypt

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/tokens/Tokenizer.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class DatabaseEncoder {
    

    DatabaseEncoder() {
    }
    

    static String encode(List<int> value) {
        try {
            List<int> array = value;
            final StringMaker stringBuffer = StringMaker();
            for (int index = 0; index < array.length; index++) {
                stringBuffer.append(array[index].toString());
                if (index < array.length - 1) {
                    stringBuffer.append(CommonSeps.getInstance().SPACE);
                }
            }
            return stringBuffer.toString();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e);
            return StringUtil.getInstance().EMPTY_STRING;
            }
        }
    }
    

    static List<int> decode(String value) {
        try {
            final Tokenizer tokenizer = Tokenizer(CommonSeps.getInstance().SPACE);
            final BasicArrayList vector = tokenizer.getTokensFromString(value, BasicArrayListD());
            final int size = vector.size();
            final List<int> decode = List<int>.filled(size, 0);
            late String byteOfData;
            for (int index = 0; index < size; index++) {
                byteOfData = (vector.objectArray[index]! as String);
                decode[index] = Byte.parseByte(byteOfData);
            }
            return decode;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.putSE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
            }
        }
    }
}

