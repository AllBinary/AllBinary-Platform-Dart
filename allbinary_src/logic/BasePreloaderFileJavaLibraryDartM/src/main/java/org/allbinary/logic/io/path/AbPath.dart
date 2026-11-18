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
import 'package:allbinary/org/allbinary/logic/io/file/FilePathUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPathData.dart';
import 'package:allbinary/org/allbinary/logic/io/path/PathUtil.dart';

class AbPath {
    static const String NETWORK_SEP = ":/";
    late CommonSeps commonSeps;
    late AbPathData abPathData;
    late PathUtil abPathUtil;
    late String EMPTY_STRING;
    late String schema;
    late String path;
    late String nameP;
    bool hasSchemaP = false;
    int numberOfSeps = 0;

    // Java field initializers run after the base constructor
    void initFieldsAbPath() {
    this.commonSeps = CommonSeps.getInstance();
    this.abPathData = AbPathData.getInstance();
    this.abPathUtil = PathUtil.getInstance();
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.schema = this.EMPTY_STRING;
    this.path = this.EMPTY_STRING;
    this.nameP = this.EMPTY_STRING;
    this.hasSchemaP = false;
    this.numberOfSeps = 0;
    }
    

    static AbPath createAbPath() {
        try {
            final String EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
            return AbPath(EMPTY_STRING, EMPTY_STRING);
        } catch (jcaught) {
            {
                final dynamic ex = jcaught;
            throw JException('RuntimeException', '');
            }
        }
    }
    

    AbPath(String aPath, String name) {
        this.initFieldsAbPath();
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isEmpty(aPath)) {
            this.schema = this.getSchema(aPath);
            this.nameP = name;
            this.path = this.abPathUtil.adjustEnd(this.abPathUtil.adjust(this.getPathFromPath(aPath)));
        } else {
            this.init();
            if (!stringValidationUtil.isEmpty(name)) {
                this.nameP = name;
            }
        }
    }
    

    void init() {
        this.schema = this.EMPTY_STRING;
        this.setPath(this.abPathData.SEPARATOR);
        this.nameP = this.EMPTY_STRING;
    }
    

    String getSchema(String aPath) {
        int beginIndex = JString.indexOf(aPath, this.commonSeps.COLON);
        if (beginIndex >= 0) {
            this.hasSchemaP = true;
            return aPath.substring(0, beginIndex);
        }
        this.hasSchemaP = false;
        return this.EMPTY_STRING;
    }
    

    bool hasSchema() {
        return this.hasSchemaP;
    }
    

    String getPathFromPath(String aPath) {
        final FilePathData filePathData = FilePathData.getInstance();
        String tempPath = aPath;
        if (!this.hasSchema()) {
            tempPath = this.abPathUtil.adjustStart(tempPath);
        } else {
            int beginIndex = JString.indexOf(tempPath, this.commonSeps.COLON);
            if (beginIndex >= 0) {
                beginIndex++;
                while (tempPath.codeUnitAt(beginIndex) == this.abPathData.SEPARATORCHAR || tempPath.codeUnitAt(beginIndex) == filePathData.SEPARATORCHAR) {
                    beginIndex++;
                    this.numberOfSeps++;
                    if (this.numberOfSeps > 2) {
                        throw JException('Exception', "Should Not Have More Than Two Seps");
                    }
                }
                tempPath = tempPath.substring(beginIndex, tempPath.length);
            }
        }
        return tempPath;
    }
    

    void setName(String name) {
        this.nameP = name;
    }
    

    String getName() {
        return this.nameP;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        if (this.hasSchema()) {
            stringBuffer.append(this.schema);
            stringBuffer.append(AbPath.NETWORK_SEP);
        }
        stringBuffer.append(this.getPath());
        stringBuffer.append(this.nameP);
        return stringBuffer.toString();
    }
    

    String toFileSystemString() {
        if (this.hasSchema()) {
            final FilePathData filePathData = FilePathData.getInstance();
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(this.schema);
            stringBuffer.append(this.commonSeps.COLON);
            stringBuffer.append(filePathData.PATH_START);
            stringBuffer.append(FilePathUtil.adjust(this.getPath()));
            stringBuffer.append(this.nameP);
            return stringBuffer.toString();
        } else {
            return FilePathUtil.adjust(this.getPath()) + this.nameP;
        }
    }
    

    String getPath() {
        return this.path;
    }
    

    void setPath(String path) {
        this.path = path;
    }
}

