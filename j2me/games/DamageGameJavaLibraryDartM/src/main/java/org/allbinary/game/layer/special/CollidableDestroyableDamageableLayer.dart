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
// package org.allbinary.game.layer.special

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/game/combat/damage/DamageableInterface.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyableInterface.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEvent.dart';
import 'package:allbinary/org/allbinary/game/identification/BasicGroupFactory.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupBehavior.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/part/PartInterface.dart';
import 'package:allbinary/org/allbinary/game/part/PartInterfaceUtil.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/math/PositionStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialGameInputInterface.dart';

class CollidableDestroyableDamageableLayer extends CollidableCompositeLayer implements DestroyableInterface, DamageableInterface, PickupCompositeInterface, SpecialGameInputInterface {
    static Object NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = NullUtil.getInstance().NULL_OBJECT;
    static const String READYFOREXPLOSION = "ReadyForExplosion: ";
    late List<Group?> groupInterface;
    bool readyForExplosion = false;
    int initWidth = 0;
    int initHeight = 0;
    int initX = 0;
    int initY = 0;
    int initZ = 0;
    late List<PartInterface?> partInterfaceArrayP;
    late PickupBehavior pickupBehavior;
    late AllBinaryGameLayerManager allBinaryGameLayerManagerP;
    bool isDraggable = false;
    bool isDragged = false;
    bool isDropped = false;

    // Java field initializers run after the base constructor
    void initFieldsCollidableDestroyableDamageableLayer() {
    
    this.readyForExplosion = false;
    
    
    this.initX = 0;
    this.initY = 0;
    this.initZ = 0;
    this.partInterfaceArrayP = PartInterfaceUtil.getZeroArray();
    
    this.allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance();
    this.isDraggable = false;
    this.isDragged = false;
    this.isDropped = false;
    }
    

    static CollidableDestroyableDamageableLayer getNullInstance() {
        if (CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER == NullUtil.getInstance().NULL_OBJECT) {
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = CollidableDestroyableDamageableLayer(BasicGroupFactory.getInstance().NONE_ARRAY, StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION);
        }
        return (CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER as CollidableDestroyableDamageableLayer);
    }
    

    CollidableDestroyableDamageableLayer(List<Group?> groupInterface, String name, Rectangle layerInfo, ViewPositionBase viewPosition) : super(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance()) {
        this.initFieldsCollidableDestroyableDamageableLayer();
        
        this.initWidth = layerInfo.getWidth();
        this.initHeight = layerInfo.getHeight();
        this.groupInterface = groupInterface;
        this.pickupBehavior = PickupBehavior.getNullInstance();
    }
    

    void initPosition() {
        this.setPosition(this.initX, this.initY, this.initZ);
    }
    

    void initPositionXYZ(int x, int y, int z) {
        this.initX = x;
        this.initY = y;
        this.initZ = z;
    }
    

    @override
    void paint(Graphics graphics) {
        super.paint(graphics);
    }
    

    @override
    void damage(int damage, int damageType) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    int getDamage(int damageType) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    bool isDestroyed() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    List<Group?> getGroupInterface() {
        return this.groupInterface;
    }
    

    void setGroupInterface(List<Group?> teamInterface) {
        this.groupInterface = teamInterface;
    }
    

    void setAllBinaryGameLayerManager(AllBinaryGameLayerManager allBinaryGameLayerManager) {
        this.allBinaryGameLayerManagerP = allBinaryGameLayerManager;
        if (this.allBinaryGameLayerManagerP == null) {
            throw JException('RuntimeException', '');
        }
    }
    

    bool isReadyForExplosion() {
        return this.readyForExplosion;
    }
    

    void setReadyForExplosion(bool isReadyForExplosion) {
        this.readyForExplosion = isReadyForExplosion;
    }
    

    int getInitWidth() {
        return this.initWidth;
    }
    

    int getInitHeight() {
        return this.initHeight;
    }
    

    int getInitX() {
        return this.initX;
    }
    

    int getInitY() {
        return this.initY;
    }
    

    @override
    void up() {
    }
    

    @override
    void down() {
    }
    

    @override
    void right() {
    }
    

    @override
    void left() {
    }
    

    @override
    void strafeLeft() {
    }
    

    @override
    void strafeRight() {
    }
    

    @override
    void fire(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    @override
    void special1(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    @override
    void special2(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    @override
    void special3(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    @override
    void special4(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    @override
    void special5(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent) {
    }
    

    void upAnalog(int yAnalogValue) {
    }
    

    void downAnalog(int yAnalogValue) {
    }
    

    void rightAnalog(int xAnalogValue) {
    }
    

    void leftAnalog(int xAnalogValue) {
    }
    

    void rightTrigger(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent, int xAnalogValue) {
    }
    

    void leftTrigger(AllBinaryLayerManager layerManager, GameKeyEvent gameKeyEvent, int xAnalogValue) {
    }
    

    void onDestroyed(DestroyedEvent destroyedEvent) {
    }
    

    @override
    PickupBehavior getPickupBehavior() {
        return this.pickupBehavior;
    }
    

    @override
    void setPickupBehavior(PickupBehavior pickupBehavior) {
        this.pickupBehavior = pickupBehavior;
    }
    

    void addPart(PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface) {
    }
    

    void setPartInterfaceArray(List<PartInterface?> partInterfaceArray) {
        this.partInterfaceArrayP = partInterfaceArray;
    }
    

    List<PartInterface?> getPartInterfaceArray() {
        return this.partInterfaceArrayP;
    }
    

    @override
    void toStringAppend(StringMaker stringBuffer) {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final PositionStrings positionStrings = PositionStrings.getInstance();
        super.toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        final List<Group?> groupInterfaceArray = this.getGroupInterface();
        final int size = groupInterfaceArray.length;
        for (int index = 0; index < size; index++) {
            stringBuffer.append(groupInterfaceArray[index]!.toString());
            stringBuffer.append(commonSeps.COMMA);
        }
        final PickupBehavior pickupBehavior = this.getPickupBehavior();
        if (pickupBehavior != null) {
            stringBuffer.append(commonSeps.NEW_LINE);
            stringBuffer.append(pickupBehavior.toString());
        }
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(CollidableDestroyableDamageableLayer.READYFOREXPLOSION);
        stringBuffer.appendboolean(this.readyForExplosion);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.commonStrings.INIT);
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(this.initX);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(this.initX);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(this.initZ);
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

