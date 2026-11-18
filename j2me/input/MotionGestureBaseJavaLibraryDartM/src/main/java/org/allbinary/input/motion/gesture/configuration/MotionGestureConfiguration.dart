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
// package org.allbinary.input.motion.gesture.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class MotionGestureConfiguration {
    bool diagonalMotionGestureAllowed = false;
    int diagonalTolerance = 0;
    int minimumMotionGesture = 0;
    late String button;
    late BasicColor color;
    bool executingActions = false;
    int mouseButtonMask = 0;
    late BasicArrayList activeCommands;

    // Java field initializers run after the base constructor
    void initFieldsMotionGestureConfiguration() {
    this.diagonalMotionGestureAllowed = true;
    this.diagonalTolerance = 7;
    this.minimumMotionGesture = 9;
    this.button = StringUtil.getInstance().EMPTY_STRING;
    this.color = BasicColorFactory.getInstance().BLUE;
    this.executingActions = true;
    this.mouseButtonMask = 0;
    this.activeCommands = BasicArrayListD();
    }
    

    MotionGestureConfiguration() {
        this.initFieldsMotionGestureConfiguration();
    }
    

    void addMotionGestureAction(BasicArrayList list, CompleteMotionGestureInputEvent commandAction) {
        this.activeCommands.add(MotionGestureToMotionGestureActionAssociation(list, commandAction));
    }
    

    void clearMotionGestureAction() {
        this.activeCommands.clear();
    }
    

    BasicArrayList getAssociateCommandActionsList() {
        return this.activeCommands;
    }
    

    bool isDiagonalMotionGestureAllowed() {
        return this.diagonalMotionGestureAllowed;
    }
    

    bool isExecutingActionsAllowed() {
        return this.executingActions;
    }
    

    void setExecutingActionsAllowed(bool executingActionAllowed) {
        this.executingActions = executingActionAllowed;
    }
    

    void setDiagonalMotionGestureAllowed(bool diagonalMotionGestureAllowed) {
        this.diagonalMotionGestureAllowed = diagonalMotionGestureAllowed;
    }
    

    int getDiagonalTolerance() {
        return this.diagonalTolerance;
    }
    

    void setDiagonalTolerance(int diagonalTolerance) {
        this.diagonalTolerance = diagonalTolerance;
    }
    

    int getMinimumMotionGesture() {
        return this.minimumMotionGesture;
    }
    

    void setMinimumMotionGesture(int minimumMotionGesture) {
        this.minimumMotionGesture = minimumMotionGesture;
    }
    

    String getButton() {
        return this.button;
    }
    

    void setButton(String button) {
        this.button = button;
    }
    

    BasicColor getColor() {
        return this.color;
    }
    

    void setColor(BasicColor color) {
        this.color = color;
    }
    

    int getMouseButtonMask() {
        return this.mouseButtonMask;
    }
    

    void setMouseButtonMask(int mouseButtonMask) {
        this.mouseButtonMask = mouseButtonMask;
    }
}

