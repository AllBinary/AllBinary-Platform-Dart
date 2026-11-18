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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligence.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayer.dart';

class CollidableCompositeLayer extends AllBinaryGameLayer implements CollidableInterfaceCompositeInterface {
    static Object NULL_COLLIDABLE_COMPOSITE_LAYER = NullUtil.getInstance().NULL_OBJECT;
    late CollidableBaseBehavior collidableInferface;

    // Java field initializers run after the base constructor
    void initFieldsCollidableCompositeLayer() {
    this.collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().createBehavior();
    }
    

    static CollidableCompositeLayer getNullInstance() {
        if (CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER == NullUtil.getInstance().NULL_OBJECT) {
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = CollidableCompositeLayer(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance());
        }
        return (CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER as CollidableCompositeLayer);
    }
    

    CollidableCompositeLayer(String name, Rectangle layerInfo, ViewPositionBase viewPosition, CollidableBaseBehaviorFactory collidableBaseBehaviorFactory) : super(name, layerInfo, viewPosition) {
        this.initFieldsCollidableCompositeLayer();
        
        if (collidableBaseBehaviorFactory != CollidableNeverCollideBehaviorFactory.getInstance()) {
            this.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior());
        }
    }
    

    ArtificialIntelligenceInterface getArtificialIntelligenceInterface() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
        return ArtificialIntelligence.getInstance();
    }
    

    @override
    CollidableBaseBehavior getCollidableInferface() {
        return this.collidableInferface;
    }
    

    void setCollidableInferface(CollidableBaseBehavior collidableInferface) {
        this.collidableInferface = collidableInferface;
    }
    

    @override
    bool implmentsCollidableInterface() {
        return true;
    }
    

    @override
    void toStringAppend(StringMaker stringBuffer) {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        super.toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(this.getCollidableInferface().toString());
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        this.toStringAppend(stringBuffer);
        return stringBuffer.toString();
    }
}

