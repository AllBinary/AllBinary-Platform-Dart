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
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPath.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPathData.dart';
import 'package:allbinary/org/allbinary/logic/io/path/PathUtil.dart';

class AbFilePath extends AbPath {
    

    AbFilePath(String aPath) : super(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING) {
        
        final AbPathData pathData = AbPathData.getInstance();
        final PathUtil abPathUtil = PathUtil.getInstance();
        this.schema = this.getSchema(aPath);
        this.setName(pathData.getNameFromPath(aPath));
        this.setPath(abPathUtil.adjust(this.getPathFromPath(abPathUtil.removeNameFromPath(aPath).toString())));
    }
}

