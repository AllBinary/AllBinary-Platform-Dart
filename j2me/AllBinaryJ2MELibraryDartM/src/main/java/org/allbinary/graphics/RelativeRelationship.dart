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
// package org.allbinary.graphics

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';

class RelativeRelationship {
    static final RelativeRelationship NULL_RELATIVE_RELATIONSHIP = RelativeRelationship(PointFactory.getInstance().ZERO_ZERO, BasicArrayListUtil.getInstance().getImmutableInstance());
    late BasicArrayList typesAllowedList;
    int x = 0;
    int y = 0;
    int z = 0;

    // Java field initializers run after the base constructor
    void initFieldsRelativeRelationship() {
    
    
    
    
    }
    

    RelativeRelationship(GPoint point, BasicArrayList typesAllowedList) {
        this.initFieldsRelativeRelationship();
        this.x = point.getX();
        this.y = point.getY();
        this.z = point.getZ();
        this.typesAllowedList = typesAllowedList;
    }
    

    int getX() {
        return this.x;
    }
    

    int getY() {
        return this.y;
    }
    

    int getZ() {
        return this.z;
    }
    

    BasicArrayList getTypesAllowedList() {
        return this.typesAllowedList;
    }
    

    void setTypesAllowedList(BasicArrayList typesAllowedList) {
        this.typesAllowedList = typesAllowedList;
    }
}

