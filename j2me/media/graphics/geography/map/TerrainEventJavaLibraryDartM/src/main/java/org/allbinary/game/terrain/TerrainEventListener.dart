// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.terrain

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEvent.dart';

class TerrainEventListener implements TerrainEventListenerInterface {
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsTerrainEventListener() {
    this.list = BasicArrayListD();
    }

    TerrainEventListener() {
        this.initFieldsTerrainEventListener();
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onTerrainEvent(TerrainEvent terrainEvent) {
        this.list.clear();
        this.list.add(terrainEvent);
    }
    

    BasicArrayList getList() {
        return this.list;
    }
}

