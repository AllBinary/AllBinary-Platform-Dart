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
// package org.allbinary.input.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/input/event/VirtualKeyboardEvent.dart';
import 'package:allbinary/org/allbinary/input/event/VirtualKeyboardEventListenerInterface.dart';

class VirtualKeyboardEventHandler extends BasicEventHandler {
    static final VirtualKeyboardEventHandler gameKeyEventHandler = VirtualKeyboardEventHandler();
    late VirtualKeyboardEvent SHOW_EVENT;
    late VirtualKeyboardEvent HIDE_EVENT;

    // Java field initializers run after the base constructor
    void initFieldsVirtualKeyboardEventHandler() {
    this.SHOW_EVENT = VirtualKeyboardEvent(BooleanFactory.getInstance().TRUE);
    this.HIDE_EVENT = VirtualKeyboardEvent(BooleanFactory.getInstance().FALSE);
    }
    

    VirtualKeyboardEventHandler() {
        this.initFieldsVirtualKeyboardEventHandler();
    }
    

    static VirtualKeyboardEventHandler getInstance() {
        return VirtualKeyboardEventHandler.gameKeyEventHandler;
    }
    

    @override
    void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        final VirtualKeyboardEventListenerInterface virtualKeyboardEventListenerInterface = (eventListenerInterface as VirtualKeyboardEventListenerInterface);
        virtualKeyboardEventListenerInterface.onVirtualKeyboardEvent((eventObject as VirtualKeyboardEvent));
    }
    

    void open() {
        try {
            Thread.sleep(120);
            this.fireEvent(this.SHOW_EVENT);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "open", e);
            }
        }
    }
    

    void close() {
        try {
            Thread.sleep(120);
            this.fireEvent(this.HIDE_EVENT);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e);
            }
        }
    }
}

