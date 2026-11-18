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

class SimpleWeaponProperties {
    int damage = 0;
    int dissipation = 0;
    int range = 0;

    // Java field initializers run after the base constructor
    void initFieldsSimpleWeaponProperties() {
    this.damage = 0;
    this.dissipation = 0;
    this.range = 0;
    }

    SimpleWeaponProperties() {
        this.initFieldsSimpleWeaponProperties();
    }
    

    void set(SimpleWeaponProperties simpleWeaponProperties) {
        this.setDamage(simpleWeaponProperties.getDamage());
        this.setDissipation(simpleWeaponProperties.getDissipation());
        this.setRange(simpleWeaponProperties.getRange());
    }
    

    void setDamage(int damage) {
        this.damage = damage;
    }
    

    int getDamage() {
        return this.damage;
    }
    

    void setDissipation(int dissipation) {
        this.dissipation = dissipation;
    }
    

    int getDissipation() {
        return this.dissipation;
    }
    

    int getRange() {
        return this.range;
    }
    

    void setRange(int range) {
        this.range = range;
    }
}

