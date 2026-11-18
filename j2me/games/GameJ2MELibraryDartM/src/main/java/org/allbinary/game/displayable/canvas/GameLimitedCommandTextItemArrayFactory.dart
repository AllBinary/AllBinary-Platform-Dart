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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CommandTextItemArrayFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/LimitCommandsVisitor.dart';

class GameLimitedCommandTextItemArrayFactory {
    static final GameLimitedCommandTextItemArrayFactory instance = GameLimitedCommandTextItemArrayFactory();
    late CommandTextItemArrayFactory commandTextItemArrayFactory;

    // Java field initializers run after the base constructor
    void initFieldsGameLimitedCommandTextItemArrayFactory() {
    this.commandTextItemArrayFactory = CommandTextItemArrayFactory(LimitCommandsVisitor());
    }

    GameLimitedCommandTextItemArrayFactory() {
        this.initFieldsGameLimitedCommandTextItemArrayFactory();
    }
    

    static GameLimitedCommandTextItemArrayFactory getInstance() {
        return GameLimitedCommandTextItemArrayFactory.instance;
    }
    

    CommandTextItemArrayFactory getCommandTextItemArrayFactory() {
        return this.commandTextItemArrayFactory;
    }
}

