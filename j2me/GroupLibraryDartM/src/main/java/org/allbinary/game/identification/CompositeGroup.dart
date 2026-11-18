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
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';
import 'package:allbinary/org/allbinary/game/identification/GroupCommonFactory.dart';

class CompositeGroup {
    late LogUtil logUtil;
    late Group groupInterface;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsCompositeGroup() {
    this.logUtil = LogUtil.getInstance();
    
    this.list = BasicArrayListD();
    }
    

    CompositeGroup(Group groupInterface) {
        this.initFieldsCompositeGroup();
        this.groupInterface = groupInterface;
    }
    

    void clear() {
        this.list.clear();
    }
    

    void add(Group groupInterface) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        final GroupCommonFactory groupCommonFactory = GroupCommonFactory.getInstance();
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(groupCommonFactory.ADDING_LABEL);
        stringBuffer.append(groupInterface.toString());
        stringBuffer.append(groupCommonFactory.TO_LABEL);
        stringBuffer.append(StringUtil.getInstance().toString1(this.groupInterface));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.ADD);
        this.list.add(groupInterface);
    }
    

    bool isInGroup(Group groupInterface) {
        if (this.list.contains(groupInterface)) {
            return true;
        } else {
            return false;
        }
    }
    

    Group getGroup() {
        return this.groupInterface;
    }
}

