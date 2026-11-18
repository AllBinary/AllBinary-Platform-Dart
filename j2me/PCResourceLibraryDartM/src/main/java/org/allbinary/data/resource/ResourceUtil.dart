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
// package org.allbinary.data.resource

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/ByteArrayInputStream.dart';
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/FileInputStream.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/StreamUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

//J2SE - PC
class ResourceUtil {
    static final ResourceUtil instance = ResourceUtil();
    late LogUtil logUtil;
    late String path;
    late String ext;

    // Java field initializers run after the base constructor
    void initFieldsResourceUtil() {
    this.logUtil = LogUtil.getInstance();
    this.path = StringUtil.getInstance().EMPTY_STRING;
    this.ext = StringUtil.getInstance().EMPTY_STRING;
    }
    

    static ResourceUtil getInstance() {
        return ResourceUtil.instance;
    }
    

    ResourceUtil() {
        this.initFieldsResourceUtil();
    }
    

    void setLoadingPaths(String path, String ext) {
        this.path = path;
        this.ext = ext;
    }
    

    void setClassLoader(ClassLoader classLoader) {
    }
    

    InputStream getResourceAsStream(String resource) {
        InputStream inputStream = this.getResourceAsStreamAtStart(resource, 2);
        if (inputStream == null) {
            inputStream = this.getResourceAsStreamAtStart(resource, 1);
            if (inputStream == null) {
                throw JException('Exception', StringMaker().append("Unable to obtain: ").append(resource).toString());
            }
        }
        return inputStream;
    }
    

    InputStream getResourceAsStreamAtStart(String resource, int startIndex) {
        InputStream inputStream = FileInputStream(StringMaker().append(this.path).append(resource).append(this.ext).toString());
        if (inputStream != null) {
            final List<int> byteArray = List<int>.filled(inputStream.available(), 0);
            StreamUtil.getInstance().getByteArray(inputStream, ByteArrayOutputStream(), byteArray);
            return ByteArrayInputStream(byteArray);
        }
        return inputStream;
    }
    

    void addResource(String resource, int value) {
    }
}

