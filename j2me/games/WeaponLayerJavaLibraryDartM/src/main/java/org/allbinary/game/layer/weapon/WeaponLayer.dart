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
// package org.allbinary.game.layer.weapon

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyedLayerProcessor.dart';
import 'package:allbinary/org/allbinary/game/combat/weapon/WeaponProperties.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationUtil.dart';
import 'package:allbinary/org/allbinary/game/identification/BasicGroupFactory.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/RemoteInfo.dart';
import 'package:allbinary/org/allbinary/game/score/NoScoreable.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/game/tick/TickableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/physics/movement/Movement.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/CollidableWeaponBehavior.dart';

class WeaponLayer extends MultiPlayerGameLayer implements TickableInterface {
    late Animation animationInterface;
    late Animation initAnimationInterface;
    late Animation destroyedAnimationInterface;
    late AllBinaryLayer sourceLayerInterface;
    int totalDamage = 0;
    int initDamage = 0;
    bool destroyed = false;
    late ScoreableInterface scoreableInterface;
    late Movement movement;
    late WeaponProperties weaponProperties;
    int multiPlayerType = 0;
    late CollidableWeaponBehavior collidableWeaponBehavior;

    // Java field initializers run after the base constructor
    void initFieldsWeaponLayer() {
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    
    
    this.sourceLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    this.totalDamage = 0;
    this.initDamage = 0;
    this.destroyed = true;
    this.scoreableInterface = NoScoreable.getInstance();
    
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES;
    
    this.collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance();
    }
    

    WeaponLayer(String name, RemoteInfo remoteInfo, int multiPlayerType, Movement movement, Animation animationInterface, Animation destroyedAnimationInterface, Rectangle rectangle, ViewPositionBase viewPosition) : super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition) {
        this.initFieldsWeaponLayer();
        
        this.initAnimationInterface = animationInterface;
        this.setAnimationInterface(animationInterface);
        this.destroyedAnimationInterface = destroyedAnimationInterface;
        this.movement = movement;
        this.multiPlayerType = multiPlayerType;
    }
    

    @override
    void setCollidableInferface(CollidableBaseBehavior collidableInferface) {
        super.setCollidableInferface(collidableInferface);
        this.collidableWeaponBehavior = (this.getCollidableInferface() as CollidableWeaponBehavior);
    }
    

    void initXYZ(int x, int y, int z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    void init(AllBinaryLayer sourceLayerInterface, int angle, int otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreable) {
        this.setWeaponPropertiesP(weaponProperties);
        this.setReadyForExplosion(false);
        this.setAnimationInterface(this.getInitAnimationInterfaceP());
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.collidableWeaponBehavior.init(sourceLayerInterface);
        this.setGroupInterfaces();
        if (scoreable != null) {
            this.scoreableInterface = scoreable;
        }
        this.totalDamage = 0;
        this.initDamage = weaponProperties.getDamage();
        this.setDestroyed(false);
        this.movement.init(weaponProperties.getSpeed(), angle, otherAngle);
    }
    

    void setGroupInterfaces() {
        final BasicGroupFactory basicGroupFactory = BasicGroupFactory.getInstance();
        if (this.sourceLayerInterface.getGroupInterface()[0]! == basicGroupFactory.ENEMY) {
            this.setGroupInterface(basicGroupFactory.ENEMY_ARRAY);
        } else {
            this.setGroupInterface(this.sourceLayerInterface.getGroupInterface());
        }
    }
    

    @override
    void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.isExhausted() && !this.isDestroyed()) {
            if (this.isReadyForExplosion()) {
                IndexedAnimation indexedAnimationInterface = (this.getAnimationInterface() as IndexedAnimation);
                int currentFrame = indexedAnimationInterface.getFrame();
                if (currentFrame < indexedAnimationInterface.getAnimationSize() - 1) {
                    indexedAnimationInterface.nextFrame();
                } else {
                    this.setDestroyed(true);
                }
            } else {
                final CollidableWeaponBehavior collidableWeaponBehavior = (this.getCollidableInferface() as CollidableWeaponBehavior);
                if (collidableWeaponBehavior.isCollided()) {
                    this.setAnimationInterface(this.destroyedAnimationInterface);
                    this.getMovement().stop();
                    this.setReadyForExplosion(true);
                } else {
                    this.setDestroyed(true);
                }
            }
        }
        this.movement.process(this);
        this.totalDamage += this.weaponProperties.getDissipation();
    }
    

    @override
    bool isDestroyed() {
        return this.destroyed;
    }
    

    @override
    void damage(int damage, int damageType) {
        this.totalDamage += damage * damage;
    }
    

    void givePoints(int total) {
        this.scoreableInterface.addPoints(GameConfigurationUtil.getInstance().getCompetitionValue() * total);
    }
    

    bool isExhausted() {
        if (this.totalDamage > this.getInitDamage() || this.totalDamage < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    int getDamage(int damageType) {
        if (!this.isExhausted()) {
            int total = this.getInitDamage() - this.totalDamage;
            this.givePoints(total);
            return total;
        }
        return 0;
    }
    

    void setDestroyed(bool destroyed) {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            this.scoreableInterface = NoScoreable.getInstance();
            DestroyedLayerProcessor.getInstance().add(this);
        }
    }
    

    int getInitDamage() {
        return this.initDamage;
    }
    

    void setAnimationInterface(Animation animationInterface) {
        this.animationInterface = animationInterface;
    }
    

    Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    Animation getInitAnimationInterfaceP() {
        return this.initAnimationInterface;
    }
    

    void setInitAnimationInterfaceP(Animation initAnimationInterface) {
        this.initAnimationInterface = initAnimationInterface;
    }
    

    Animation getDestroyedAnimationInterface() {
        return this.destroyedAnimationInterface;
    }
    

    AllBinaryLayer getOwnerLayerInterface() {
        return this.sourceLayerInterface;
    }
    

    void setOwnerLayerInterface(AllBinaryLayer sourceLayerInterface) {
        this.sourceLayerInterface = sourceLayerInterface;
    }
    

    @override
    void paint(Graphics graphics) {
        final ViewPositionBase viewPosition = this.getViewPosition();
        this.animationInterface.paintXY(graphics, viewPosition.getX() - this.getHalfWidth(), viewPosition.getY() - this.getHalfHeight());
    }
    

    @override
    void paintThreed(Graphics graphics) {
        final ViewPositionBase viewPosition = this.getViewPosition();
        this.animationInterface.paintThreedXYZ(graphics, viewPosition.getX() - this.getHalfWidth(), viewPosition.getY() - this.getHalfHeight(), viewPosition.getZ() - this.getHalfDepth());
    }
    

    Movement getMovement() {
        return this.movement;
    }
    

    void setMovement(Movement movement) {
        this.movement = movement;
    }
    

    @override
    int getType() {
        return WeaponLayer.getStaticType();
    }
    

    static int getStaticType() {
        return 0;
    }
    

    @override
    int getMultiPlayerType() {
        return this.multiPlayerType;
    }
    

    void setWeaponPropertiesP(WeaponProperties weaponProperties) {
        this.weaponProperties = weaponProperties;
    }
    

    WeaponProperties getWeaponPropertiesP() {
        return this.weaponProperties;
    }
    

    @override
    bool implmentsTickableInterface() {
        return true;
    }
    

    @override
    void set(GL gl) {
        this.initAnimationInterface.set(gl);
    }
}

