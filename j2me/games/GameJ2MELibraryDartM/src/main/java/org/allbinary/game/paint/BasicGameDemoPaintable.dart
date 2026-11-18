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
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/StatePaintable.dart';

class BasicGameDemoPaintable extends StatePaintable {
    late Paintable mainDemoStatePaintable;
    late Paintable ownershipPaintable;
    late Paintable helpPaintableInterface;
    late Paintable currentStatePaintable;

    // Java field initializers run after the base constructor
    void initFieldsBasicGameDemoPaintable() {
    
    
    
    this.currentStatePaintable = NullPaintable.getInstance();
    }
    

    BasicGameDemoPaintable(Paintable mainDemoStatePaintable, Paintable ownershipPaintable, Paintable helpPaintableInterface) {
        this.initFieldsBasicGameDemoPaintable();
        this.mainDemoStatePaintable = mainDemoStatePaintable;
        this.setCurrentStatePaintable(NullPaintable.getInstance());
        this.ownershipPaintable = ownershipPaintable;
        this.helpPaintableInterface = helpPaintableInterface;
    }
    

    @override
    void setState(int state) {
        if (state == 0) {
            this.setCurrentStatePaintable(this.getMainDemoStatePaintable());
        } else if (state == 1) {
            this.setCurrentStatePaintable(this.helpPaintableInterface);
        } else {
            this.setCurrentStatePaintable(this.ownershipPaintable);
        }
    }
    

    @override
    void paint(Graphics graphics) {
        this.getCurrentStatePaintable().paint(graphics);
    }
    

    Paintable getHelpPaintableInterface() {
        return this.helpPaintableInterface;
    }
    

    void setCurrentStatePaintable(Paintable currentStatePaintable) {
        this.currentStatePaintable = currentStatePaintable;
    }
    

    Paintable getCurrentStatePaintable() {
        return this.currentStatePaintable;
    }
    

    Paintable getMainDemoStatePaintable() {
        return this.mainDemoStatePaintable;
    }
}

