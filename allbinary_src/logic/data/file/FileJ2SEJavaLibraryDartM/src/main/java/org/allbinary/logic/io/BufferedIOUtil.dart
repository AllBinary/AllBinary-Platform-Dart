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
import 'package:allbinary/java/io/BufferedReader.dart';
import 'package:allbinary/java/io/BufferedWriter.dart';
import 'package:allbinary/java/io/FileReader.dart';
import 'package:allbinary/java/io/FileWriter.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFileNativeUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class BufferedIOUtil {
    

    static void copy(AbFile backupFile, AbFile backupFileBak) {
        String line = StringUtil.getInstance().EMPTY_STRING;
        final BufferedWriter tmpOut = BufferedWriter(FileWriter(AbFileNativeUtil.get(backupFileBak)));
        final BufferedReader tmpIn = BufferedReader(FileReader(AbFileNativeUtil.get(backupFile)));
        while (tmpIn.ready()) {
            line = tmpIn.readLine();
            tmpOut.write(line, 0, line.length);
            tmpOut.newLine();
        }
        tmpOut.flush();
    }
}

