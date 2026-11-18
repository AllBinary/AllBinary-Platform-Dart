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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/game/identification/GroupInterface.dart';
import 'package:allbinary/org/allbinary/game/identification/GroupCommonFactory.dart';

class Group implements GroupInterface {
    late String name;
    int teamId = 0;
    late String string;

    // Java field initializers run after the base constructor
    void initFieldsGroup() {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    
    this.string = StringUtil.getInstance().EMPTY_STRING;
    }
    

    Group(String teamName, int teamId) {
        this.initFieldsGroup();
        this.teamId = teamId;
        this.setName(teamName);
    }
    

    @override
    String getGroupName() {
        return this.name;
    }
    

    void setName(String name) {
        this.name = name;
        final GroupCommonFactory groupCommonFactory = GroupCommonFactory.getInstance();
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL);
        stringBuffer.append(this.name);
        stringBuffer.append(groupCommonFactory.ID_LABEL);
        stringBuffer.appendshort(this.teamId);
        this.string = stringBuffer.toString();
    }
    

    @override
    int getGroupId() {
        return this.teamId;
    }
    

    @override
    String toString() {
        return this.string;
    }
}

