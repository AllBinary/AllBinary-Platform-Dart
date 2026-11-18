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
import 'package:allbinary/org/allbinary/bounds/event/BoundsChangeEvent.dart';
import 'package:allbinary/org/allbinary/bounds/event/BoundsChangeEventListener.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/bounds/BoundsVisitorInterface.dart';

class LayerBounds implements BoundsChangeEventListener {
    late LogUtil logUtil;
    late Rectangle rectangle;

    // Java field initializers run after the base constructor
    void initFieldsLayerBounds() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    LayerBounds(Rectangle rectangle) {
        this.initFieldsLayerBounds();
        this.rectangle = rectangle;
    }
    

    Rectangle getRectangleP() {
        return this.rectangle;
    }
    

    void visit(BoundsVisitorInterface boundsVisitorInterface) {
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onBoundsChangeEvent(BoundsChangeEvent boundsChangeEvent) {
        this.rectangle = boundsChangeEvent.getRectangle();
    }
}

