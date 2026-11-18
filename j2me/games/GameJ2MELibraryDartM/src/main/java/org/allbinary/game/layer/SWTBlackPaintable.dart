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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';

class SWTBlackPaintable extends Paintable {
    late BasicColorSetUtil basicSetColorUtil;
    late BasicColor BLACK;

    // Java field initializers run after the base constructor
    void initFieldsSWTBlackPaintable() {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.BLACK = BasicColorFactory.getInstance().BLACK;
    }

    SWTBlackPaintable() {
        this.initFieldsSWTBlackPaintable();
    }
    

    void paint(Graphics graphics) {
        this.basicSetColorUtil.setBasicColorP(graphics, this.BLACK);
    }
}

