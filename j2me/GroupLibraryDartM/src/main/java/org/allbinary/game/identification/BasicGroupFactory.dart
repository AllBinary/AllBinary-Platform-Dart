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
// package org.allbinary.game.identification

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';

class BasicGroupFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late String NAME;
    late String NO_SUCH_GROUP;
    late Group GOOD;
    late Group ENEMY;
    late Group ENEMY_ON_LEVEL;
    late Group NONE;
    late List<Group?> GOOD_ARRAY;
    late List<Group?> ENEMY_ARRAY;
    late List<Group?> ENEMY_ON_LEVEL_ARRAY;
    late List<Group?> NONE_ARRAY;

    // Java field initializers run after the base constructor
    void initFieldsBasicGroupFactory() {
    this.NAME = "GROUP_NAME";
    this.NO_SUCH_GROUP = "No Such Group: ";
    this.GOOD = Group("Good Guys", (0).toSigned(16));
    this.ENEMY = Group("Bad Guys", (1).toSigned(16));
    this.ENEMY_ON_LEVEL = Group("Bad Guys on Level", (2).toSigned(16));
    this.NONE = Group("Not On A Team", (3).toSigned(16));
    this.GOOD_ARRAY = <Group?>[this.GOOD];
    this.ENEMY_ARRAY = <Group?>[this.ENEMY];
    this.ENEMY_ON_LEVEL_ARRAY = <Group?>[this.ENEMY, this.ENEMY_ON_LEVEL];
    this.NONE_ARRAY = <Group?>[this.NONE];
    }

    BasicGroupFactory() {
        this.initFieldsBasicGroupFactory();
    }
    

    static BasicGroupFactory getInstance() {
        if (BasicGroupFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            BasicGroupFactory.instance = BasicGroupFactory();
        }
        return (BasicGroupFactory.instance as BasicGroupFactory);
    }
}

