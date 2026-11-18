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
// package org.allbinary.view.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/view/event/ViewPositionEvent.dart';
import 'package:allbinary/org/allbinary/view/event/ViewPositionEventListenerInterface.dart';

class ViewPositionEventHandler extends BasicEventHandler {
    static ViewPositionEventHandler SINGLETON = ViewPositionEventHandler();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsViewPositionEventHandler() {
    this.list = BasicArrayListD();
    }
    

    static ViewPositionEventHandler getInstance() {
        return ViewPositionEventHandler.SINGLETON;
    }
    

    ViewPositionEventHandler() {
        this.initFieldsViewPositionEventHandler();
    }
    

    void addListener(AllBinaryLayer layerInterface) {
        if (!this.list.contains(layerInterface)) {
            this.list.add(layerInterface);
        }
    }
    

    @override
    void removeAllListeners() {
        this.list.clear();
        super.removeAllListeners();
    }
    

    @override
    void removeListener(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        super.removeListener(eventListenerInterface);
    }
    

    @override
    void fireEvent(AllBinaryEventObject eventObject) {
        for (int index = this.list.size(); --index >= 0; ) {
            try {
                AllBinaryLayer layerInterface = (this.list.objectArray[index]! as AllBinaryLayer);
                layerInterface.onChangeEvent((eventObject as ViewPositionEvent));
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
        }
        super.fireEvent(eventObject);
    }
    

    @override
    void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        final ViewPositionEventListenerInterface viewPositionEventListenerInterface = ((eventListenerInterface as ViewPositionEventListenerInterface));
        viewPositionEventListenerInterface.onChangeEvent((eventObject as ViewPositionEvent));
    }
}

