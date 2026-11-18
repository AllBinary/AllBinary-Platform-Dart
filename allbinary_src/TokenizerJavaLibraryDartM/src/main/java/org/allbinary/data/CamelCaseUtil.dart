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
// package org.allbinary.data

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/tokens/Tokenizer.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class CamelCaseUtil {
    static final CamelCaseUtil instance = CamelCaseUtil();
    late CommonSeps commonSeps;

    // Java field initializers run after the base constructor
    void initFieldsCamelCaseUtil() {
    this.commonSeps = CommonSeps.getInstance();
    }

    CamelCaseUtil() {
        this.initFieldsCamelCaseUtil();
    }
    

    static CamelCaseUtil getInstance() {
        return CamelCaseUtil.instance;
    }
    

    String getAsCamelCase(String string, StringMaker stringBuilder) {
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        stringBuilder.delete(0, stringBuilder.length());
        final BasicArrayList list = BasicArrayListD();
        final Tokenizer tokenizer = Tokenizer(this.commonSeps.UNDERSCORE);
        tokenizer.getTokensFromString(string, list);
        final int size = list.size();
        late String word;
        for (int i = 0; i < size; i++) {
            word = (list.get(i) as String);
            word = (stringValidationUtil.isEmpty(word) ? word : StringMaker().appendchar(Character.toUpperCase(word.codeUnitAt(0))).append(word.substring(1).toLowerCase()).toString());
            stringBuilder.append(word);
        }
        return stringBuilder.toString();
    }
}

