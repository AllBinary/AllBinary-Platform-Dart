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
// package org.allbinary.game.health

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/game/health/HealthInterface.dart';
import 'package:allbinary/org/allbinary/game/health/NullHealthListener.dart';
import 'package:allbinary/org/allbinary/game/health/HealthListenerInterface.dart';

class Health implements HealthInterface {
    static final Health NULL_HEALTH = Health(0);
    static const String NAME = "Health Resource";
    static const String HEALTH_LABEL = "Health: ";
    static const String MAX_HEALTH_LABEL = " Max: ";
    int health = 0;
    int maxHealth = 0;
    late HealthListenerInterface healthListenerInterface;

    // Java field initializers run after the base constructor
    void initFieldsHealth() {
    this.health = 0;
    this.maxHealth = 0;
    this.healthListenerInterface = NullHealthListener.NULL_HEALTH_LISTENER;
    }
    

    Health(int maxHealth) {
        this.initFieldsHealth();
        this.setMaxHealth(maxHealth);
        this.setHealth(maxHealth);
    }
    

    @override
    void heal(int ahealth) {
        int newHealth = this.getHealth() + ahealth;
        if (newHealth > this.getMaxHealth()) {
            this.setHealth(this.getMaxHealth());
        } else {
            this.setHealth(newHealth);
        }
    }
    

    @override
    void healMax() {
        this.setHealth(this.getMaxHealth());
    }
    

    bool isDamaged() {
        if (this.getHealth() != this.getMaxHealth()) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    void damage(int ahealth) {
        if (ahealth < 0) {
            StringMaker stringBuffer = StringMaker();
            stringBuffer.append("******* Trying to heal when damaging. Damage: ");
            stringBuffer.appendint(ahealth);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(this.toString());
            ForcedLogUtil.log(stringBuffer.toString(), this);
            return;
        }
        int health = this.getHealth() - ahealth;
        this.setHealth(health);
    }
    

    @override
    bool isAlive() {
        if (this.getHealth() <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    @override
    int getMaxHealth() {
        return this.maxHealth;
    }
    

    @override
    void setMaxHealth(int maxHealth) {
        this.maxHealth = maxHealth;
    }
    

    void setHealth(int health) {
        if (health > this.getMaxHealth()) {
            this.health = this.getMaxHealth();
        } else if (health < 0) {
            this.health = 0;
        } else {
            this.health = health;
        }
        if (this.healthListenerInterface != null) {
            this.healthListenerInterface.onHealthChange();
        }
    }
    

    @override
    int getHealth() {
        return this.health;
    }
    

    @override
    void addListener(HealthListenerInterface healthGraphic) {
        this.healthListenerInterface = healthGraphic;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(Health.HEALTH_LABEL);
        stringBuffer.appendint(this.health);
        stringBuffer.append(Health.MAX_HEALTH_LABEL);
        stringBuffer.appendint(this.maxHealth);
        return stringBuffer.toString();
    }
}

