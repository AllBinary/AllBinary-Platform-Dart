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
// package org.allbinary.logic.io.path

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/io/file/FilePathData.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPathData.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbFilePath.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPath.dart';

//Used to correct user input for paths
class PathUtil {
    static final PathUtil instance = PathUtil();
    late AbPathData abPathData;
    late FilePathData filePathData;

    // Java field initializers run after the base constructor
    void initFieldsPathUtil() {
    this.abPathData = AbPathData.getInstance();
    this.filePathData = FilePathData.getInstance();
    }
    

    static PathUtil getInstance() {
        return PathUtil.instance;
    }
    

    PathUtil() {
        this.initFieldsPathUtil();
    }
    

    String getExtensionWithAbFilePath(AbFilePath abFilePath) {
        return this.abPathData.getExtension(abFilePath.toString());
    }
    

    String getExtensionWithAbPath(AbPath abPath) {
        return this.abPathData.getExtension(abPath.toString());
    }
    

    String getWithoutExtensionWithAbFilePath(AbFilePath abFilePath) {
        return this.getWithoutExtension(abFilePath.toString());
    }
    

    String getWithoutExtensionWithAbPath(AbPath abPath) {
        return this.getWithoutExtension(abPath.toString());
    }
    

    String getWithoutExtension(String filePath) {
        int indexOfFileExtensionDelmiter = this.abPathData.getExtensionIndex(filePath);
        String pathWithoutExtension = filePath;
        if (indexOfFileExtensionDelmiter >= 0) {
            pathWithoutExtension = filePath.substring(0, indexOfFileExtensionDelmiter);
        }
        return pathWithoutExtension;
    }
    

    bool isValid(String path) {
        if (this.isValidStart(path)) {
            if (this.isValidEnd(path)) {
                return true;
            }
        }
        return false;
    }
    

    bool isValidStart(String path) {
        if (path.codeUnitAt(0) == this.abPathData.SEPARATORCHAR || path.codeUnitAt(0) == ".".codeUnitAt(0)) {
            return true;
        } else {
            return false;
        }
    }
    

    bool isValidEnd(String path) {
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return false;
        }
        if (path.codeUnitAt(path.length - 1) == this.abPathData.SEPARATORCHAR) {
            return true;
        } else {
            return false;
        }
    }
    

    String adjustStart(String path) {
        if (!this.isValidStart(path)) {
            path = this.abPathData.SEPARATOR + path;
        }
        return path;
    }
    

    String adjustEnd(String path) {
        if (!this.isValidEnd(path)) {
            path = path + this.abPathData.SEPARATOR;
        }
        return path;
    }
    

    String adjust(String path) {
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return this.abPathData.SEPARATOR;
        }
        if (JString.indexOf(path, "\\") >= 0) {
            path = JString.replace(path, "\\".codeUnitAt(0), this.abPathData.SEPARATORCHAR);
        }
        return path;
    }
    

    AbPath removeNameFromPath(String path) {
        int endIndex = JString.lastIndexOf(path, this.abPathData.SEPARATOR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, this.filePathData.SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return AbPath.createAbPath();
        }
        if (path.length == endIndex + 1) {
            return this.removeNameFromPath(path.substring(0, endIndex - 1));
        } else {
            final String pathWithoutName = path.substring(0, endIndex);
            return AbPath(pathWithoutName, StringUtil.getInstance().EMPTY_STRING);
        }
    }
}

