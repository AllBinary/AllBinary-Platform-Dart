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
// package org.allbinary.layer.relationship

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/RelativeRelationship.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class RelativeLayerRelationship extends RelativeRelationship {
    late AllBinaryLayer layer;

    // Java field initializers run after the base constructor
    void initFieldsRelativeLayerRelationship() {
    this.layer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    RelativeLayerRelationship(AllBinaryLayer layer, GPoint point, BasicArrayList typesAllowedList) : super(point, typesAllowedList) {
        this.initFieldsRelativeLayerRelationship();
        
        this.layer = layer;
    }
    

    @override
    int getX() {
        return this.layer.getXP() + super.getX();
    }
    

    @override
    int getY() {
        return this.layer.getYP() + super.getY();
    }
    

    @override
    int getZ() {
        return this.layer.getZP() + super.getZ();
    }
}

