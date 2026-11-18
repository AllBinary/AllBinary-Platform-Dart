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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Enumeration.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/LayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/layer/LayerInterfaceVisitor.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/EnumerationUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/LayerPlacementInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/LayerPlacementType.dart';
import 'package:allbinary/org/allbinary/game/layer/LayerPlacementTypeFactory.dart';

class LayerPlacer {
    late EnumerationUtil enumerationUtil;
    late LayerInterfaceVisitor layerInterfaceVisitor;
    late GPoint dimension;

    // Java field initializers run after the base constructor
    void initFieldsLayerPlacer() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    
    
    }
    

    LayerPlacer(LayerInterfaceVisitor layerInterfaceVisitor, GPoint dimension) {
        this.initFieldsLayerPlacer();
        this.layerInterfaceVisitor = layerInterfaceVisitor;
        this.dimension = dimension;
    }
    

    void processList(BasicArrayList list) {
        final int size = list.size();
        late LayerPlacementInterface layerPlacementInterface;
        for (int index = 0; index < size; index++) {
            layerPlacementInterface = (list.objectArray[index]! as LayerPlacementInterface);
            this.process(layerPlacementInterface);
        }
    }
    

    void process(LayerPlacementInterface layerPlacementInterface) {
        final GPoint relativePoint = this.getPoint(layerPlacementInterface);
        final LayerInterfaceFactory layerInterfaceFactory = LayerInterfaceFactory.getInstance();
        final ABHashtable hashtable = layerPlacementInterface.getInstance();
        final Enumeration enumeration = hashtable.keys();
        late GPoint point;
        late ABHashtable layerHashtable;
        int x = 0;
        int y = 0;
        int z = 0;
        late AllBinaryLayer layerInterface;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            point = (this.enumerationUtil.nextElement(enumeration) as GPoint);
            layerHashtable = (hashtable.get(point) as ABHashtable);
            x = point.getX() + relativePoint.getX();
            y = point.getY() + relativePoint.getY();
            z = point.getZ() + relativePoint.getZ();
            layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z);
            this.layerInterfaceVisitor.visit(layerInterface);
        }
    }
    

    GPoint getPoint(LayerPlacementInterface layerPlacementInterface) {
        final PointFactory pointFactory = PointFactory.getInstance();
        final LayerPlacementType layerPlacementType = layerPlacementInterface.getLayerType();
        if (layerPlacementType == LayerPlacementTypeFactory.getInstance().MAP) {
            final int width = layerPlacementInterface.getWidth();
            final int height = layerPlacementInterface.getHeight();
            final int x = ((this.dimension.getX() - width) ~/ 2);
            final int y = ((this.dimension.getY() - height) ~/ 2);
            return pointFactory.createXY(x, y);
        } else if (layerPlacementType == LayerPlacementTypeFactory.getInstance().UP) {
            final int width = layerPlacementInterface.getWidth();
            final int height = layerPlacementInterface.getHeight();
            final int x = ((this.dimension.getX() - width) ~/ 2);
            final int y = -height;
            return pointFactory.createXY(x, y);
        } else {
            throw JException('Exception', "PlacementType Not Recognized");
        }
    }
}

