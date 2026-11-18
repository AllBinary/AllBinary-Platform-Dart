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
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.input.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/event/RawKeyEventListener.dart';

class RawKeyEventHandler {
    static final RawKeyEventHandler instance = RawKeyEventHandler();
    static const String TOTAL_LISTENERS = "Total Listeners: ";
    static const String LISTENER_LABEL = " Listener: ";
    late LogUtil logUtil;
    late BasicArrayList eventListenerInterfaceList;

    // Java field initializers run after the base constructor
    void initFieldsRawKeyEventHandler() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    static RawKeyEventHandler getInstance() {
        return RawKeyEventHandler.instance;
    }
    

    RawKeyEventHandler() {
        this.initFieldsRawKeyEventHandler();
        this.eventListenerInterfaceList = BasicArrayListD();
    }
    

    void removeAllListeners() {
        this.eventListenerInterfaceList = BasicArrayListD();
    }
    

    void addListeners(BasicArrayList vector) {
        late RawKeyEventListener eventListenerInterface;
        final int size = vector.size();
        for (int index = 0; index < size; index++) {
            eventListenerInterface = (vector.get(index) as RawKeyEventListener);
            this.addListener(eventListenerInterface);
        }
    }
    

    void addListenerSingleThreaded(RawKeyEventListener eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void addListener(RawKeyEventListener eventListenerInterface) {
        if (!this.eventListenerInterfaceList.contains(eventListenerInterface)) {
            this.eventListenerInterfaceList.add(eventListenerInterface);
        }
    }
    

    void removeListenerSingleThreaded(RawKeyEventListener eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void removeListener(RawKeyEventListener eventListenerInterface) {
        this.eventListenerInterfaceList.remove(eventListenerInterface);
    }
    

    void fireEvent(int keyCode, int deviceId, bool repeated) {
        late RawKeyEventListener eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get(index) as RawKeyEventListener);
                this.process(keyCode, deviceId, repeated, eventListenerInterface);
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
    

    void process(int keyCode, int deviceId, bool repeated, RawKeyEventListener eventListenerInterface) {
        eventListenerInterface.onEventRaw(keyCode, deviceId, repeated);
    }
    

    BasicArrayList getEventListenerInterfaceListP() {
        return this.eventListenerInterfaceList;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(RawKeyEventHandler.TOTAL_LISTENERS);
        stringBuffer.appendint(this.eventListenerInterfaceList.size());
        late RawKeyEventListener eventListenerInterface;
        int index = 0;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get(index) as RawKeyEventListener);
                stringBuffer.append(RawKeyEventHandler.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
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
}

