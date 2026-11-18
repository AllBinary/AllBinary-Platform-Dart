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
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/RelativeRelationship.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/relationship/RelativeLayerRelationship.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/game/resource/FeaturedResourceFactory.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface.dart';

class FeaturedResourceRelativeRelationshipFactory extends FeaturedResourceFactory {
    static FeaturedResourceRelativeRelationshipFactory INSTANCE = FeaturedResourceRelativeRelationshipFactory();
    late BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    void initFieldsFeaturedResourceRelativeRelationshipFactory() {
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    FeaturedResourceRelativeRelationshipFactory() {
        this.initFieldsFeaturedResourceRelativeRelationshipFactory();
    }
    

    static FeaturedResourceRelativeRelationshipFactory getInstance() {
        return FeaturedResourceRelativeRelationshipFactory.INSTANCE;
    }
    

    BasicArrayList getRelativeRelationshipList(String resource, AllBinaryLayer layer) {
        final BasicArrayList featureReleaseList = this.getList();
        int size = this.getList().size();
        for (int index = 0; index < size; index++) {
            ResourceRelativeRelationshipFactoryInterface featureInterface = (featureReleaseList.objectArray[index]! as ResourceRelativeRelationshipFactoryInterface);
            if (featureInterface.isFeature()) {
                BasicArrayList list = featureInterface.getResourceRelativeRelationshipList(resource);
                if (list != this.basicArrayListUtil.getImmutableInstance()) {
                    return this.duplicate(list, layer);
                }
            }
        }
        throw JException('Exception', StringMaker().append("Not available for current feature selection or Resource: ").append(resource).toString());
    }
    

    BasicArrayList duplicate(BasicArrayList list, AllBinaryLayer layer) {
        final PointFactory pointFactory = PointFactory.getInstance();
        final BasicArrayList newList = BasicArrayListD();
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            RelativeRelationship relativeRelationship = (list.objectArray[index]! as RelativeRelationship);
            newList.add(RelativeLayerRelationship(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil.getInstance().getImmutableInstance()));
        }
        return newList;
    }
}

