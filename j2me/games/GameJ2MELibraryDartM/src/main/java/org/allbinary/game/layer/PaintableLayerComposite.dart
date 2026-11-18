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
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/layer/Layer.dart';

class PaintableLayerComposite extends Paintable {
    late List<Layer?> paintableArray;

    // Java field initializers run after the base constructor
    void initFieldsPaintableLayerComposite() {
    
    }
    

    PaintableLayerComposite(List<Layer?> paintableArray) {
        this.initFieldsPaintableLayerComposite();
        this.paintableArray = paintableArray;
    }
    

    @override
    void paint(Graphics graphics) {
        for (int index = this.paintableArray.length; --index >= 0; ) {
            this.paintableArray[index]!.paint(graphics);
        }
    }
    

    @override
    void paintThreed(Graphics graphics) {
        late PaintableInterface paintableInterface;
        for (int index = this.paintableArray.length; --index >= 0; ) {
            paintableInterface = (this.paintableArray[index]! as PaintableInterface);
            paintableInterface.paintThreed(graphics);
        }
    }
}

