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
// package org.allbinary.logic.util.event.handler

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandlerInterface.dart';

class BasicEventHandler implements BasicEventHandlerInterface {
    static const String PERFORMANCE_MESSAGE = "Use Custom onEvent Methods for needed optimization";
    late LogUtil logUtil;
    late BasicArrayList eventListenerInterfaceList;

    // Java field initializers run after the base constructor
    void initFieldsBasicEventHandler() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    BasicEventHandler() {
        this.initFieldsBasicEventHandler();
        this.eventListenerInterfaceList = BasicArrayListD();
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        final String LISTENER = " Listener: ";
        stringBuffer.append("Total Listeners: ");
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        late EventListenerInterface eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.objectArray[index]! as EventListenerInterface);
                stringBuffer.append(LISTENER);
                stringBuffer.append(StringUtil.getInstance().toString1(eventListenerInterface));
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                final CommonStrings commonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.TOSTRING, e);
                }
            }
            index++;
        }
        return stringBuffer.toString();
    }
    

    void removeAllListeners() {
        this.eventListenerInterfaceList = BasicArrayListD();
    }
    

    void addListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void addListenerInterface(EventListenerInterface eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void fireEvent(AllBinaryEventObject eventObject) {
        int index = 0;
        late EventListenerInterface eventListenerInterface;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.objectArray[index]! as EventListenerInterface);
                this.process(eventObject, eventListenerInterface);
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                final CommonStrings commonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
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
}

