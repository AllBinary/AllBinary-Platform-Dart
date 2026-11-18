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
// package org.allbinary.logic.string.tokens

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class Tokenizer {
    late String sep;
    late String endSep;

    // Java field initializers run after the base constructor
    void initFieldsTokenizer() {
    
    this.endSep = StringUtil.getInstance().EMPTY_STRING;
    }
    

    Tokenizer(String sep) {
        this.initFieldsTokenizer();
        if (TsUtil.getInstance().compareTo(sep, StringUtil.getInstance().EMPTY_STRING) == 0) {
            throw JException('Exception', "Sep provided is not valid");
        }
        this.sep = sep;
    }
    

    void setSep(String sep) {
        this.sep = sep;
    }
    

    void setEndSep(String endSep) {
        this.endSep = endSep;
    }
    

    BasicArrayList getInsideSep(String string) {
        final BasicArrayList tokenList = BasicArrayListD();
        int index = 0;
        int size = string.length;
        while (index < size) {
            index = JString.indexOf(string, this.sep, index);
            if (index != -1) {
                int end = JString.indexOf(string, this.endSep, index + this.sep.length);
                if (end != -1) {
                    tokenList.add(string.substring(index + this.sep.length, end - (this.endSep.length - 1)));
                    index = end + this.endSep.length;
                } else {
                }
            } else {
                break;
            }
        }
        return tokenList;
    }
    

    BasicArrayList getTokensFromString(String string, BasicArrayList tokenVector) {
        int index = 0;
        int end = 0;
        while (index < string.length) {
            end = JString.indexOf(string, this.sep, index);
            if (end != -1) {
                tokenVector.add(string.substring(index, end));
                index = end + this.sep.length;
            } else {
                tokenVector.add(string.substring(index, string.length));
                break;
            }
        }
        return tokenVector;
    }
    

    ABHashtable getTokens(BasicArrayList stringVector) {
        ABHashtable tokenHashtable = StdUtil.getInstance().createHashtable();
        String string = StringUtil.getInstance().EMPTY_STRING;
        int end = 0;
        int size = stringVector.size();
        for (int index = 0; index < size; index++) {
            string = (stringVector.objectArray[index]! as String);
            end = JString.indexOf(string, this.sep);
            if (end >= 0) {
                tokenHashtable.put(string.substring(0, end), string.substring(end + 1, string.length));
            }
        }
        return tokenHashtable;
    }
}

