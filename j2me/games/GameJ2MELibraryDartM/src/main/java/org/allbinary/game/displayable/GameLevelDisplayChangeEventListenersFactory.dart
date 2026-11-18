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
// package org.allbinary.game.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventListener.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class GameLevelDisplayChangeEventListenersFactory {
    static final GameLevelDisplayChangeEventListenersFactory instance = GameLevelDisplayChangeEventListenersFactory();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsGameLevelDisplayChangeEventListenersFactory() {
    this.list = BasicArrayListD();
    }

    GameLevelDisplayChangeEventListenersFactory() {
        this.initFieldsGameLevelDisplayChangeEventListenersFactory();
    }
    

    static GameLevelDisplayChangeEventListenersFactory getInstance() {
        return GameLevelDisplayChangeEventListenersFactory.instance;
    }
    

    void add(DisplayChangeEventListener displayChangeEventListener) {
        this.list.add(displayChangeEventListener);
        DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener);
    }
    

    void clear() {
        BasicEventHandler displayChangeEventHandler = DisplayChangeEventHandler.getInstance();
        late DisplayChangeEventListener displayChangeEventListener;
        for (int index = this.list.size(); --index >= 0; ) {
            displayChangeEventListener = (this.list.objectArray[index]! as DisplayChangeEventListener);
            displayChangeEventHandler.removeListener(displayChangeEventListener);
        }
        this.list.clear();
    }
}

