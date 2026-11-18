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
// package org.allbinary.logic.io

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/BufferedWriter.dart';
import 'package:allbinary/java/io/FileWriter.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFileNativeUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPathData.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class BufferedWriterUtil {
    static final BufferedWriterUtil instance = BufferedWriterUtil();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late CommonLabels commonLabels;
    late String REMOVING_OLD;

    // Java field initializers run after the base constructor
    void initFieldsBufferedWriterUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.REMOVING_OLD = "Remove old for overwriting: ";
    }

    BufferedWriterUtil() {
        this.initFieldsBufferedWriterUtil();
    }
    

    static BufferedWriterUtil getInstance() {
        return BufferedWriterUtil.instance;
    }
    

    void overwrite([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && p0 is String && p1 is String) {
            this.overwrite$2$S_S(p0, p1);
            return;
        }
        if (!identical(p1, jnone) && p0 is AbFile && p1 is String) {
            this.overwrite$2$AbFile_S(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'overwrite');
    }

    void overwrite$2$S_S(String path, String data) {
        final AbFile abFile = AbFile.createAbFile(path);
        if (abFile.exists()) {
            this.logUtil.putF(this.REMOVING_OLD + path, this, this.commonStrings.CREATE);
            abFile.delete();
        } else {
            final String name = AbPathData.getInstance().removeNameFromPath(path);
            final AbFile abFileDirectory = AbFile.createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                final StringMaker stringBuilder = StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                bool result = abFileDirectory.mkdirs();
                stringBuilder.delete(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    void overwrite$2$AbFile_S(AbFile abFile, String data) {
        if (abFile.exists()) {
            this.logUtil.putF(this.REMOVING_OLD + abFile.getPath(), this, this.commonStrings.CREATE);
            abFile.delete();
        } else {
            final String name = AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath());
            final AbFile abFileDirectory = AbFile.createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                final StringMaker stringBuilder = StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                bool result = abFileDirectory.mkdirs();
                stringBuilder.delete(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    void write(AbFile abFile, String data) {
        final BufferedWriter fileOut = BufferedWriter(FileWriter(AbFileNativeUtil.get(abFile)));
        fileOut.write(data, 0, data.length);
        fileOut.newLine();
        fileOut.flush();
    }
}

