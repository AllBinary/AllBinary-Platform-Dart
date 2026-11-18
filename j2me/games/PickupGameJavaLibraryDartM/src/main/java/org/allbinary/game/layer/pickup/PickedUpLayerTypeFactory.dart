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
// package org.allbinary.game.layer.pickup

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerType.dart';

class PickedUpLayerTypeFactory {
    static final PickedUpLayerTypeFactory instance = PickedUpLayerTypeFactory();
    late PickedUpLayerType NONE;
    late PickedUpLayerType BEAM;
    late PickedUpLayerType MINE;
    late PickedUpLayerType PROJECTILE;
    late PickedUpLayerType ENHANCEMENT;
    late PickedUpLayerType MORPH;
    late PickedUpLayerType PART;
    late PickedUpLayerType HEAL;
    late PickedUpLayerType LIFE;
    late PickedUpLayerType POINTS;

    // Java field initializers run after the base constructor
    void initFieldsPickedUpLayerTypeFactory() {
    this.NONE = PickedUpLayerType(StringUtil.getInstance().NULL_STRING);
    this.BEAM = PickedUpLayerType("BEAM");
    this.MINE = PickedUpLayerType("MINE");
    this.PROJECTILE = PickedUpLayerType("PROJECTILE");
    this.ENHANCEMENT = PickedUpLayerType("Enhancement");
    this.MORPH = PickedUpLayerType("Morph");
    this.PART = PickedUpLayerType("Part");
    this.HEAL = PickedUpLayerType("Heal");
    this.LIFE = PickedUpLayerType("Life");
    this.POINTS = PickedUpLayerType("Points");
    }

    PickedUpLayerTypeFactory() {
        this.initFieldsPickedUpLayerTypeFactory();
    }
    

    static PickedUpLayerTypeFactory getInstance() {
        return PickedUpLayerTypeFactory.instance;
    }
}

