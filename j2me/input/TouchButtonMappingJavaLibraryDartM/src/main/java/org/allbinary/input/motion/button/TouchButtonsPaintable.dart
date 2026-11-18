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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButton.dart';

class TouchButtonsPaintable extends Paintable {
    late BasicColor foregroundBasicColor;
    int foregroundColor = 0;
    late BasicColorSetUtil basicSetColorUtil;
    late TouchButtonFactory touchButtonFactory;

    // Java field initializers run after the base constructor
    void initFieldsTouchButtonsPaintable() {
    
    
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.touchButtonFactory = TouchButtonFactory.getInstance();
    }
    

    TouchButtonsPaintable(BasicColor basicColor) {
        this.initFieldsTouchButtonsPaintable();
        this.foregroundBasicColor = basicColor;
        this.foregroundColor = basicColor.intValue();
    }
    

    @override
    void paint(Graphics graphics) {
        final BasicArrayList list = this.touchButtonFactory.getList();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.foregroundBasicColor, this.foregroundColor);
        late TouchButton touchButton;
        for (int index = list.size(); --index >= 0; ) {
            touchButton = (list.objectArray[index]! as TouchButton);
            touchButton.paint(graphics);
        }
        for (int index = list.size(); --index >= 0; ) {
            touchButton = (list.objectArray[index]! as TouchButton);
            touchButton.paintHint(graphics);
        }
    }
}

