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
// package org.allbinary.game.ag.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class InputProbability {
    static int INPUT_PROBABILITY = SmallIntegerSingletonFactory.getInstance().getAt(0);
    late List<List<int?>?> likelyhoodIntegerArray;
    late List<int?> repeatLikelyhoodIntegerArray;
    int max = 0;
    late TimeDelayHelper timeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsInputProbability() {
    
    
    
    
    }
    

    InputProbability(List<List<int?>?> likelyhoodIntegerArray, List<int?> repeatLikelyhoodIntegerArray, int max, TimeDelayHelper timeDelayHelper) {
        this.initFieldsInputProbability();
        this.likelyhoodIntegerArray = likelyhoodIntegerArray;
        this.repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray;
        this.max = max;
        this.timeDelayHelper = timeDelayHelper;
    }
    

    List<List<int?>?> getLikelyhoodIntegerArray() {
        return this.likelyhoodIntegerArray;
    }
    

    List<int?> getRepeatLikelyhoodIntegerArray() {
        return this.repeatLikelyhoodIntegerArray;
    }
    

    int getMax() {
        return this.max;
    }
    

    TimeDelayHelper getTimeDelayHelper() {
        return this.timeDelayHelper;
    }
    

    ABHashtable toHashtable() {
        ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        hashtable.put(InputProbability.INPUT_PROBABILITY, this);
        return hashtable;
    }
}

