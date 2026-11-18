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
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/math/RectangleCollisionUtil.dart';

class RectangleCollisionPointUtil {
    

    RectangleCollisionPointUtil() {
    }
    

    static bool allPointsInside(int rectX1, int rectY1, int rectX2, int rectY2, BasicArrayList list) {
        final RectangleCollisionUtil rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
        late GPoint point;
        for (int index = list.size(); --index >= 0; ) {
            point = (list.objectArray[index]! as GPoint);
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())) {
                return false;
            }
        }
        return true;
    }
    

    static bool allPointsInsideCell(int rectX1, int rectY1, int rectX2, int rectY2, BasicArrayList list, int xCellSize, int yCellSize) {
        final RectangleCollisionUtil rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
        late GPoint point;
        for (int index = list.size(); --index >= 0; ) {
            point = (list.objectArray[index]! as GPoint);
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX() * xCellSize, point.getY() * yCellSize)) {
                return false;
            }
        }
        return true;
    }
}

