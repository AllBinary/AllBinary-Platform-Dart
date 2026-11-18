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
// package org.allbinary.math

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';

class LayerDistanceUtil {
    static final LayerDistanceUtil instance = LayerDistanceUtil();
    late MathUtil mathUtil;

    // Java field initializers run after the base constructor
    void initFieldsLayerDistanceUtil() {
    this.mathUtil = MathUtil.getInstance();
    }

    LayerDistanceUtil() {
        this.initFieldsLayerDistanceUtil();
    }
    

    static LayerDistanceUtil getInstance() {
        return LayerDistanceUtil.instance;
    }
    

    int getDistance(AllBinaryLayer layerInterface, AllBinaryLayer layerInterface2) {
        final int dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth());
        final int dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight());
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
    

    int getDistance3D(AllBinaryLayer layerInterface, AllBinaryLayer layerInterface2) {
        final int dx = (layerInterface.getXP() + layerInterface.getHalfWidth()) - (layerInterface2.getXP() + layerInterface2.getHalfWidth());
        final int dy = (layerInterface.getYP() + layerInterface.getHalfHeight()) - (layerInterface2.getYP() + layerInterface2.getHalfHeight());
        final int dz = (layerInterface.getZP() + layerInterface.getHalfDepth()) - (layerInterface2.getZP() + layerInterface2.getHalfDepth());
        return this.mathUtil.sqrt((dx * dx) + (dy * dy) + (dz * dz));
    }
    

    int getDistanceAt(AllBinaryLayer layerInterface, GPoint point) {
        final int dx = layerInterface.getXP() - point.getX();
        final int dy = layerInterface.getYP() - point.getY();
        return this.mathUtil.sqrt((dx * dx) + (dy * dy));
    }
}

