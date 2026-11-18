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
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/game/combat/damage/DamageableInterface.dart';

class DamageUtil {
    static final DamageUtil instance = DamageUtil();
    late LogUtil logUtil;
    late String COLLIDE;

    // Java field initializers run after the base constructor
    void initFieldsDamageUtil() {
    this.logUtil = LogUtil.getInstance();
    this.COLLIDE = "collide";
    }
    

    static DamageUtil getInstance() {
        return DamageUtil.instance;
    }
    

    DamageUtil() {
        this.initFieldsDamageUtil();
    }
    

    void process(DamageableInterface damageableInterface, DamageableInterface damageableInterface2) {
        damageableInterface.damage(damageableInterface2.getDamage(0), 0);
    }
    

    void debugDamage(CollidableCompositeLayer collidableInterfaceCompositeInterface1, CollidableCompositeLayer collidableInterfaceCompositeInterface) {
        final CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (collidableInterfaceCompositeInterface as CollidableDestroyableDamageableLayer);
        int damage = collidableDestroyableDamageableLayer.getDamage(0);
        if (damage > 20000) {
            StringMaker stringBuffer = StringMaker();
            stringBuffer.append("Collision ");
            stringBuffer.append(collidableInterfaceCompositeInterface1.toString());
            stringBuffer.append(" with: ");
            stringBuffer.append(collidableInterfaceCompositeInterface.toString());
            stringBuffer.append(" damage: ");
            stringBuffer.appendint(damage);
            this.logUtil.putF(stringBuffer.toString(), collidableInterfaceCompositeInterface1, this.COLLIDE);
        }
    }
}

