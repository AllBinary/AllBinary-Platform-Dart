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
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/WeaponLayer.dart';

class WeaponLayerArrayLayerCircularStaticPool {
    static final WeaponLayerArrayLayerCircularStaticPool instance = WeaponLayerArrayLayerCircularStaticPool();
    int MAX = 0;
    late CircularIndexUtil circularIndexUtil;
    late List<List<WeaponLayer?>?> WEAPONLAYER_ARRAY;
    late List<List<WeaponLayer?>?> TWO_WEAPONLAYER_ARRAY;
    late List<List<WeaponLayer?>?> THREE_WEAPONLAYER_ARRAY;

    // Java field initializers run after the base constructor
    void initFieldsWeaponLayerArrayLayerCircularStaticPool() {
    this.MAX = 5;
    this.circularIndexUtil = CircularIndexUtil.createInstance(this.MAX);
    
    
    
    }

    WeaponLayerArrayLayerCircularStaticPool() {
        this.initFieldsWeaponLayerArrayLayerCircularStaticPool();
    }
    

    static WeaponLayerArrayLayerCircularStaticPool getInstance() {
        return WeaponLayerArrayLayerCircularStaticPool.instance;
    }
    

    void init() {
        final List<List<WeaponLayer?>?> WEAPONLAYER_ARRAY = List<List<WeaponLayer?>?>.filled(this.MAX * 2, null);
        final List<List<WeaponLayer?>?> TWO_WEAPONLAYER_ARRAY = List<List<WeaponLayer?>?>.filled(this.MAX, null);
        final List<List<WeaponLayer?>?> THREE_WEAPONLAYER_ARRAY = List<List<WeaponLayer?>?>.filled(this.MAX, null);
        for (int index = 0; index < this.MAX; index++) {
            WEAPONLAYER_ARRAY[index] = List<WeaponLayer?>.filled(1, null);
            TWO_WEAPONLAYER_ARRAY[index] = List<WeaponLayer?>.filled(2, null);
            THREE_WEAPONLAYER_ARRAY[index] = List<WeaponLayer?>.filled(3, null);
        }
        this.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY;
        this.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY;
        this.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY;
    }
    

    List<List<WeaponLayer?>?> getWeaponLayerArrays(int size) {
        if (size == 1) {
            return this.WEAPONLAYER_ARRAY;
        } else if (size == 2) {
            return this.TWO_WEAPONLAYER_ARRAY;
        } else if (size == 3) {
            return this.THREE_WEAPONLAYER_ARRAY;
        }
        throw JException('RuntimeException', '');
    }
    

    List<WeaponLayer?> getInstanceArray(int size) {
        final List<WeaponLayer?> weaponLayerArray = this.getWeaponLayerArrays(size)[this.circularIndexUtil.getIndex()]!;
        this.circularIndexUtil.next();
        return weaponLayerArray;
    }
}

