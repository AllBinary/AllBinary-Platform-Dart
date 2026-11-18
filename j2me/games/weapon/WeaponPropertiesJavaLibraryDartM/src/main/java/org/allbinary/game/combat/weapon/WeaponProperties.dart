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
// package org.allbinary.game.combat.weapon

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/combat/weapon/SimpleWeaponProperties.dart';

class WeaponProperties extends SimpleWeaponProperties {
    static final WeaponProperties NULL_WEAPON_PROPERTIES = WeaponProperties(0, 0, 0, 0, (0).toSigned(16));
    static bool messageSent = false;
    static const String DAMAGE = "Damage: ";
    static const String RANGE = "Range: ";
    static const String RELOAD = "Reload: ";
    int reloadTime = 0;
    int targetingTime = 0;
    late BasicDecimal speed;
    int MAX = 0;
    int ZERO = 0;

    // Java field initializers run after the base constructor
    void initFieldsWeaponProperties() {
    this.reloadTime = 0;
    this.targetingTime = 0;
    this.speed = BasicDecimal.ZERO_BIGDECIMAL;
    this.MAX = 10240;
    this.ZERO = 0;
    }
    

    WeaponProperties(int reloadTime, int targetingTime, int speed, int damage, int dissipation) {
        this.initFieldsWeaponProperties();
        if (speed < this.MAX && speed != 0 && !WeaponProperties.messageSent) {
            final String MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ";
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.put(StringMaker().append(MESSAGE).appendlong(speed).toString(), this, commonStrings.CONSTRUCTOR);
            WeaponProperties.messageSent = true;
        }
        this.setReloadTime(reloadTime);
        this.setTargetingTime(targetingTime);
        this.setDamage(damage);
        this.setDissipation(dissipation);
        this.setSpeed(BasicDecimal(speed));
        if (dissipation != this.ZERO) {
            final int unscaledDamage = this.speed.getUnscaled() * damage;
            final int scaledDissipation = dissipation * this.speed.getScaledFactorValue();
            final int value = (unscaledDamage ~/ scaledDissipation);
            this.setRange(((value * 9)).toSigned(32) ~/ 10);
        }
    }
    

    void setReloadTime(int reloadTime) {
        this.reloadTime = reloadTime;
    }
    

    int getReloadTime() {
        return this.reloadTime;
    }
    

    void setTargetingTime(int targetingTime) {
        this.targetingTime = targetingTime;
    }
    

    int getTargetingTime() {
        return this.targetingTime;
    }
    

    BasicDecimal getSpeed() {
        return this.speed;
    }
    

    void setSpeed(BasicDecimal speed) {
        this.speed = speed;
    }
    

    int getDamageI(int range) {
        return this.getDamage() - ((this.getDissipation() * range) ~/ this.speed.getScaled());
    }
    

    List<String?> toStringArray() {
        int index = 0;
        final List<String?> stringArray = List<String?>.filled(3, null);
        final StringMaker stringBuffer = StringMaker();
        stringArray[index++] = stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage()).toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange()).toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringArray[index++] = stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime()).toString();
        return stringArray;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(WeaponProperties.DAMAGE).appendint(this.getDamage());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(WeaponProperties.RANGE).appendint(this.getRange());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(WeaponProperties.RELOAD).appendlong(this.getReloadTime());
        return stringBuffer.toString();
    }
}

