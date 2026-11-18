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
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEventListener.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEvent.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEventListenerInterface.dart';

class TerrainEventHandler extends BasicEventHandler {
    static ABHashtable hashtable = StdUtil.getInstance().NULL_TABLE;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsTerrainEventHandler() {
    this.list = BasicArrayListD();
    }
    

    static void init() {
        TerrainEventHandler.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    static TerrainEventHandler getInstance1(Object anyType) {
        Object eventHandlerCanBeNull = TerrainEventHandler.hashtable.get(anyType);
        if (eventHandlerCanBeNull == null) {
            eventHandlerCanBeNull = TerrainEventHandler();
            TerrainEventHandler.hashtable.put(anyType, eventHandlerCanBeNull);
        }
        return (eventHandlerCanBeNull as TerrainEventHandler);
    }
    

    TerrainEventHandler() {
        this.initFieldsTerrainEventHandler();
    }
    

    void addListener(TerrainEventListener terrainEventListener) {
        if (!this.list.contains(terrainEventListener)) {
            this.list.add(terrainEventListener);
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
                final TerrainEventListener terrainEventListener = (this.list.get(index) as TerrainEventListener);
                terrainEventListener.onTerrainEvent((eventObject as TerrainEvent));
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
        final TerrainEventListenerInterface terrainEventListenerInterface = (eventListenerInterface as TerrainEventListenerInterface);
        terrainEventListenerInterface.onTerrainEvent((eventObject as TerrainEvent));
    }
}

