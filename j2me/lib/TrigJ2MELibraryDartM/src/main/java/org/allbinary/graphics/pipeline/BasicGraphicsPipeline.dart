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
// package org.allbinary.graphics.pipeline

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/NoDecimalTrigTable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class BasicGraphicsPipeline {
    late BasicArrayList pointBasicArrayList;
    late NoDecimalTrigTable noDecimalTrigTable;

    // Java field initializers run after the base constructor
    void initFieldsBasicGraphicsPipeline() {
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
    }
    

    BasicGraphicsPipeline(BasicArrayList points) {
        this.initFieldsBasicGraphicsPipeline();
        this.pointBasicArrayList = points;
    }
    

    void setInitMatrix(BasicArrayList points) {
        this.pointBasicArrayList = points;
    }
    

    void createMatrix() {
    }
    

    void translate(int x, int y) {
        BasicArrayList newBasicArrayList = BasicArrayListD();
        int size = this.pointBasicArrayList.size();
        PointFactory pointFactory = PointFactory.getInstance();
        late GPoint secondPoint;
        for (int index = 0; index < size; index++) {
            secondPoint = (this.pointBasicArrayList.objectArray[index]! as GPoint);
            if (secondPoint.getX() != 1000) {
                newBasicArrayList.add(pointFactory.createXY(secondPoint.getX() + x, secondPoint.getY() + y));
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    void rotateToAngle(Angle angle) {
        this.rotate(angle.getValue());
    }
    

    void rotate(int angle) {
        BasicArrayList newBasicArrayList = BasicArrayListD();
        late GPoint secondPoint;
        int y = 0;
        int secondX = 0;
        int secondY = 0;
        late GPoint point;
        PointFactory pointFactory = PointFactory.getInstance();
        int size = this.pointBasicArrayList.size();
        int sin = 0;
        int cos = 0;
        for (int index = 0; index < size; index++) {
            secondPoint = (this.pointBasicArrayList.objectArray[index]! as GPoint);
            if (secondPoint.getX() != 1000) {
                sin = this.noDecimalTrigTable.sin(angle);
                cos = this.noDecimalTrigTable.cos(angle);
                y = secondPoint.getY() * sin;
                secondX = (secondPoint.getX() * cos) - y;
                secondY = (secondPoint.getX() * sin) + (secondPoint.getY() * cos);
                point = pointFactory.createXY((secondX).toSigned(32) ~/ 10000, (secondY).toSigned(32) ~/ 10000);
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    void mirror(int width) {
        final PointFactory pointFactory = PointFactory.getInstance();
        final int halfWidth = (width >> 1);
        final BasicArrayList newBasicArrayList = BasicArrayListD();
        late GPoint secondPoint;
        int newX = 0;
        late GPoint point;
        final int size = this.pointBasicArrayList.size();
        for (int index = 0; index < size; index++) {
            secondPoint = (this.pointBasicArrayList.objectArray[index]! as GPoint);
            if (secondPoint.getX() != 1000) {
                newX = 0;
                if (secondPoint.getX() > halfWidth) {
                    newX = halfWidth - (secondPoint.getX() - halfWidth);
                } else {
                    newX = halfWidth + (halfWidth - secondPoint.getX());
                }
                point = pointFactory.createXY(newX, secondPoint.getY());
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    BasicArrayList getMatrix() {
        return this.pointBasicArrayList;
    }
}

