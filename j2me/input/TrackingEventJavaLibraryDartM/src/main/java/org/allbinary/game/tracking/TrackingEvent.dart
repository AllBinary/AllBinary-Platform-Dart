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
// package org.allbinary.game.tracking

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEventHandler.dart';

class TrackingEvent extends AllBinaryEventObject {
    late AllBinaryLayer layerInterface;

    // Java field initializers run after the base constructor
    void initFieldsTrackingEvent() {
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    TrackingEvent(Object allBinaryLayerInterface) : super(allBinaryLayerInterface) {
        this.initFieldsTrackingEvent();
        
        if (allBinaryLayerInterface != TrackingEventHandler.getInstance()) {
            this.setLayerInterface((allBinaryLayerInterface as AllBinaryLayer));
        }
    }
    

    void init(Object anyType) {
        this.setSource(anyType);
    }
    

    AllBinaryLayer getLayerInterface() {
        return this.layerInterface;
    }
    

    void setLayerInterface(AllBinaryLayer layerInterface) {
        this.layerInterface = layerInterface;
    }
    

    void setLayerInterfaceForCircularStaticPool(AllBinaryLayer layerInterface) {
        this.layerInterface = layerInterface;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("TrackingEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.layerInterface.toString());
        return stringBuffer.toString();
    }
}

