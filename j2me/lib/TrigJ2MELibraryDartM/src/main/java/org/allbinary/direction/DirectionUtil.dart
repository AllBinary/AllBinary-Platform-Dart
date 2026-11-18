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
// package org.allbinary.direction

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/direction/DirectionFactory.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';

class DirectionUtil {
    static final DirectionUtil instance = DirectionUtil();
    late List<Angle?> directionArray;
    late List<Angle?> directionArray2;

    // Java field initializers run after the base constructor
    void initFieldsDirectionUtil() {
    this.directionArray = List<Angle?>.filled(10, null);
    this.directionArray2 = List<Angle?>.filled(10, null);
    }
    

    static DirectionUtil getInstance() {
        return DirectionUtil.instance;
    }
    

    DirectionUtil() {
        this.initFieldsDirectionUtil();
        AngleFactory angleFactory = AngleFactory.getInstance();
        DirectionFactory directionFactory = DirectionFactory.getInstance();
        this.directionArray[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        this.directionArray[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        this.directionArray[directionFactory.UP.getValue()] = angleFactory.UP;
        this.directionArray[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
        this.directionArray2[directionFactory.LEFT.getValue()] = angleFactory.LEFT;
        this.directionArray2[directionFactory.RIGHT.getValue()] = angleFactory.RIGHT;
        this.directionArray2[directionFactory.UP.getValue()] = angleFactory.UP;
        this.directionArray2[directionFactory.DOWN.getValue()] = angleFactory.DOWN;
    }
    

    Angle getAngle(Direction direction) {
        return this.directionArray2[direction.getValue()]!;
    }
    

    Angle getFrameAngle(Direction direction) {
        return this.directionArray[direction.getValue()]!;
    }
}

