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
// package org.allbinary.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/identification/GroupInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/layer/NamedInterface.dart';
import 'package:allbinary/org/allbinary/layer/PositionInterface.dart';

abstract interface class LayerInterface implements NamedInterface, PaintableInterface, GroupInterfaceCompositeInterface, PositionInterface {
    

    int getHeight();
    

    int getWidth();
    

    int getHalfHeight();
    

    int getHalfWidth();
    

    int getXP();
    

    int getYP();
    

    int getZP();
    

    int getX2();
    

    int getY2();
    

    int getZ2();
    

    bool isVisible();
    

    void moveDXYZ(int dx, int dy, int dz);
    

    void setVisible(bool visible);
    

    bool implmentsTickableInterface();
    

    bool implmentsCollidableInterface();
    

    bool implmentsGameInputInterface();
    

    bool implmentsArtificialIntelligenceCompositeInterface();
    

    int getType();
}

