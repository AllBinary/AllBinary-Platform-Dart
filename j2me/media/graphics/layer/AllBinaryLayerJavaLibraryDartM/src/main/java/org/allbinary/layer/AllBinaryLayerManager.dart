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
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEvent.dart';
import 'package:allbinary/org/allbinary/layer/event/LayerManagerEventHandler.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerProcessor.dart';
import 'package:allbinary/org/allbinary/layer/LayerManagerNoDebug.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';

class AllBinaryLayerManager extends LayerManager {
    late LayerManagerEventHandler layerManagerEventHandler;
    late LayerManagerEvent createLayerManagerEvent;
    late LayerManagerEvent deleteLayerManagerEvent;
    late List<LayerProcessor?> basicLayerProcessorArray;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryLayerManager() {
    this.layerManagerEventHandler = LayerManagerEventHandler.getInstance();
    this.createLayerManagerEvent = LayerManagerEvent(this, this.layerManagerEventHandler.CREATE);
    this.deleteLayerManagerEvent = LayerManagerEvent(this, this.layerManagerEventHandler.DELETE);
    this.basicLayerProcessorArray = List<LayerProcessor?>.filled(0, null);
    }
    

    AllBinaryLayerManager() : super(LayerManagerNoDebug.getInstance()) {
        this.initFieldsAllBinaryLayerManager();
        
    }
    

    List<LayerProcessor?> getLayerProcessorArray() {
        return this.basicLayerProcessorArray;
    }
    

    void setLayerProcessorArray(List<LayerProcessor?> layerProcessorArray) {
        this.basicLayerProcessorArray = layerProcessorArray;
    }
    

    void log() {
        int size = this.basicLayerProcessorArray.length;
        for (int index = 0; index < size; index++) {
            LayerProcessor layerProcessorInterface = this.basicLayerProcessorArray[index]!;
        }
    }
    

    @override
    void append(AllBinaryLayer layerInterface) {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            super.append(layerInterface);
        }
    }
    

    @override
    void appendAt(AllBinaryLayer layerInterface, int index) {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            super.appendAt(layerInterface, index);
        }
    }
    

    void appendProcessors(AllBinaryLayer layerInterface) {
        this.createLayerManagerEvent.setLayerInterface(layerInterface);
        this.layerManagerEventHandler.fireEvent(this.createLayerManagerEvent);
        late LayerProcessor layerProcessorInterface;
        for (int index = this.basicLayerProcessorArray.length; --index >= 0; ) {
            layerProcessorInterface = this.basicLayerProcessorArray[index]!;
            if (layerProcessorInterface.isProcessorLayer(layerInterface)) {
                layerProcessorInterface.getLayerManager().append(layerInterface);
            }
        }
    }
    

    @override
    void remove(AllBinaryLayer layerInterface) {
        this.deleteLayerManagerEvent.setLayerInterface(layerInterface);
        this.layerManagerEventHandler.fireDeleteEvent(this.deleteLayerManagerEvent);
        late LayerProcessor layerProcessorInterface;
        for (int index = this.basicLayerProcessorArray.length; --index >= 0; ) {
            layerProcessorInterface = this.basicLayerProcessorArray[index]!;
            layerProcessorInterface.getLayerManager().remove(layerInterface);
        }
        super.remove(layerInterface);
    }
    

    void process() {
        late LayerProcessor layerProcessorInterface;
        int size = this.basicLayerProcessorArray.length;
        for (int index = 0; index < size; index++) {
            layerProcessorInterface = this.basicLayerProcessorArray[index]!;
            layerProcessorInterface.process(this);
        }
    }
    

    @override
    void cleanup() {
        late LayerProcessor layerProcessorInterface;
        int size = this.basicLayerProcessorArray.length;
        for (int index = 0; index < size; index++) {
            layerProcessorInterface = this.basicLayerProcessorArray[index]!;
            layerProcessorInterface.getLayerManager().cleanup();
        }
        super.cleanup();
    }
}

