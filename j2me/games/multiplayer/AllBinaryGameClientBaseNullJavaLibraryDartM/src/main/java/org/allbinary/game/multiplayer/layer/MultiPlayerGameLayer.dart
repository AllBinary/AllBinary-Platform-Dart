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
// package org.allbinary.game.multiplayer.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/MultiPlayerGameLayerInterface.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/RemoteInfo.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/MultiplayerBehavior.dart';

class MultiPlayerGameLayer extends CollidableDestroyableDamageableLayer implements MultiPlayerGameLayerInterface {
    

    MultiPlayerGameLayer(RemoteInfo remoteInfo, List<Group?> groupInterface, String name, Rectangle layerInfo, ViewPositionBase viewPosition) : super(groupInterface, name, layerInfo, viewPosition) {
        
    }
    

    @override
    MultiplayerBehavior getMultiplayerBehavior() {
        return MultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR;
    }
    

    void setPingInfo(bool show) {
    }
    

    void setFiring(int firing) {
    }
    

    int getFiring() {
        return 0;
    }
}

