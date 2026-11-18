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
// package org.allbinary.game.ag.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/bounds/TopULayerBounds.dart';
import 'package:allbinary/org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterface.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/BoundBounceAI.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor.dart';

class TopUBoundBounceAIFactory implements ArtificialIntelligenceInterfaceFactoryInterface {
    

    @override
    ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        final VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = (ownerLayerInterface as VelocityInterfaceCompositeInterface);
        final VelocityInterface velocityInterface = (velocityInterfaceCompositeInterface.getVelocityProperties() as VelocityInterface);
        final int maxDistancePerTick = (velocityInterface.getMaxForwardVelocity() >> velocityInterface.getVelocityXBasicDecimalP().getScaledFactor());
        final int halfWidth = ownerLayerInterface.getWidth() * 2 + maxDistancePerTick + 1;
        final int halfHeight = ownerLayerInterface.getHeight() * 2 + maxDistancePerTick + 1;
        final GPoint point = PointFactory.getInstance().createXY(halfWidth, halfHeight + 60);
        final DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        final Rectangle rectangle = Rectangle(point, (displayInfo.getLastWidth() - halfWidth - point.getX()), (displayInfo.getLastHeight() - halfHeight - point.getY()));
        return BoundBounceAI(ownerLayerInterface, gameInput, TopULayerBounds(rectangle), ReverseVelocityBoundsVisitor(ownerLayerInterface));
    }
}

