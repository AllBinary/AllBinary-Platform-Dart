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
// package org.allbinary.game.input.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownKeyEventListenerInterface.dart';

class DownKeyEventHandlerBase extends BasicEventHandler {
    static const String TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    static const String LISTENER_LABEL = " PlayerGameInput Listener: ";
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsDownKeyEventHandlerBase() {
    this.list = BasicArrayListD();
    }
    

    DownKeyEventHandlerBase() {
        this.initFieldsDownKeyEventHandlerBase();
    }
    

    void addListener(PlayerGameInput playerGameInput) {
        if (!this.list.contains(playerGameInput)) {
            this.list.add(playerGameInput);
        }
    }
    

    @override
    void removeAllListeners() {
        this.list.clear();
        super.removeAllListeners();
    }
    

    @override
    void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        super.removeListenerSingleThreaded(eventListenerInterface);
    }
    

    @override
    void removeListener(EventListenerInterface eventListenerInterface) {
        this.list.remove(eventListenerInterface);
        super.removeListener(eventListenerInterface);
    }
    

    void fireEventI(int eventObject) {
        for (int index = this.list.size(); --index >= 0; ) {
            try {
                PlayerGameInput playerGameInput = (this.list.objectArray[index]! as PlayerGameInput);
                playerGameInput.onDownKey(eventObject);
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
        }
        int index = 0;
        late EventListenerInterface eventListenerInterface;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get(index) as EventListenerInterface);
                this.processI(eventObject, eventListenerInterface);
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
            index++;
        }
    }
    

    void fireEventForGameKeyEvent(GameKeyEvent eventObject) {
        final int size = this.list.size();
        for (int index = size; --index >= 0; ) {
            try {
                PlayerGameInput playerGameInput = (this.list.objectArray[index]! as PlayerGameInput);
                playerGameInput.onDownKeyEvent(eventObject);
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
        }
        int index = 0;
        late EventListenerInterface eventListenerInterface;
        while (index < this.eventListenerInterfaceList.size()) {
            try {
                eventListenerInterface = (this.eventListenerInterfaceList.get(index) as EventListenerInterface);
                this.processEvent(eventObject, eventListenerInterface);
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
                }
            }
            index++;
        }
    }
    

    void processI(int eventObject, EventListenerInterface eventListenerInterface) {
        final DownKeyEventListenerInterface downKeyEventListenerInterface = (eventListenerInterface as DownKeyEventListenerInterface);
        downKeyEventListenerInterface.onDownKey(eventObject);
    }
    

    void processEvent(GameKeyEvent eventObject, EventListenerInterface eventListenerInterface) {
        final DownKeyEventListenerInterface downKeyEventListenerInterface = (eventListenerInterface as DownKeyEventListenerInterface);
        downKeyEventListenerInterface.onDownKeyEvent(eventObject);
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(DownKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(this.list.size());
        late EventListenerInterface eventListenerInterface;
        for (int index = 0; index < this.list.size(); index++) {
            try {
                eventListenerInterface = (this.list.get(index) as EventListenerInterface);
                stringBuffer.append(DownKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
                }
            }
        }
        return stringBuffer.toString();
    }
}

