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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

//J2ME
class ResourceUtil {
    static ResourceUtil instance = ResourceUtil();
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
    

    InputStream getResourceAsStream(String resource) {
        InputStream inputStream = jClassName(resource).getResourceAsStream(resource);
        if (inputStream == null) {
            inputStream = this.getResourceAsStreamAtStart(resource, 2);
            if (inputStream == null) {
                inputStream = this.getResourceAsStreamAtStart(resource, 1);
                if (inputStream == null) {
                    final StringMaker stringMaker = StringMaker();
                    final int index = JString.lastIndexOf(resource, "/".codeUnitAt(0));
                    String resourcePath = resource.substring(index + 1);
                    inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                    if (inputStream == null) {
                        resourcePath = resource.substring(index);
                        inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                        if (inputStream == null) {
                            final String RES = "res";
                            resourcePath = stringMaker.append(RES).append(resource.substring(index)).toString();
                            inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                            if (inputStream == null) {
                                stringMaker.delete(0, stringMaker.length());
                                resourcePath = stringMaker.append("/").append(RES).append(resource.substring(index)).toString();
                                inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                                final String COLON = CommonSeps.getInstance().COLON;
                                if (inputStream == null) {
                                    stringMaker.delete(0, stringMaker.length());
                                    resourcePath = stringMaker.append(RES).append(COLON).append(resource.substring(index)).toString();
                                    inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                                    if (inputStream == null) {
                                        stringMaker.delete(0, stringMaker.length());
                                        resourcePath = stringMaker.append(RES).append(COLON).append(resource.substring(index + 1)).toString();
                                        inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                                        if (inputStream == null) {
                                            final String RESOURCE_STRING = "resource";
                                            stringMaker.delete(0, stringMaker.length());
                                            resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(resource.substring(index)).toString();
                                            inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                                            if (inputStream == null) {
                                                stringMaker.delete(0, stringMaker.length());
                                                resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(resource.substring(index + 1)).toString();
                                                inputStream = jClassName(resource).getResourceAsStream(resourcePath);
                                                if (inputStream == null) {
                                                    stringMaker.delete(0, stringMaker.length());
                                                    throw JException('Exception', stringMaker.append("Unable to obtain: ").append(resource).toString());
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream;
    }
    

    InputStream getResourceAsStreamAtStart(String resource, int startIndex) {
        final StringMaker stringMaker = StringMaker();
        int index = JString.indexOf(resource, CommonSeps.getInstance().COLON);
        final String resourcePath = resource.substring(index + startIndex);
        final InputStream inputStream = jClassName(resource).getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
    

    void addResource(String resource, int value) {
    }
}

