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
// package org.allbinary.game.collision

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterface.dart';
import 'package:allbinary/org/allbinary/game/collision/LayerCollisionUtil.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionType.dart';

class CollidableBaseBehavior implements CollidableInterface {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late LayerCollisionUtil layerCollisionUtil;
    bool collidable = false;

    // Java field initializers run after the base constructor
    void initFieldsCollidableBaseBehavior() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.layerCollisionUtil = LayerCollisionUtil.getInstance();
    this.collidable = true;
    }
    

    CollidableBaseBehavior(bool collidable) {
        this.initFieldsCollidableBaseBehavior();
        this.collidable = collidable;
    }
    

    void update() {
    }
    

    @override
    String getName() {
        return jClassName(this);
    }
    

    void setCollidable(bool collidable) {
        this.collidable = collidable;
    }
    

    @override
    bool isCollidable(CollidableCompositeLayer ownerLayer) {
        return this.collidable;
    }
    

    @override
    void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer allbinaryCollidableLayer) {
        throw JException('Exception', StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(CommonLabels.getInstance().COLON_SEP).append(jClassName(this)).toString());
    }
    

    @override
    bool isCollision(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        return this.layerCollisionUtil.isCollision(ownerLayer, collisionLayer);
    }
    

    bool isCollisionInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        return this.layerCollisionUtil.isCollision(ownerLayer, (collidableInterfaceCompositeInterface as AllBinaryLayer));
    }
    

    void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void paint(CollidableCompositeLayer ownerLayer, Graphics graphics) {
    }
    

    @override
    CollisionType getCollisionTypeWith(AllBinaryLayer layerInterface) {
        return CollisionTypeFactory.getInstance().NONE;
    }
}

