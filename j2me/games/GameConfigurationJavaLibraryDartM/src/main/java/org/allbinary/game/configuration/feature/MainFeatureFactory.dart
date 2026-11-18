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
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';

class MainFeatureFactory {
    static final MainFeatureFactory instance = MainFeatureFactory();
    late Feature FULL_SCREEN;
    late Feature TITLE_BAR;
    late Feature STATIC;
    late Feature LOAD_ONDEMAND;
    late Feature LOAD_ALL;

    // Java field initializers run after the base constructor
    void initFieldsMainFeatureFactory() {
    this.FULL_SCREEN = Feature("Full Screen");
    this.TITLE_BAR = Feature("Title Bar");
    this.STATIC = Feature("Static Dependent Feature");
    this.LOAD_ONDEMAND = Feature("Load OnDemand");
    this.LOAD_ALL = Feature("Load All");
    }

    MainFeatureFactory() {
        this.initFieldsMainFeatureFactory();
    }
    

    static MainFeatureFactory getInstance() {
        return MainFeatureFactory.instance;
    }
}

