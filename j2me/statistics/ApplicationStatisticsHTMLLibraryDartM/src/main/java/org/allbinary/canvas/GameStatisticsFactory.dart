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
// package org.allbinary.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/canvas/BaseGameStatistics.dart';

//ActualPlatform
class GameStatisticsFactory extends BaseGameStatistics {
    static final GameStatisticsFactory instance = GameStatisticsFactory();
    late StringMaker stringBuffer;

    // Java field initializers run after the base constructor
    void initFieldsGameStatisticsFactory() {
    this.stringBuffer = StringMaker();
    }

    GameStatisticsFactory() {
        this.initFieldsGameStatisticsFactory();
    }
    

    static GameStatisticsFactory getInstance() {
        return GameStatisticsFactory.instance;
    }
    

    @override
    void add(String string) {
        if (this.stringBuffer.length() > 12000) {
            this.stringBuffer.delete(0, this.stringBuffer.length());
            this.stringBuffer.append("Old Stats Cleared");
        }
        this.stringBuffer.append(string);
    }
    

    @override
    String toString() {
        return StringMaker().append(super.toString()).append(this.stringBuffer.toString()).toString();
    }
}

