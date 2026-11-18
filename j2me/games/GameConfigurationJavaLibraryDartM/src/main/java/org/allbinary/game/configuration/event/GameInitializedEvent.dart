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
// package org.allbinary.game.configuration.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevel.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';

class GameInitializedEvent extends AllBinaryEventObject {
    late ResourceLoadingLevel resourceLoadingLevel;
    int level = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameInitializedEvent() {
    this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL;
    this.level = 0;
    }
    

    GameInitializedEvent(Object anyType) : super(anyType) {
        this.initFieldsGameInitializedEvent();
        
    }
    

    void setLevel(int level) {
        this.level = level;
        this.resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().LEVEL;
    }
    

    int getLevel() {
        return this.level;
    }
    

    void setResourceLoadingLevel(ResourceLoadingLevel resourceLoadingLevel) {
        this.resourceLoadingLevel = resourceLoadingLevel;
        this.level = this.resourceLoadingLevel.getLevel();
    }
    

    ResourceLoadingLevel getResourceLoadingLevel() {
        return this.resourceLoadingLevel;
    }
}

