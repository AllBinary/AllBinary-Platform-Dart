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
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventListenerInterface.dart';

class UpGameKeyEventHandlerBase extends BasicEventHandler {
    static const String TOTAL_LISTENERS = " Total PlayerGameInput Listeners: ";
    static const String LISTENER_LABEL = " PlayerGameInput Listener: ";
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsUpGameKeyEventHandlerBase() {
    this.list = BasicArrayListD();
    }
    

    UpGameKeyEventHandlerBase() {
        this.initFieldsUpGameKeyEventHandlerBase();
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
                playerGameInput.onUpGameKeyEvent((eventObject as GameKeyEvent));
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
        final UpGameKeyEventListenerInterface upGameKeyEventListenerInterface = (eventListenerInterface as UpGameKeyEventListenerInterface);
        upGameKeyEventListenerInterface.onUpGameKeyEvent((eventObject as GameKeyEvent));
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        final int size = this.list.size();
        stringBuffer.append(super.toString());
        stringBuffer.append(UpGameKeyEventHandlerBase.TOTAL_LISTENERS);
        stringBuffer.appendint(size);
        for (int index = 0; index < size; index++) {
            try {
                EventListenerInterface eventListenerInterface = (this.list.get(index) as EventListenerInterface);
                stringBuffer.append(UpGameKeyEventHandlerBase.LISTENER_LABEL);
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

