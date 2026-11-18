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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/LayerPlacementType.dart';

class BasicLayerPlacement {
    late LayerPlacementType layerType;
    int width = 0;
    int height = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicLayerPlacement() {
    
    
    
    }
    

    BasicLayerPlacement(LayerPlacementType layerType, int width, int height) {
        this.initFieldsBasicLayerPlacement();
        this.layerType = layerType;
        this.width = width;
        this.height = height;
    }
    

    int getWidth() {
        return this.width;
    }
    

    int getHeight() {
        return this.height;
    }
    

    LayerPlacementType getLayerType() {
        return this.layerType;
    }
    

    void setLayerType(LayerPlacementType layerType) {
        this.layerType = layerType;
    }
}

