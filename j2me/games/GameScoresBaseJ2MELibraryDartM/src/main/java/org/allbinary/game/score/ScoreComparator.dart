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
// package org.allbinary.game.score

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/ByteArrayInputStream.dart';
import 'package:allbinary/java/io/DataInputStream.dart';
import 'package:allbinary/javax/microedition/rms/RecordComparator.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class ScoreComparator implements RecordComparator {
    late LogUtil logUtil;
    bool isHighestBest = false;

    // Java field initializers run after the base constructor
    void initFieldsScoreComparator() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    ScoreComparator(bool isHighestBest) {
        this.initFieldsScoreComparator();
        this.isHighestBest = isHighestBest;
    }
    

    int getBestScore() {
        return (this.isHighestBest ? Long.MAX_VALUE : 0);
    }
    

    @override
    int compare(List<int> recordOne, List<int> recordTwo) {
        final ByteArrayInputStream byteArrayInputStreamOne = ByteArrayInputStream(recordOne);
        final DataInputStream inputStreamOne = DataInputStream(byteArrayInputStreamOne);
        final ByteArrayInputStream byteArrayInputStreamTwo = ByteArrayInputStream(recordTwo);
        final DataInputStream inputStreamTwo = DataInputStream(byteArrayInputStreamTwo);
        int scoreOne = 0;
        int scoreTwo = 0;
        try {
            inputStreamOne.readUTF();
            inputStreamTwo.readUTF();
            scoreOne = inputStreamOne.readLong();
            scoreTwo = inputStreamTwo.readLong();
        } catch (jcaught) {
            if (jIsException(jcaught, 'EOFException')) {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
            } else if (jIsException(jcaught, 'IOException')) {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
            } else {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "compare", e);
            }
        }
        if (this.isHighestBest) {
            return this.getHighTooLow(scoreOne, scoreTwo);
        } else {
            return this.getLowTooHigh(scoreOne, scoreTwo);
        }
    }
    

    int getHighTooLow(int scoreOne, int scoreTwo) {
        if (scoreOne > scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne < scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
    

    int getLowTooHigh(int scoreOne, int scoreTwo) {
        if (scoreOne < scoreTwo) {
            return RecordComparator.PRECEDES;
        } else if (scoreOne > scoreTwo) {
            return RecordComparator.FOLLOWS;
        } else {
            return RecordComparator.EQUIVALENT;
        }
    }
}

