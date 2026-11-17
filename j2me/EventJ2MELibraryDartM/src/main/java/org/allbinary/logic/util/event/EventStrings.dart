/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic.util.event

import 'package:allbinary/allbinary_java.dart';

class EventStrings {
    static final EventStrings instance = EventStrings();
    late String PERFORMANCE_MESSAGE;
    late String TOTAL_LISTENERS;
    late String LISTENER_LABEL;
    late String FIRE_EVENT;

    // Java field initializers run after the base constructor
    void initFieldsEventStrings() {
    this.PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
    this.TOTAL_LISTENERS = "Total Listeners: ";
    this.LISTENER_LABEL = " Listener: ";
    this.FIRE_EVENT = "fireEvent";
    }

    EventStrings() {
        this.initFieldsEventStrings();
    }
    

    static EventStrings getInstance() {
        return EventStrings.instance;
    }
}

