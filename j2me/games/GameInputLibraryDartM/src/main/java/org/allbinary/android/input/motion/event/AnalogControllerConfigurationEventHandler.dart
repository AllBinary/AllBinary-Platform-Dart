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
// package org.allbinary.android.input.motion.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.dart';

class AnalogControllerConfigurationEventHandler extends BasicEventHandler {
    static final AnalogControllerConfigurationEventHandler instance = AnalogControllerConfigurationEventHandler();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsAnalogControllerConfigurationEventHandler() {
    this.list = BasicArrayListD();
    }
    

    static AnalogControllerConfigurationEventHandler getInstance() {
        return AnalogControllerConfigurationEventHandler.instance;
    }
    

    AnalogControllerConfigurationEventHandler() {
        this.initFieldsAnalogControllerConfigurationEventHandler();
    }
    

    void addListener(AnalogControllerConfigurationEventListenerInterface analogControllerConfigurationEventListenerInterface) {
        if (!this.list.contains(analogControllerConfigurationEventListenerInterface)) {
            this.list.add(analogControllerConfigurationEventListenerInterface);
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
                AnalogControllerConfigurationEventListenerInterface playerGameInput = (this.list.objectArray[index]! as AnalogControllerConfigurationEventListenerInterface);
                playerGameInput.onAnalogControllerConfigurationEvent((eventObject as AnalogControllerConfigurationEvent));
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
        final AnalogControllerConfigurationEventListenerInterface analogControllerConfigurationEventListenerInterface = ((eventListenerInterface as AnalogControllerConfigurationEventListenerInterface));
        analogControllerConfigurationEventListenerInterface.onAnalogControllerConfigurationEvent((eventObject as AnalogControllerConfigurationEvent));
    }
}

