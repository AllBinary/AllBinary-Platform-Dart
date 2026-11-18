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
// package org.allbinary.bounds

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/bounds/LayerBounds.dart';
import 'package:allbinary/org/allbinary/bounds/BoundsVisitorInterface.dart';

class TopULayerBounds extends LayerBounds {
    

    TopULayerBounds(Rectangle rectangle) : super(rectangle) {
        
    }
    

    @override
    void visit(BoundsVisitorInterface boundsVisitorInterface) {
        if (boundsVisitorInterface.getX() > this.rectangle.getMaxX()) {
            boundsVisitorInterface.maxX();
        }
        if (boundsVisitorInterface.getX() < this.rectangle.getPoint().getX()) {
            boundsVisitorInterface.minX();
        }
        if (boundsVisitorInterface.getY() < this.rectangle.getPoint().getY()) {
            boundsVisitorInterface.minY();
        }
    }
}

