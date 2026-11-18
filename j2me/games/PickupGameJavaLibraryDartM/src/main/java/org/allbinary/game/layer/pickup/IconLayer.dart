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
// package org.allbinary.game.layer.pickup

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/view/ViewPosition.dart';

class IconLayer extends AllBinaryLayer {
    static final IconLayer NULL_ICON_LAYER = IconLayer(NullAnimationFactory.getFactoryInstance().getInstance1(0), 0, 0);
    late Animation animationInterface;

    // Java field initializers run after the base constructor
    void initFieldsIconLayer() {
    
    }
    

    IconLayer(Animation animationInterface, int width, int height) : super(StringUtil.getInstance().EMPTY_STRING, Rectangle(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD()) {
        this.initFieldsIconLayer();
        
        this.animationInterface = animationInterface;
    }
    

    @override
    void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, this.x, this.y);
    }
    

    @override
    void paintThreed(Graphics graphics) {
        this.animationInterface.paintThreedXYZ(graphics, this.x, this.y, this.z);
    }
    

    Animation getAnimationInterface() {
        return this.animationInterface;
    }
}

