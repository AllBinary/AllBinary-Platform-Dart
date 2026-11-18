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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BaseTouchInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonLocationHelper.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/CommonButtons.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButton.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchInputFactory.dart';

class BasicNeededTouchButtonsBuilder extends BaseTouchInput {
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsBasicNeededTouchButtonsBuilder() {
    this.logUtil = LogUtil.getInstance();
    }

    BasicNeededTouchButtonsBuilder() {
        this.initFieldsBasicNeededTouchButtonsBuilder();
    }
    

    @override
    BasicArrayList getList() {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            final BasicArrayList list = BasicArrayListD();
            final TouchButtonLocationHelper touchButtonLocationHelper = TouchButtonLocationHelper();
            final BasicTouchButtonCellPositionFactory basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory();
            final CommonButtons commonButtons = CommonButtons.getInstance();
            final Animation animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
            TouchButton UP = TouchButton(BasicTouchInputFactory.getInstance().UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton DOWN = TouchButton(BasicTouchInputFactory.getInstance().DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton LEFT = TouchButton(BasicTouchInputFactory.getInstance().LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton RIGHT = TouchButton(BasicTouchInputFactory.getInstance().RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            list.add(UP);
            list.add(DOWN);
            list.add(LEFT);
            list.add(RIGHT);
            return list;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e);
            return BasicArrayListUtil.getInstance().getImmutableInstance();
            }
        }
    }
}

