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
// package org.allbinary.logic.io.file

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/java/io/OutputStream.dart';
import 'package:allbinary/java/io/Reader.dart';
import 'package:allbinary/java/io/Writer.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/NullOutputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/NullReader.dart';
import 'package:allbinary/org/allbinary/logic/io/NullWriter.dart';
import 'package:allbinary/org/allbinary/logic/io/StreamUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class SimpleFileUtil {
    static final SimpleFileUtil instance = SimpleFileUtil();
    late LogUtil logUtil;
    late Writer NULL_WRITER;
    late Reader NULL_READER;
    late CommonStrings commonStrings;
    late NullUtil nullUtil;
    late StreamUtil streamUtil;

    // Java field initializers run after the base constructor
    void initFieldsSimpleFileUtil() {
    this.logUtil = LogUtil.getInstance();
    this.NULL_WRITER = SimpleFileUtil.nullWriter();
    this.NULL_READER = SimpleFileUtil.nullReader();
    this.commonStrings = CommonStrings.getInstance();
    this.nullUtil = NullUtil.getInstance();
    this.streamUtil = StreamUtil.getInstance();
    }

    SimpleFileUtil() {
        this.initFieldsSimpleFileUtil();
    }
    

    static SimpleFileUtil getInstance() {
        return SimpleFileUtil.instance;
    }
    

    static OutputStream nullOutputStream() {
        return NullOutputStream.NULL_OUTPUT_STREAM;
    }
    

    static Writer nullWriter() {
        return NullWriter.NULL_WRITER;
    }
    

    static Reader nullReader() {
        return NullReader.NULL_READER;
    }
    

    BasicArrayList loadFileAsList(InputStream inputStream, int max, List<int> byteArray1) {
        return this.loadFileAsListReturnLine(inputStream, max, byteArray1, 0);
    }
    

    BasicArrayList loadFileAsListReturnLine(InputStream inputStream, int max, List<int> byteArray1, int includeReturnLine) {
        final BasicArrayList stringList = BasicArrayListD();
        if (inputStream == null) {
            return stringList;
        }
        List<int> byteArray = this.nullUtil.NULL_BYTE_ARRAY;
        try {
            final ByteArrayOutputStream outputStream2 = ByteArrayOutputStream(max);
            byteArray = this.streamUtil.getByteArray(inputStream, outputStream2, byteArray1);
            this.streamUtil.close(inputStream);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.streamUtil.close(inputStream);
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
            }
        }
        if (byteArray == null) {
            return stringList;
        }
        final int size = byteArray.length;
        int index = 0;
        int startIndex = 0;
        int returnLine = 0;
        while (index < size) {
            startIndex = index;
            while (index < size - 1 && byteArray[index] != ("\n".codeUnitAt(0)).toSigned(8)) {
                index++;
            }
            if (includeReturnLine == 0) {
                if (index > 0 && byteArray[index - 1] == ("\r".codeUnitAt(0)).toSigned(8)) {
                    returnLine = 1;
                } else {
                    returnLine = 0;
                }
            }
            final String s = JString.fromChars(byteArray, startIndex, (index + includeReturnLine - returnLine - startIndex));
            stringList.add(s);
            index++;
        }
        return stringList;
    }
    

    String createStringFromArrayOfStrings(List<String?> stringArray) {
        final StringMaker stringMaker = StringMaker();
        final int size = stringArray.length;
        for (int index = 0; index < size; index++) {
            stringMaker.append(stringArray[index]!);
        }
        return stringMaker.toString();
    }
}

