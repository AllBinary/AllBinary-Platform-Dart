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
// package org.allbinary.game.paint

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';

class MainGameDemoStatePaintable extends Paintable {
    late Paintable ownershipPaintableInterface;
    late Paintable menuPaintableInterface;

    // Java field initializers run after the base constructor
    void initFieldsMainGameDemoStatePaintable() {
    
    
    }
    

    MainGameDemoStatePaintable(Paintable ownershipPaintableInterface, Paintable menuPaintableInterface) {
        this.initFieldsMainGameDemoStatePaintable();
        this.ownershipPaintableInterface = ownershipPaintableInterface;
        this.menuPaintableInterface = menuPaintableInterface;
    }
    

    @override
    void paint(Graphics graphics) {
        this.menuPaintableInterface.paint(graphics);
        this.ownershipPaintableInterface.paint(graphics);
    }
    

    Paintable getOwnershipPaintableInterface() {
        return this.ownershipPaintableInterface;
    }
    

    Paintable getMenuPaintableInterface() {
        return this.menuPaintableInterface;
    }
}

