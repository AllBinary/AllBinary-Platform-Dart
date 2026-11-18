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
// package org.allbinary.game.configuration.feature

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';

class GameFeatureFactory {
    static final GameFeatureFactory instance = GameFeatureFactory();
    late GameFeature SOUND;
    late GameFeature MUSIC;
    late Feature SCREEN_SHAKE;
    late Feature POST_IMAGE_LOADING_MODIFICATION;
    late GameFeature HEALTH_BARS;
    late GameFeature DAMAGE_FLOATERS;
    late GameFeature GAME_INPUT_LAYER_PROCESSOR;
    late GameFeature ARTIFICIAL_INTELLEGENCE_PROCESSOR;
    late GameFeature COLLIDABLE_INTERFACE_LAYER_PROCESSOR;
    late GameFeature TICKABLE_LAYER_PROCESSOR;
    late GameFeature CHEATING;
    late GameFeature DROPPED_ITEMS;
    late GameFeature DROPPED_ITEMS_FROM_DEATH;
    late GameFeature TEST_DESTROYED_LAYER_PROCESSOR;
    late GameFeature COLLISIONS_WITH_SOURCE;
    late GameFeature COLLISIONS_FORCED_TWO_DIMENSIONAL;

    // Java field initializers run after the base constructor
    void initFieldsGameFeatureFactory() {
    this.SOUND = GameFeature("Sound");
    this.MUSIC = GameFeature("Music");
    this.SCREEN_SHAKE = Feature("Screen Shake");
    this.POST_IMAGE_LOADING_MODIFICATION = Feature("Post Image Loading Modification (Scaling, Rotation, or Other)");
    this.HEALTH_BARS = GameFeature("Health Bars");
    this.DAMAGE_FLOATERS = GameFeature("Damage Floaters");
    this.GAME_INPUT_LAYER_PROCESSOR = GameFeature("Game Input Layer Processor");
    this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = GameFeature("Artificial Intelligence Layer Processor");
    this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = GameFeature("Collidable Interface Layer Processor");
    this.TICKABLE_LAYER_PROCESSOR = GameFeature("Tickable Layer Processor");
    this.CHEATING = GameFeature("Cheating");
    this.DROPPED_ITEMS = GameFeature("Drops");
    this.DROPPED_ITEMS_FROM_DEATH = GameFeature("Drops from Dead");
    this.TEST_DESTROYED_LAYER_PROCESSOR = GameFeature("Destroyed Layer Processor");
    this.COLLISIONS_WITH_SOURCE = GameFeature("Allow Collisions With Source");
    this.COLLISIONS_FORCED_TWO_DIMENSIONAL = GameFeature("Collisions Forced Two Dimensional");
    }
    

    static GameFeatureFactory getInstance() {
        return GameFeatureFactory.instance;
    }
    

    GameFeatureFactory() {
        this.initFieldsGameFeatureFactory();
    }
}

