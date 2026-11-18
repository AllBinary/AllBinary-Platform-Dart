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
// package org.allbinary.game.combat.destroy.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEvent.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.dart';

class DestroyedEventHandler extends BasicEventHandler {
    static final DestroyedEventHandler instance = DestroyedEventHandler();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsDestroyedEventHandler() {
    this.list = BasicArrayListD();
    }
    

    static DestroyedEventHandler getInstance() {
        return DestroyedEventHandler.instance;
    }
    

    DestroyedEventHandler() {
        this.initFieldsDestroyedEventHandler();
    }
    

    void addListener(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer) {
        if (!this.list.contains(collidableDestroyableDamageableLayer)) {
            this.list.add(collidableDestroyableDamageableLayer);
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
                CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (this.list.objectArray[index]! as CollidableDestroyableDamageableLayer);
                collidableDestroyableDamageableLayer.onDestroyed((eventObject as DestroyedEvent));
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
        final DestroyedEventListenerInterface destroyedEventListenerInterface = (eventListenerInterface as DestroyedEventListenerInterface);
        destroyedEventListenerInterface.onDestroyed((eventObject as DestroyedEvent));
    }
}

