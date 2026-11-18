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
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/game/resource/FeaturedResourceFactory.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';

class FeaturedAnimationInterfaceFactoryInterfaceFactory extends FeaturedResourceFactory {
    static FeaturedAnimationInterfaceFactoryInterfaceFactory INSTANCE = FeaturedAnimationInterfaceFactoryInterfaceFactory();
    

    FeaturedAnimationInterfaceFactoryInterfaceFactory() {
    }
    

    static FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance() {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE;
    }
    

    Rectangle getRectangle(String resource) {
        return this.getRectangleXY(resource, 0, 0);
    }
    

    Rectangle getRectangleXY(String resource, int x, int y) {
        final PointFactory pointFactory = PointFactory.getInstance();
        final BasicArrayList list = this.getList();
        final int scale = (GameConfigurationCentral.getInstance().SCALE.getValue()).toInt();
        final int size = this.getList().size();
        for (int index = 0; index < size; index++) {
            final FeatureResourceAnimationInterfaceFactoryInterface featureInterface = (list.objectArray[index]! as FeatureResourceAnimationInterfaceFactoryInterface);
            if (featureInterface.isFeature()) {
                final Rectangle rectangle = featureInterface.getRectangle(resource);
                if (rectangle != RectangleFactory.SINGLETON) {
                    return Rectangle(pointFactory.createXY(x, y), ((rectangle.getWidth() * scale) >> 1), ((rectangle.getHeight() * scale) >> 1));
                }
            }
        }
        throw JException('Exception', StringMaker().append("No rectangle available for current feature selection or Resource: ").append(resource).toString());
    }
    

    ProceduralAnimationInterfaceFactoryInterface getProcedural(String resource) {
        return (this.getBasicAnimationInterfaceFactoryInstance(resource) as ProceduralAnimationInterfaceFactoryInterface);
    }
    

    AnimationInterfaceFactoryInterface get(String resource) {
        return (this.getBasicAnimationInterfaceFactoryInstance(resource) as AnimationInterfaceFactoryInterface);
    }
    

    BasicAnimationInterfaceFactoryInterface getBasicAnimationInterfaceFactoryInstance(String resource) {
        final BasicArrayList list = this.getList();
        final BasicArrayList resourceTypeAvailableList = BasicArrayListD();
        int size = this.getList().size();
        late FeatureResourceAnimationInterfaceFactoryInterface featureInterface;
        late BasicAnimationInterfaceFactoryInterface animationInterfaceFactoryInterface;
        for (int index = 0; index < size; index++) {
            featureInterface = (list.objectArray[index]! as FeatureResourceAnimationInterfaceFactoryInterface);
            if (featureInterface.isFeature()) {
                resourceTypeAvailableList.add(featureInterface);
                animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource);
                if (animationInterfaceFactoryInterface != NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY) {
                    return animationInterfaceFactoryInterface;
                }
            }
        }
        if (resourceTypeAvailableList.size() > 0) {
            final String NO_ANIMATION_AVAILABLE_FROM = "No animation available from: ";
            final String FOR_FACTORIES = " factories: ";
            final String FOR_RESOURCE = " for Resource: ";
            final String HAS_KEY = " has: ";
            final String RESOURCES_LABEL = " resources ";
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM);
            stringBuffer.appendint(resourceTypeAvailableList.size());
            stringBuffer.append(CommonSeps.getInstance().FORWARD_SLASH);
            stringBuffer.appendint(size);
            stringBuffer.append(FOR_FACTORIES);
            final int size2 = resourceTypeAvailableList.size();
            for (int index = 0; index < size2; index++) {
                stringBuffer.append(resourceTypeAvailableList.get(index).toString());
                stringBuffer.append(CommonSeps.getInstance().COMMA_SEP);
            }
            stringBuffer.append(FOR_RESOURCE);
            stringBuffer.append(resource);
            for (int index = 0; index < size; index++) {
                stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
                featureInterface = (list.objectArray[index]! as FeatureResourceAnimationInterfaceFactoryInterface);
                if (featureInterface.isFeature()) {
                    stringBuffer.append(StringUtil.getInstance().toString1(featureInterface));
                    stringBuffer.append(HAS_KEY);
                    stringBuffer.appendint(featureInterface.getHashtable().size());
                    stringBuffer.append(RESOURCES_LABEL);
                }
            }
            throw JException('Exception', stringBuffer.toString());
        } else {
            final StringMaker stringBuffer = StringMaker();
            for (int index = 0; index < size; index++) {
                featureInterface = (list.objectArray[index]! as FeatureResourceAnimationInterfaceFactoryInterface);
                stringBuffer.append(featureInterface.toString());
                stringBuffer.append(CommonSeps.getInstance().SPACE);
            }
            final String result = stringBuffer.toString();
            stringBuffer.delete(0, stringBuffer.length());
            throw JException('Exception', stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).toString());
        }
    }
}

