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
// package org.allbinary.util

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/rand/MyRandomFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonPhoneStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/ImmutableBasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class BasicArrayListUtil {
    static final BasicArrayListUtil instance = BasicArrayListUtil();
    late List<List<BasicArrayList?>?> NULL_ARRAY_OF_ARRAY;
    late MyRandomFactory myRandomFactory;
    late BasicArrayList immutableInstance;

    // Java field initializers run after the base constructor
    void initFieldsBasicArrayListUtil() {
    this.NULL_ARRAY_OF_ARRAY = List<List<BasicArrayList?>>.generate(0, (_) => List<BasicArrayList?>.filled(0, null));
    this.myRandomFactory = MyRandomFactory.getInstance();
    this.immutableInstance = ImmutableBasicArrayList("Immutable", 0);
    }

    BasicArrayListUtil() {
        this.initFieldsBasicArrayListUtil();
    }
    

    static BasicArrayListUtil getInstance() {
        return BasicArrayListUtil.instance;
    }
    

    Object getRandom(BasicArrayList list) {
        int i_random = this.getRandomIndex(list);
        return list.objectArray[i_random]!;
    }
    

    int getRandomIndex(BasicArrayList list) {
        return this.myRandomFactory.getAbsoluteNextInt(list.size());
    }
    

    void reverse(BasicArrayList list) {
        final int lastMinusOneIndex = list.size() - 2;
        late Object temp;
        final int size = lastMinusOneIndex ~/ 2;
        int secondSwapIndex = 0;
        for (int index = 0; index <= size; index++) {
            secondSwapIndex = lastMinusOneIndex - index;
            temp = list.removeAt(index);
            list.addAt(index, list.removeAt(secondSwapIndex));
            list.addAt(secondSwapIndex + 1, temp);
        }
    }
    

    String log(BasicArrayList list) {
        final String S_LABEL = " s: ";
        final int size = list.size();
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(size);
        for (int index = size - 1; index >= 0; index--) {
            BasicArrayList usedList = (list.objectArray[index]! as BasicArrayList);
            stringBuffer.append(S_LABEL);
            stringBuffer.appendint(usedList.size());
        }
        return stringBuffer.toString();
    }
    

    BasicArrayList getImmutableInstance() {
        return this.immutableInstance;
    }
    

    static void main(List<String?> args) {
        final CommonPhoneStrings commonPhoneStrings = CommonPhoneStrings.getInstance();
        final BasicArrayList list = BasicArrayListD();
        list.add(commonPhoneStrings.ONE);
        list.add(commonPhoneStrings.TWO);
        list.add(commonPhoneStrings.THREE);
        list.add(commonPhoneStrings.FOUR);
        list.add(commonPhoneStrings.FIVE);
        list.add(commonPhoneStrings.SIX);
        list.add(commonPhoneStrings.SEVEN);
        list.add(commonPhoneStrings.EIGHT);
        list.add(commonPhoneStrings.NINE);
        BasicArrayListUtil.getInstance().reverse(list);
        JSystem.println(jstr(list.toString()));
    }
}

