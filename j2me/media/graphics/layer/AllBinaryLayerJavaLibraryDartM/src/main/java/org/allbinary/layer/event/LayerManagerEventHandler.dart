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
// package org.allbinary.layer.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEventListener.dart';
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEvent.dart';
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEventListenerInterface.dart';

class LayerManagerEventHandler extends BasicEventHandler {
    static LayerManagerEventHandler instance = LayerManagerEventHandler();
    late BasicArrayList list;
    late String CREATE;
    late String DELETE;

    // Java field initializers run after the base constructor
    void initFieldsLayerManagerEventHandler() {
    this.list = BasicArrayListD();
    this.CREATE = "Create";
    this.DELETE = "Delete";
    }
    

    static LayerManagerEventHandler getInstance() {
        return LayerManagerEventHandler.instance;
    }
    

    LayerManagerEventHandler() {
        this.initFieldsLayerManagerEventHandler();
    }
    

    void addListener(LayerManagerEventListener layerManagerEventListener) {
        if (!this.list.contains(layerManagerEventListener)) {
            this.list.add(layerManagerEventListener);
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
                final LayerManagerEventListener layerManagerEventListener = (this.list.objectArray[index]! as LayerManagerEventListener);
                layerManagerEventListener.onCreateLayerManagerEvent((eventObject as LayerManagerEvent));
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
        }
        super.fireEvent(eventObject);
    }
    

    void fireDeleteEvent(AllBinaryEventObject eventObject) {
        for (int index = this.list.size(); --index >= 0; ) {
            try {
                final LayerManagerEventListener layerManagerEventListener = (this.list.objectArray[index]! as LayerManagerEventListener);
                layerManagerEventListener.onDeleteLayerManagerEvent((eventObject as LayerManagerEvent));
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
        }
        final BasicArrayList eventListenerInterfaceList = this.eventListenerInterfaceList;
        late EventListenerInterface eventListenerInterface;
        late LayerManagerEventListenerInterface layerManagerEventListenerInterface;
        int listenerIndex = 0;
        while (listenerIndex < eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (eventListenerInterfaceList.objectArray[listenerIndex]! as EventListenerInterface);
                layerManagerEventListenerInterface = ((eventListenerInterface as LayerManagerEventListenerInterface));
                layerManagerEventListenerInterface.onDeleteLayerManagerEvent((eventObject as LayerManagerEvent));
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
            listenerIndex++;
        }
    }
    

    @override
    void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        final LayerManagerEventListenerInterface layerManagerEventListenerInterface = ((eventListenerInterface as LayerManagerEventListenerInterface));
        layerManagerEventListenerInterface.onCreateLayerManagerEvent((eventObject as LayerManagerEvent));
    }
}

