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
// package org.allbinary.game.part.weapon

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/game/combat/weapon/WeaponProperties.dart';
import 'package:allbinary/org/allbinary/game/part/PartInterface.dart';
import 'package:allbinary/org/allbinary/game/score/NoScoreable.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/RelativeRelationship.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/part/weapon/SalvoInterface.dart';

class BasicWeaponPart implements PartInterface, SalvoInterface {
    static final BasicWeaponPart NULL_BASIC_WEAPON_PART = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance1(0));
    late Animation animationInterface;
    late AllBinaryLayer ownerLayerInterface;
    late WeaponProperties weaponProperties;
    late ScoreableInterface scoreableInterface;
    late RelativeRelationship relativeRelationship;

    // Java field initializers run after the base constructor
    void initFieldsBasicWeaponPart() {
    this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    this.ownerLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    this.weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES;
    this.scoreableInterface = NoScoreable.getInstance();
    this.relativeRelationship = RelativeRelationship.NULL_RELATIVE_RELATIONSHIP;
    }
    

    static BasicWeaponPart createBasicWeaponPart(Animation animationInterface) {
        return BasicWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    BasicWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        this.initFieldsBasicWeaponPart();
        this.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        this.setAnimationInterface(animationInterface);
    }
    

    void init(AllBinaryLayer sourceLayerInterface, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        this.setOwnerLayerInterface(sourceLayerInterface);
        this.setWeaponProperties(weaponProperties);
        this.scoreableInterface = scoreableInterface;
        this.relativeRelationship = relativeRelationship;
    }
    

    @override
    void process(AllBinaryLayerManager allbinaryLayerManager, int angle, int otherAngle) {
        this.processScore(allbinaryLayerManager, angle, otherAngle, this.getWeaponProperties(), this.scoreableInterface);
    }
    

    @override
    void processScore(AllBinaryLayerManager allbinaryLayerManager, int angle, int otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        throw JException('Exception', CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    AllBinaryLayer getOwnerLayerInterface() {
        return this.ownerLayerInterface;
    }
    

    void setOwnerLayerInterface(AllBinaryLayer ownerLayerInterface) {
        this.ownerLayerInterface = ownerLayerInterface;
    }
    

    @override
    Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    void setAnimationInterface(Animation animationInterface) {
        this.animationInterface = animationInterface;
    }
    

    @override
    void paint(Graphics graphics) {
        final ViewPositionBase viewPosition = this.getOwnerLayerInterface().getViewPosition();
        final int viewX = viewPosition.getX();
        final int viewY = viewPosition.getY();
        this.animationInterface.paintXY(graphics, viewX, viewY);
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
    

    WeaponProperties getWeaponProperties() {
        return this.weaponProperties;
    }
    

    void setWeaponProperties(WeaponProperties weaponProperties) {
        this.weaponProperties = weaponProperties;
    }
}

