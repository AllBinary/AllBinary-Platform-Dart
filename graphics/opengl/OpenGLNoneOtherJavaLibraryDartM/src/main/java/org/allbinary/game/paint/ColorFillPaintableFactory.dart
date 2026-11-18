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
// package org.allbinary.game.paint

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillPaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/OverScanColorFillPaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillBasePaintable.dart';

class ColorFillPaintableFactory {
    static final ColorFillPaintableFactory instance = ColorFillPaintableFactory();
    

    static ColorFillPaintableFactory getInstance() {
        return ColorFillPaintableFactory.instance;
    }
    

    ColorFillBasePaintable getInstance2(BasicColor basicColor, bool forThreedCanvas) {
        final GenericOperatingSystem operatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystem.isOverScan()) {
            return OverScanColorFillPaintable(basicColor);
        } else {
            return ColorFillPaintable(basicColor);
        }
    }
}

