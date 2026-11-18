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
// package org.allbinary.layer.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';

class LayerManagerEvent extends AllBinaryEventObject {
    late AllBinaryLayer layerInterface;
    late String crud;

    // Java field initializers run after the base constructor
    void initFieldsLayerManagerEvent() {
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    
    }
    

    LayerManagerEvent(LayerManager layerManager, String crud) : super(layerManager) {
        this.initFieldsLayerManagerEvent();
        
        this.crud = crud;
    }
    

    AllBinaryLayer getLayerInterface() {
        return this.layerInterface;
    }
    

    void setLayerInterface(AllBinaryLayer layerInterface) {
        this.layerInterface = layerInterface;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("LayerManagerEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.getLayerInterface().toString());
        stringBuffer.append("\nCRUD: ");
        stringBuffer.append(this.crud);
        return stringBuffer.toString();
    }
}

