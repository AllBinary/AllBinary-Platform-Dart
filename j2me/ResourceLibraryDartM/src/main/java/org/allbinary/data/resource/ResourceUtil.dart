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
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

//J2SE - J2ME
class ResourceUtil {
    static Object classLoader = NullUtil.getInstance().NULL_OBJECT;
    static final ResourceUtil instance = ResourceUtil();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsResourceUtil() {
    this.logUtil = LogUtil.getInstance();
    }
    

    static ResourceUtil getInstance() {
        return ResourceUtil.instance;
    }
    

    ResourceUtil() {
        this.initFieldsResourceUtil();
    }
    

    void setLoadingPaths(String path, String ext) {
        this.logUtil.putF(CommonStrings.getInstance().NOT_IMPLEMENTED, this, "setLoadingPaths");
    }
    

    void setClassLoader(ClassLoader classLoader) {
        this.logUtil.putF(StringMaker().append("Resource Loader: ").append(jClassName(classLoader)).toString(), this, "setClassLoader");
        ResourceUtil.classLoader = classLoader;
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
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final int index = JString.indexOf(resource, commonSeps.COLON);
        final String resourcePath = resource.substring(index + startIndex);
        InputStream inputStream = jClassName(resource).getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        final ClassLoader classLoader = (ResourceUtil.classLoader as ClassLoader);
        inputStream = classLoader.getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
    

    void addResource(String resource, int value) {
    }
}

