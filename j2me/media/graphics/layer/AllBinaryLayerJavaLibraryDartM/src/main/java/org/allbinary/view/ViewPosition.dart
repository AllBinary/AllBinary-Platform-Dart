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
// package org.allbinary.view

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';

class ViewPosition extends ViewPositionBase {
    late AllBinaryLayer allbinaryLayer;

    // Java field initializers run after the base constructor
    void initFieldsViewPosition() {
    this.allbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    static ViewPosition getInstanceD() {
        return ViewPosition(0, 0, 0);
    }
    

    ViewPosition(int x, int y, int z) : super(x, y, z) {
        this.initFieldsViewPosition();
        
    }
    

    @override
    int getX() {
        return this.allbinaryLayer.getXP();
    }
    

    @override
    int getY() {
        return this.allbinaryLayer.getYP();
    }
    

    @override
    int getZ() {
        return this.allbinaryLayer.getZP();
    }
    

    @override
    int getX2() {
        return this.getX() + this.allbinaryLayer.getWidth();
    }
    

    @override
    int getY2() {
        return this.getY() + this.allbinaryLayer.getHeight();
    }
    

    @override
    int getZ2() {
        return ((this.getZ() + this.allbinaryLayer.getDepth())).toSigned(32);
    }
    

    @override
    void setAllbinaryLayer(Object allbinaryLayer) {
        this.allbinaryLayer = (allbinaryLayer as AllBinaryLayer);
    }
}

