/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.opengles.shader

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';

class Shader {
    late String shaderName;
    late BasicArrayList shaderStringList;
    late String shaderAsString;
    int shaderHandle = 0;

    // Java field initializers run after the base constructor
    void initFieldsShader() {
    this.shaderName = StringUtil.getInstance().EMPTY_STRING;
    this.shaderStringList = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.shaderAsString = StringUtil.getInstance().EMPTY_STRING;
    this.shaderHandle = 0;
    }

    Shader() {
        this.initFieldsShader();
    }
}

