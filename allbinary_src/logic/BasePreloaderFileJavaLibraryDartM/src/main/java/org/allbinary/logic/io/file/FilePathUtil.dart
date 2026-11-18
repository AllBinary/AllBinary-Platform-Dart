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
import 'package:allbinary/org/allbinary/logic/io/path/AbPathData.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/file/FilePathData.dart';

//Used to correct user input for paths
class FilePathUtil {
    

    FilePathUtil() {
    }
    

    static String adjust(String path) {
        final AbPathData abPathData = AbPathData.getInstance();
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        final FilePathData filePathData = FilePathData.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return filePathData.PATH_START;
        }
        path = JString.replace(path, abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR);
        return path;
    }
}

