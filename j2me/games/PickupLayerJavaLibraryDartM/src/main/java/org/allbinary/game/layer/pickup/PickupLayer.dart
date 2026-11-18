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
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyedLayerProcessor.dart';
import 'package:allbinary/org/allbinary/game/identification/BasicGroupFactory.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/RemoteInfo.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupableInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';

class PickupLayer extends MultiPlayerGameLayer implements PickedUpLayerInterface, PickupableInterface {
    late PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface;
    bool destroyed = false;
    late Animation animationInterface;

    // Java field initializers run after the base constructor
    void initFieldsPickupLayer() {
    this.pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    this.destroyed = false;
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    PickupLayer(String name, RemoteInfo remoteInfo, int total, PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface, Animation animationInterface, Rectangle rectangle, ViewPositionBase viewPosition) : super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition) {
        this.initFieldsPickupLayer();
        
        this.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior());
        this.setLayerWidth(10);
        this.setLayerHeight(10);
        this.init(pickedUpLayerInterfaceFactoryInterface, animationInterface);
    }
    

    void init(PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface, Animation animationInterface) {
        this.pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface;
        this.animationInterface = animationInterface;
        this.setDestroyed(false);
    }
    

    void initXYZ(int x, int y, int z) {
        this.setPosition(x, y, z);
    }
    

    @override
    void paint(Graphics graphics) {
        final ViewPositionBase viewPosition = this.getViewPosition();
        final int viewX = viewPosition.getX();
        final int viewY = viewPosition.getY();
        this.animationInterface.paintXY(graphics, viewX, viewY);
    }
    

    @override
    void paintThreed(Graphics graphics) {
        final ViewPositionBase viewPosition = this.getViewPosition();
        final int viewX = viewPosition.getX();
        final int viewY = viewPosition.getY();
        this.animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3);
    }
    

    @override
    PickedUpLayerInterfaceFactoryInterface getPickedUpLayerInterfaceFactoryInterface() {
        return this.pickedUpLayerInterfaceFactoryInterface;
    }
    

    @override
    void setPickedUp() {
        this.setDestroyed(true);
    }
    

    @override
    bool isDestroyed() {
        return this.destroyed;
    }
    

    void setDestroyed(bool destroyed) {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(this);
        }
    }
    

    @override
    void damage(int damage, int damageType) {
    }
    

    @override
    int getDamage(int damageType) {
        return 0;
    }
    

    @override
    void set(GL gl) {
        OpenGLSurfaceChangedInterface openGLSurfaceChangedInterface = (this.animationInterface as OpenGLSurfaceChangedInterface);
        openGLSurfaceChangedInterface.set(gl);
    }
}

