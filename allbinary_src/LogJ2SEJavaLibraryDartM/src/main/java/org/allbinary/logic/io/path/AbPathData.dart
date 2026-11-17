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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic.io.path

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/io/file/FilePathData.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class AbPathData {
    static final AbPathData instance = AbPathData();
    late String EXTENSION_SEP;
    int SEPARATORCHAR = 0;
    late String SEPARATOR;

    // Java field initializers run after the base constructor
    void initFieldsAbPathData() {
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD;
    this.SEPARATORCHAR = "/".codeUnitAt(0);
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH;
    }
    

    static AbPathData getInstance() {
        return AbPathData.instance;
    }
    

    AbPathData() {
        this.initFieldsAbPathData();
    }
    

    int getExtensionIndex(String filePath) {
        final int indexOfFileExtensionDelmiter = JString.lastIndexOf(filePath, this.EXTENSION_SEP);
        final int indexOfLatDelimiter = JString.lastIndexOf(filePath, this.SEPARATORCHAR);
        if (indexOfFileExtensionDelmiter < 0) {
            return -1;
        }
        if (indexOfFileExtensionDelmiter < indexOfLatDelimiter) {
            return -1;
        }
        return indexOfFileExtensionDelmiter;
    }
    

    String getExtensionWithDot(String filePath) {
        final int indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath);
        String extension = StringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = filePath.substring(indexOfFileExtensionDelmiter);
        }
        return extension;
    }
    

    String getExtension(String filePath) {
        final int indexOfFileExtensionDelmiter = this.getExtensionIndex(filePath);
        String extension = StringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = filePath.substring(indexOfFileExtensionDelmiter + 1);
        }
        return extension;
    }
    

    String getNameFromPath(String path) {
        int endIndex = JString.lastIndexOf(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return path;
        }
        if (path.length == endIndex + 1) {
            String categoryName = path.substring(0, endIndex);
            return this.getNameFromPath(categoryName);
        } else {
            String categoryName = path.substring(endIndex + 1);
            return categoryName;
        }
    }
    

    String removeNameFromPath(String path) {
        int endIndex = JString.lastIndexOf(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return StringUtil.getInstance().EMPTY_STRING;
        }
        if (path.length == endIndex + 1) {
            return this.removeNameFromPath(path.substring(0, endIndex - 1));
        } else {
            String pathWithoutName = path.substring(0, endIndex);
            return pathWithoutName;
        }
    }
}

