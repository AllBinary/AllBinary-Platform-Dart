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
// package org.allbinary.game.terrain

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';

class BasicTerrainInfo {
    static final BasicTerrainInfo NULL_BASIC_TERRAIN_INFO = BasicTerrainInfo(AngleFactory.getInstance().NOT_ANGLE);
    late Angle angle;

    // Java field initializers run after the base constructor
    void initFieldsBasicTerrainInfo() {
    
    }
    

    BasicTerrainInfo(Angle angle) {
        this.initFieldsBasicTerrainInfo();
        this.angle = angle;
    }
    

    Angle getAngle() {
        return this.angle;
    }
    

    void setAngle(Angle angle) {
        this.angle = angle;
    }
}

