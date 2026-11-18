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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';

class FormUtil {
    static final FormUtil instance = FormUtil();
    

    static FormUtil getInstance() {
        return FormUtil.instance;
    }
    

    Rectangle createFormRectangle() {
        final DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        final PointFactory pointFactory = PointFactory.getInstance();
        final Rectangle rectangle = Rectangle(pointFactory.createXY(30, 10), displayInfo.getLastWidth() - 30, displayInfo.getLastHeight() - 35);
        return rectangle;
    }
}

