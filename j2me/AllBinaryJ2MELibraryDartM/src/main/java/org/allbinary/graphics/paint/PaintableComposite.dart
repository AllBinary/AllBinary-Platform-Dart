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
// package org.allbinary.graphics.paint

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';

class PaintableComposite extends Paintable {
    late List<PaintableInterface?> paintableArray;

    // Java field initializers run after the base constructor
    void initFieldsPaintableComposite() {
    
    }
    

    PaintableComposite(List<PaintableInterface?> paintableArray) {
        this.initFieldsPaintableComposite();
        this.paintableArray = paintableArray;
    }
    

    @override
    void paint(Graphics graphics) {
        for (int index = this.paintableArray.length - 1; index >= 0; index--) {
            this.paintableArray[index]!.paint(graphics);
        }
    }
    

    @override
    void paintThreed(Graphics graphics) {
        for (int index = this.paintableArray.length - 1; index >= 0; index--) {
            this.paintableArray[index]!.paintThreed(graphics);
        }
    }
}

