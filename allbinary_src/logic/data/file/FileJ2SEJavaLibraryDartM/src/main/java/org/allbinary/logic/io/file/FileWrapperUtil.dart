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
// package org.allbinary.logic.io.file

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/File.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';

class FileWrapperUtil {
    

    static List<AbFile?> wrapFiles(List<Object?> files) {
        try {
            final List<AbFile?> abFileArray = List<AbFile?>.filled(files.length, null);
            for (int index = files.length - 1; index >= 0; index--) {
                abFileArray[index] = AbFile((files[index]! as File));
            }
            return abFileArray;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e);
            return List<AbFile?>.filled(0, null);
            }
        }
    }
    

    static AbFile wrapFile(File file) {
        try {
            return AbFile(file);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e);
            return AbFile.NULL_FILE;
            }
        }
    }
}

