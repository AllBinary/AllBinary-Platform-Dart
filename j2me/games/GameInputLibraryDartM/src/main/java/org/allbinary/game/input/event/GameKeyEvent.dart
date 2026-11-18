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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';

class GameKeyEvent extends AllBinaryEventObject {
    static final GameKeyEvent NONE = GameKeyEvent(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false);
    int sourceId = 0;
    bool repeated = false;
    int key = 0;
    int gameActionKey = 0;
    int originalKey = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyEvent() {
    
    this.repeated = false;
    
    this.gameActionKey = 0;
    this.originalKey = 0;
    }
    

    static GameKeyEvent createEvent(Object anyType, int sourceId, int key) {
        return GameKeyEvent(anyType, sourceId, 0, 0, key, false);
    }
    

    GameKeyEvent(Object anyType, int sourceId, int originalKey, int gameActionKey, int key, bool repeated) : super(anyType) {
        this.initFieldsGameKeyEvent();
        
        this.sourceId = sourceId;
        this.setOriginalKey(originalKey);
        this.key = key;
        this.setGameActionKey(gameActionKey);
        this.setRepeatEvents(repeated);
    }
    

    void init(Object anyType) {
        this.setSource(anyType);
    }
    

    void setRepeatEvents(bool repeated) {
        this.repeated = repeated;
    }
    

    bool hasRepeatEvents() {
        return this.repeated;
    }
    

    int getKey() {
        return this.key;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("\nKey: ");
        stringBuffer.appendint(this.getKey());
        return stringBuffer.toString();
    }
    

    int getOriginalKey() {
        return this.originalKey;
    }
    

    void setOriginalKey(int originalKey) {
        this.originalKey = originalKey;
    }
    

    int getGameActionKey() {
        return this.gameActionKey;
    }
    

    void setGameActionKey(int gameActionKey) {
        this.gameActionKey = gameActionKey;
    }
    

    int getSourceId() {
        return this.sourceId;
    }
}

