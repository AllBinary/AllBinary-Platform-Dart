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
// package org.allbinary.game.resource

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevel.dart';

class ResourceLoadingLevelFactory {
    static final ResourceLoadingLevelFactory instance = ResourceLoadingLevelFactory();
    late ResourceLoadingLevel LOAD_EARLY;
    late ResourceLoadingLevel LOAD_TOUCH;
    late ResourceLoadingLevel LOAD_GAME;
    late ResourceLoadingLevel LEVEL;
    late ResourceLoadingLevel MAX_LEVEL;
    late ResourceLoadingLevel LOAD_ALL;
    late List<ResourceLoadingLevel?> RESOURCE_LOADING_LEVEL_ARRAY;

    // Java field initializers run after the base constructor
    void initFieldsResourceLoadingLevelFactory() {
    this.LOAD_EARLY = ResourceLoadingLevel("Load Early", Integer.MAX_VALUE);
    this.LOAD_TOUCH = ResourceLoadingLevel("Load Touch", Integer.MAX_VALUE - 1);
    this.LOAD_GAME = ResourceLoadingLevel("Load Game", Integer.MAX_VALUE - 2);
    this.LEVEL = ResourceLoadingLevel("Level", Integer.MAX_VALUE - 99);
    this.MAX_LEVEL = ResourceLoadingLevel("Max Level", Integer.MAX_VALUE - 100);
    this.LOAD_ALL = ResourceLoadingLevel("Load All", -1);
    this.RESOURCE_LOADING_LEVEL_ARRAY = <ResourceLoadingLevel?>[this.LOAD_ALL, this.MAX_LEVEL, this.LEVEL, this.LOAD_GAME, this.LOAD_TOUCH, this.LOAD_EARLY];
    }

    ResourceLoadingLevelFactory() {
        this.initFieldsResourceLoadingLevelFactory();
    }
    

    static ResourceLoadingLevelFactory getInstance() {
        return ResourceLoadingLevelFactory.instance;
    }
    

    String getLevelString(int level) {
        for (int index = 0; index < this.RESOURCE_LOADING_LEVEL_ARRAY.length; index++) {
            if (level == this.RESOURCE_LOADING_LEVEL_ARRAY[index]!.getLevel()) {
                return this.RESOURCE_LOADING_LEVEL_ARRAY[index]!.getName();
            }
        }
        return jstr(level);
    }
}

