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

class RectangleCollisionUtil {
    static final RectangleCollisionUtil instance = RectangleCollisionUtil();
    

    static RectangleCollisionUtil getInstance() {
        return RectangleCollisionUtil.instance;
    }
    

    RectangleCollisionUtil() {
    }
    

    bool isCollision(int rectX1, int rectY1, int rectX2, int rectY2, int rect2X1, int rect2Y1, int rect2X2, int rect2Y2) {
        if (rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
    

    bool isInside(int rectX1, int rectY1, int rectX2, int rectY2, int x, int y) {
        if (x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
}

