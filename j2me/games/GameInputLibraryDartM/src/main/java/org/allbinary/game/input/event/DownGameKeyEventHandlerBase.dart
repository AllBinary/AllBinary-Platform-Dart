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
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownGameKeyEventListenerInterface.dart';

class DownGameKeyEventHandlerBase extends BasicEventHandler {
    static const String TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    static const String LISTENER_LABEL = " PlayerGameInput Listener: ";
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsDownGameKeyEventHandlerBase() {
    this.list = BasicArrayListD();
    }
    

    DownGameKeyEventHandlerBase() {
        this.initFieldsDownGameKeyEventHandlerBase();
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
    

    @override
    void fireEvent(AllBinaryEventObject eventObject) {
        for (int index = this.list.size(); --index >= 0; ) {
            try {
                PlayerGameInput playerGameInput = (this.list.objectArray[index]! as PlayerGameInput);
                playerGameInput.onDownGameKeyEvent((eventObject as GameKeyEvent));
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
        final DownGameKeyEventListenerInterface downGameKeyEventListenerInterface = (eventListenerInterface as DownGameKeyEventListenerInterface);
        downGameKeyEventListenerInterface.onDownGameKeyEvent((eventObject as GameKeyEvent));
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(DownGameKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(this.list.size());
        late EventListenerInterface eventListenerInterface;
        final int size = this.list.size();
        int index = 0;
        while (index < size) {
            try {
                eventListenerInterface = (this.list.get(index) as EventListenerInterface);
                stringBuffer.append(DownGameKeyEventHandlerBase.LISTENER_LABEL);
                stringBuffer.append(eventListenerInterface.toString());
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.TOSTRING, e);
                }
            }
            index++;
        }
        return stringBuffer.toString();
    }
}

