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
// package org.allbinary.game.input.mapping

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';

class InputMapping {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late ABHashtable hashtable;
    late BasicArrayList mappedList;

    // Java field initializers run after the base constructor
    void initFieldsInputMapping() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.hashtable = StdUtil.getInstance().createHashtable();
    this.mappedList = BasicArrayListD();
    }
    

    InputMapping() {
        this.initFieldsInputMapping();
    }
    

    int getTotalMapped() {
        return this.hashtable.size();
    }
    

    bool isDefaultNew() {
        return false;
    }
    

    InputToGameKeyMapping getDefault() {
        return InputToGameKeyMapping.getNullInstance();
    }
    

    void removeAll() {
        this.hashtable.clear();
        this.mappedList.clear();
    }
    

    void remove(Input input, Input mappedToInput) {
        final StringMaker stringBuffer = StringMaker();
        final StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append(CommonLabels.getInstance().START_LABEL);
        stringBuffer.append(stringUtil.toString1(input));
        stringBuffer.append(" == ");
        stringBuffer.append(stringUtil.toString1(mappedToInput));
        this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        final BasicArrayList list = this.getMappedInput(input);
        if (list.contains(mappedToInput)) {
            list.remove(mappedToInput);
            this.mappedList.remove(mappedToInput);
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append("Removed: ");
            stringBuffer.append(stringUtil.toString1(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString1(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        } else {
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append("Not Deleted: ");
            stringBuffer.append(stringUtil.toString1(input));
            stringBuffer.append(" == ");
            stringBuffer.append(stringUtil.toString1(mappedToInput));
            this.logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove");
        }
    }
    

    void addMapping(InputToGameKeyMapping inputToGameKeyMapping) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void add(Input input, Input mappedToInput) {
        BasicArrayList list = this.getMappedInput(input);
        if (!list.contains(mappedToInput)) {
            list.add(mappedToInput);
            this.mappedList.add(mappedToInput);
        }
    }
    

    bool isMapped(Input input) {
        return this.mappedList.contains(input);
    }
    

    BasicArrayList getMappedInput(Input id) {
        final Object mappingInputCanBeNullList = this.hashtable.get(id);
        if (mappingInputCanBeNullList == null) {
            final BasicArrayList list = BasicArrayListD();
            this.hashtable.put(id, list);
            return list;
        }
        return (mappingInputCanBeNullList as BasicArrayList);
    }
    

    ABHashtable getHashtable() {
        return this.hashtable;
    }
}

