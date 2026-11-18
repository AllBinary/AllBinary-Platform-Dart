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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputProcessorInterface.dart';

class GameInputProcessorComposite extends PlayerGameInput {
    late String name;
    late GameInputProcessorInterface gameInputProcessorInterface;
    late String NAME_LABEL;

    // Java field initializers run after the base constructor
    void initFieldsGameInputProcessorComposite() {
    
    
    this.NAME_LABEL = " GameInputProcessorInterface: ";
    }
    

    GameInputProcessorComposite(String name, GameInputProcessorInterface gameInputProcessorInterface) : super(BasicArrayListD(), BasicArrayListD(), -1) {
        this.initFieldsGameInputProcessorComposite();
        
        this.name = name;
        this.gameInputProcessorInterface = gameInputProcessorInterface;
    }
    

    @override
    void update() {
        try {
            BasicArrayList list = this.getGameKeyEventList();
            this.gameInputProcessorInterface.onInput(list);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
        }
    }
    

    @override
    String toString() {
        return StringMaker().append(super.toString()).append(this.NAME_LABEL).append(this.name).toString();
    }
}

