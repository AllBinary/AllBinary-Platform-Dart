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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic.util.event.handler

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandlerInterface.dart';

class BasicEventHandler implements BasicEventHandlerInterface {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late EventStrings eventStrings;
    late BasicArrayList eventListenerInterfaceList;

    // Java field initializers run after the base constructor
    void initFieldsBasicEventHandler() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.eventStrings = EventStrings.getInstance();
    
    }
    

    BasicEventHandler() {
        this.initFieldsBasicEventHandler();
        this.eventListenerInterfaceList = BasicArrayListD();
    }
    

    @override
    void removeAllListeners() {
        this.eventListenerInterfaceList = BasicArrayListD();
    }
    

    @override
    void addListeners(BasicArrayList vector) {
        late EventListenerInterface eventListenerInterface;
        final int size = vector.size();
        for (int index = 0; index < size; index++) {
            eventListenerInterface = (vector.get(index) as EventListenerInterface);
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    void removeListeners(BasicArrayList vector) {
        late EventListenerInterface eventListenerInterface;
        final int size = vector.size();
        for (int index = 0; index < size; index++) {
            eventListenerInterface = (vector.get(index) as EventListenerInterface);
            this.removeListener(eventListenerInterface);
        }
    }
    

    void addListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    @override
    void addListenerInterface(EventListenerInterface eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    @override
    void removeListener(EventListenerInterface eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    @override
    void fireEvent(AllBinaryEventObject eventObject) {
        late EventListenerInterface eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get(index) as EventListenerInterface);
                this.process(eventObject, eventListenerInterface);
            } catch (e) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.eventStrings.FIRE_EVENT, e);
            }
            index++;
        }
    }
    

    void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        eventListenerInterface.onEvent(eventObject);
    }
    

    BasicArrayList getEventListenerInterfaceListP() {
        return this.eventListenerInterfaceList;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(this.eventStrings.TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        late EventListenerInterface eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get(index) as EventListenerInterface);
                stringBuffer.append(this.eventStrings.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch (e) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
            }
            index++;
        }
        return stringBuffer.toString();
    }
}

