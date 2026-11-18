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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEventListener.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.dart';

class CompleteMotionGestureInputEventHandler extends BasicEventHandler {
    static final CompleteMotionGestureInputEventHandler SINGLETON = CompleteMotionGestureInputEventHandler();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsCompleteMotionGestureInputEventHandler() {
    this.list = BasicArrayListD();
    }
    

    static CompleteMotionGestureInputEventHandler getInstance() {
        return CompleteMotionGestureInputEventHandler.SINGLETON;
    }
    

    CompleteMotionGestureInputEventHandler() {
        this.initFieldsCompleteMotionGestureInputEventHandler();
    }
    

    void addListener(CompleteMotionGestureInputEventListener completeMotionGestureInputEventListener) {
        if (!this.list.contains(completeMotionGestureInputEventListener)) {
            this.list.add(completeMotionGestureInputEventListener);
        }
    }
    

    @override
    void removeAllListeners() {
        this.list.clear();
        super.removeAllListeners();
    }
    

    @override
    void removeListener(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        super.removeListener(eventListenerInterface);
    }
    

    @override
    void fireEvent(AllBinaryEventObject eventObject) {
        for (int index = this.list.size(); --index >= 0; ) {
            try {
                CompleteMotionGestureInputEventListener completeMotionGestureInputEventListener = (this.list.objectArray[index]! as CompleteMotionGestureInputEventListener);
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent((eventObject as CompleteMotionGestureInputEvent));
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
        }
        super.fireEvent(eventObject);
    }
    

    @override
    void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        final CompleteMotionGestureInputEventListenerInterface completeMotionGestureInputEventListenerInterface = (eventListenerInterface as CompleteMotionGestureInputEventListenerInterface);
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent((eventObject as CompleteMotionGestureInputEvent));
    }
}

