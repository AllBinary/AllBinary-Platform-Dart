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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';

class GroupFactory {
    static final GroupFactory instance = GroupFactory();
    late LogUtil logUtil;
    late List<Group?> NULL_GROUP_ARRAY;
    late BasicArrayList list;
    int index = 0;

    // Java field initializers run after the base constructor
    void initFieldsGroupFactory() {
    this.logUtil = LogUtil.getInstance();
    this.NULL_GROUP_ARRAY = List<Group?>.filled(0, null);
    this.list = BasicArrayListD();
    this.index = 0;
    }

    GroupFactory() {
        this.initFieldsGroupFactory();
    }
    

    static GroupFactory getInstance() {
        return GroupFactory.instance;
    }
    

    Group getNextGroup() {
        final Group group = (this.list.objectArray[this.index]! as Group);
        this.index++;
        return group;
    }
    

    Group getNextGroupByName(String name) {
        final Group group = this.getNextGroup();
        group.setName(name);
        return group;
    }
    

    void init(int groups, List<String?> nameArray) {
        final StringMaker stringMaker = StringMaker();
        final StringUtil stringUtil = StringUtil.getInstance();
        final String TEAM = "Team ";
        this.list.clear();
        this.index = 0;
        int size = this.list.size();
        late String name;
        while (size < groups) {
            name = stringUtil.EMPTY_STRING;
            if (size < nameArray.length) {
                name = nameArray[size]!;
            } else {
                stringMaker.delete(0, stringMaker.length());
                name = stringMaker.append(TEAM).appendint(size).toString();
            }
            this.list.add(Group(name, ((size + 3)).toSigned(16)));
            size++;
        }
    }
}

