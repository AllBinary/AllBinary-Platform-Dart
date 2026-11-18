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
// package org.allbinary.game.combat.destroy

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyableInterface.dart';

class DestroyableBaseBehavior implements DestroyableInterface {
    static final DestroyableBaseBehavior instance = DestroyableBaseBehavior();
    

    static DestroyableBaseBehavior getInstance() {
        return DestroyableBaseBehavior.instance;
    }
    

    @override
    String getName() {
        return jClassName(this);
    }
    

    @override
    bool isDestroyed() {
        throw JException('Exception', CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    void setDestroyed(bool destroyed) {
    }
}

