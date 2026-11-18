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
// package org.allbinary.game.layer.resources

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/image/ImageCache.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/layer/resources/OnDemandResourcesFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/resources/OnDemandResources.dart';

class OnDemandLoader {
    late OnDemandResourcesFactory onDemandResourcesFactory;
    late GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
    late BaseResourceAnimationInterfaceFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory;

    // Java field initializers run after the base constructor
    void initFieldsOnDemandLoader() {
    
    
    
    }
    

    OnDemandLoader(OnDemandResourcesFactory onDemandResourcesFactory, GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, BaseResourceAnimationInterfaceFactoryInterfaceFactory resourceAnimationInterfaceFactoryInterfaceFactory) {
        this.initFieldsOnDemandLoader();
        this.onDemandResourcesFactory = onDemandResourcesFactory;
        this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory;
        this.resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory;
    }
    

    void init(ImageCache imageCache, int level, String loadingString) {
        final ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        if (Features.getInstance().isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            if (this.resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized()) {
                return;
            }
            this.initAll(imageCache, loadingString);
        } else if (level != resourceLoadingLevelFactory.LOAD_ALL.getLevel()) {
            final LayerPlacementInterfaceBasicArrayListFactoryInterface layerPlacementInterfaceBasicArrayListFactoryInterface = this.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance1(level);
            this.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString);
        }
    }
    

    void initAll(ImageCache imageCache, String loadingString) {
        int index = 0;
        final int portion = 120;
        late OnDemandResources onDemandResources;
        for (int onDemandIndex = this.onDemandResourcesFactory.size(); --onDemandIndex >= 0; ) {
            onDemandResources = this.onDemandResourcesFactory.remove(onDemandIndex);
            if (onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
    

    void initLevel(LayerPlacementInterfaceBasicArrayListFactoryInterface layerPlacementInterfaceBasicArrayListFactoryInterface, ImageCache imageCache, int level, String loadingString) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        final int portion = 120;
        int index = 0;
        final List<int> onDemandArray = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources();
        PreLogUtil.put(StringMaker().append(commonStrings.START).appendint(onDemandArray.length).toString(), this, "initLevel");
        late OnDemandResources onDemandResources;
        for (int onDemandIndex = onDemandArray.length; --onDemandIndex >= 0; ) {
            onDemandResources = this.onDemandResourcesFactory.remove(onDemandArray[onDemandIndex]);
            if (onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES) {
                index = onDemandResources.initAt(imageCache, this.resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index);
            }
        }
    }
}

