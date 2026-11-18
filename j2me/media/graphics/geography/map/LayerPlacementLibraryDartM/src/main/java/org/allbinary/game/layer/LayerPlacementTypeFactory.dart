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
import 'package:allbinary/org/allbinary/direction/DirectionFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/LayerPlacementType.dart';

class LayerPlacementTypeFactory {
    static final LayerPlacementTypeFactory instance = LayerPlacementTypeFactory();
    late LayerPlacementType MAP;
    late LayerPlacementType LEFT;
    late LayerPlacementType DOWN;
    late LayerPlacementType UP;
    late LayerPlacementType RIGHT;

    // Java field initializers run after the base constructor
    void initFieldsLayerPlacementTypeFactory() {
    this.MAP = LayerPlacementType(Integer.MAX_VALUE);
    this.LEFT = LayerPlacementType(DirectionFactory.getInstance().LEFT.getValue());
    this.DOWN = LayerPlacementType(DirectionFactory.getInstance().DOWN.getValue());
    this.UP = LayerPlacementType(DirectionFactory.getInstance().UP.getValue());
    this.RIGHT = LayerPlacementType(DirectionFactory.getInstance().RIGHT.getValue());
    }

    LayerPlacementTypeFactory() {
        this.initFieldsLayerPlacementTypeFactory();
    }
    

    static LayerPlacementTypeFactory getInstance() {
        return LayerPlacementTypeFactory.instance;
    }
}

