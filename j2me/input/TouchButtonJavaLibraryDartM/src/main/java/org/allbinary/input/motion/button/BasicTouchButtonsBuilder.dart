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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BaseTouchInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/CommonButtons.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonLocationHelper.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButton.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchInputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonUpResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonDownResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonTurnLeftResource.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonTurnRightResource.dart';

class BasicTouchButtonsBuilder extends BaseTouchInput {
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsBasicTouchButtonsBuilder() {
    this.logUtil = LogUtil.getInstance();
    }

    BasicTouchButtonsBuilder() {
        this.initFieldsBasicTouchButtonsBuilder();
    }
    

    @override
    BasicArrayList getList() {
        try {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
            final BasicArrayList list = BasicArrayListD();
            final CommonButtons commonButtons = CommonButtons.getInstance();
            final TouchButtonLocationHelper touchButtonLocationHelper = TouchButtonLocationHelper();
            final BasicTouchButtonCellPositionFactory basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory();
            TouchButton UP = TouchButton.createButton(BasicTouchInputFactory.getInstance().UP, TouchButtonUpResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton DOWN = TouchButton.createButton(BasicTouchInputFactory.getInstance().DOWN, TouchButtonDownResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton LEFT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            TouchButton RIGHT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf());
            list.add(UP);
            list.add(LEFT);
            list.add(RIGHT);
            list.add(DOWN);
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

