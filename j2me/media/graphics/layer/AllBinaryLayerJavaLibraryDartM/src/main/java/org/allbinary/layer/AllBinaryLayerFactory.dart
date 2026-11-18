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
// package org.allbinary.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/view/ViewPosition.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerFactoryInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';

class AllBinaryLayerFactory implements AllBinaryLayerFactoryInterface {
    late Rectangle rectangle;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryLayerFactory() {
    
    }
    

    AllBinaryLayerFactory(Rectangle rectangle) {
        this.initFieldsAllBinaryLayerFactory();
        this.rectangle = rectangle;
    }
    

    @override
    AllBinaryLayer getInstance() {
        return AllBinaryLayer(StringUtil.getInstance().EMPTY_STRING, this.rectangle, ViewPosition.getInstanceD());
    }
}

