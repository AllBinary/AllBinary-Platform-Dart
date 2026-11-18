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
// package org.allbinary.game.graphics.hud

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';

class HudGraphicsPosition {
    static final HudGraphicsPosition NULL_HUD_GRAPHICS_POSITION = HudGraphicsPosition(PointFactory.getInstance().ZERO_ZERO, 9);
    int anchor = 0;
    late GPoint point;

    // Java field initializers run after the base constructor
    void initFieldsHudGraphicsPosition() {
    this.anchor = 0;
    this.point = PointFactory.getInstance().ZERO_ZERO;
    }
    

    HudGraphicsPosition(GPoint point, int anchor) {
        this.initFieldsHudGraphicsPosition();
        this.setAnchor(anchor);
        this.setPoint(point);
    }
    

    int getAnchor() {
        return this.anchor;
    }
    

    void setAnchor(int anchor) {
        this.anchor = anchor;
    }
    

    GPoint getPoint() {
        return this.point;
    }
    

    void setPoint(GPoint point) {
        this.point = point;
    }
}

