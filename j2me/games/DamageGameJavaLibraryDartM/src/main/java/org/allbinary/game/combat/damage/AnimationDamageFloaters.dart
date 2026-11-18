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
// package org.allbinary.game.combat.damage

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/combat/damage/DamageFloaters.dart';

class AnimationDamageFloaters extends DamageFloaters {
    late LogUtil logUtil;
    late AllBinaryLayer layerInterface;
    late List<IndexedAnimation?> animationInterfaceArray;
    late CircularIndexUtil circularIndexUtil;
    int dx = 0;
    int dy = 0;

    // Java field initializers run after the base constructor
    void initFieldsAnimationDamageFloaters() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
    }
    

    AnimationDamageFloaters(AllBinaryLayer layerInterface, List<IndexedAnimation?> animationInterfaceArray, int dx, int dy) {
        this.initFieldsAnimationDamageFloaters();
        this.animationInterfaceArray = animationInterfaceArray;
        for (int index = this.animationInterfaceArray.length - 1; index >= 0; index--) {
            this.animationInterfaceArray[index]!.setFrame(this.animationInterfaceArray[index]!.getSize() - 1);
        }
        this.layerInterface = layerInterface;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
        this.dx = dx;
        this.dy = dy;
    }
    

    @override
    void add(int damage) {
        int i = this.circularIndexUtil.getIndex();
        this.animationInterfaceArray[i]!.setFrame(0);
        this.circularIndexUtil.next();
    }
    

    @override
    void paint(Graphics graphics) {
        try {
            final ViewPositionBase viewPosition = this.layerInterface.getViewPosition();
            final int x = viewPosition.getX();
            final int y = viewPosition.getY();
            for (int index = 0; index < this.animationInterfaceArray.length; index++) {
                IndexedAnimation animationInterface = this.animationInterfaceArray[index]!;
                if (animationInterface.getFrame() < animationInterface.getAnimationSize() - 1) {
                    int delta = animationInterface.getFrame() * 20;
                    animationInterface.paintXY(graphics, x + this.dx, y - delta + this.dy);
                    animationInterface.nextFrame();
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            final CanvasStrings canvasStrings = CanvasStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, canvasStrings.PAINT, e);
            }
        }
    }
}

