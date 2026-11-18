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
// package org.allbinary.game.ag.layer.weapon.mine

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/resources/BasicGameResources.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';

class MineWeaponResources extends BasicGameResources {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late String DROP_TEXT_RESOURCE;
    late String DROP_RESOURCE;
    late String DROP_ICON_RESOURCE;

    // Java field initializers run after the base constructor
    void initFieldsMineWeaponResources() {
    this.DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png";
    this.DROP_RESOURCE = "/mine_drop_20_by_20.png";
    this.DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png";
    }
    

    static MineWeaponResources getInstance() {
        if (MineWeaponResources.instance == NullUtil.getInstance().NULL_OBJECT) {
            MineWeaponResources.instance = MineWeaponResources();
        }
        return (MineWeaponResources.instance as MineWeaponResources);
    }
    

    MineWeaponResources() {
        this.initFieldsMineWeaponResources();
        final String ROOT = "/mine";
        final String SMALL = "_20_by_20.png";
        final String MEDIUM = SMALL;
        final String SIZE_FOUR = SMALL;
        final String SIZE_FIVE = SMALL;
        final String SIZE_SIX = SMALL;
        final List<String?> SIZE = <String?>[SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX];
        super.init(ROOT, SIZE);
    }
}

