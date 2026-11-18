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
import 'package:allbinary/javax/microedition/rms/RecordEnumeration.dart';
import 'package:allbinary/javax/microedition/rms/RecordStore.dart';
import 'package:allbinary/javax/microedition/rms/RecordStoreException.dart';
import 'package:allbinary/javax/microedition/rms/RecordStoreNotFoundException.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordComparator.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordFilter.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/NullRecordStore.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/persistance/PlatformRecordIdUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScore.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreComparator.dart';

class RecordStoreHighScores extends HighScores {
    static final ABHashtable hashTable = StdUtil.getInstance().createHashtable();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late PlatformRecordIdUtil platformRecordIdUtil;
    late TsUtil tsUtil;
    late String RECORD_ID;
    int MAXHIGHSCORES = 0;
    late GameInfo gameInfo;
    late AbeClientInformationInterface abeClientInformation;
    late RecordComparator recordComparatorInterface;

    // Java field initializers run after the base constructor
    void initFieldsRecordStoreHighScores() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.platformRecordIdUtil = PlatformRecordIdUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.RECORD_ID = "_HS";
    this.MAXHIGHSCORES = 100;
    
    
    
    }
    

    RecordStoreHighScores(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, String name, String heading, String columnTwoHeading, RecordComparator recordComparatorInterface) : super(name, heading, columnTwoHeading) {
        this.initFieldsRecordStoreHighScores();
        
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
        this.recordComparatorInterface = recordComparatorInterface;
        this.load();
    }
    

    static HighScores getInstance6(AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, String highScoreName, String heading, String columnTwoHeading, RecordComparator recordComparatorInterface) {
        final Object highScoresCanBeNull = RecordStoreHighScores.hashTable.get((highScoreName as Object));
        if (highScoresCanBeNull == null) {
            final HighScores highScores = RecordStoreHighScores(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
            RecordStoreHighScores.hashTable.put(highScores.getName(), highScores);
            return highScores;
        }
        return (highScoresCanBeNull as HighScores);
    }
    

    String getRecordId(AbeClientInformationInterface abeClientInformation) {
        return this.platformRecordIdUtil.getRecordId(abeClientInformation, StringMaker().append(CommonSeps.getInstance().UNDERSCORE).append(this.getName()).append(this.RECORD_ID).toString());
    }
    

    @override
    void addHighScore(HighScore newHighScore) {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            this.logUtil.putF(StringMaker().append("Adding HighScore: ").appendlong(newHighScore.getScore()).toString(), this, this.commonStrings.ADD);
            if (this.isTooManyHighScores()) {
                this.logUtil.putF("Removing Lowest Score", this, this.commonStrings.ADD);
                this.removeLowestHighScore();
            }
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            final List<int> highScoreBytes = newHighScore.getAsBytes();
            final int recordId = recordStore.addRecord(highScoreBytes, 0, highScoreBytes.length);
            this.load();
        } catch (jcaught) {
            if (jcaught is RecordStoreException) {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
            } else if (jIsException(jcaught, 'IOException')) {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
            } else {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
            }
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.ADD);
                    recordStore.closeRecordStore();
                }
            } catch (jcaught) {
                if (jcaught is RecordStoreException) {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
                } else {
                    rethrow;
                }
            }
        }
    }
    

    void removeLowestHighScore() {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            final RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            final ScoreComparator scoreComparator = ((this.recordComparatorInterface as ScoreComparator));
            HighScore bestHighScore = HighScore(-1, "none", GameInfo.NONE, scoreComparator.getBestScore());
            late List<int> recordAsBytes;
            late ByteArrayInputStream byteArrayInputStream;
            late DataInputStream inputStream;
            while (recordEnum.hasNextElement()) {
                final int id = recordEnum.nextRecordId();
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes);
                    inputStream = DataInputStream(byteArrayInputStream);
                    final String name = inputStream.readUTF();
                    final int nextScore = inputStream.readLong();
                    final HighScore nextCurrentHighScore = HighScore(id, name, GameInfo.NONE, nextScore);
                    if (this.recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparator.FOLLOWS) {
                        bestHighScore = nextCurrentHighScore;
                    }
                }
            }
            if (bestHighScore.getId() != -1) {
                this.logUtil.putF(StringMaker().append("Removing Lowest HighScore: ").appendlong(bestHighScore.getScore()).toString(), this, this.commonStrings.LOAD);
                recordStore.deleteRecord(bestHighScore.getId());
            }
        } catch (jcaught) {
            if (jcaught is RecordStoreException) {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e);
            } else {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e);
            }
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, "removeLowestHighScore");
                    recordStore.closeRecordStore();
                }
            } catch (jcaught) {
                if (jcaught is RecordStoreException) {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "removeLowestHighScore", e);
                } else {
                    rethrow;
                }
            }
        }
    }
    

    void load() {
        RecordStore recordStore = NullRecordStore.NULL_RECORD_STORE;
        try {
            recordStore = RecordStore.openRecordStore(this.getRecordId(this.abeClientInformation), true);
            this.setList(BasicArrayListD());
            final RecordEnumeration recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true);
            late List<int> recordAsBytes;
            late ByteArrayInputStream byteArrayInputStream;
            late DataInputStream inputStream;
            while (recordEnum.hasNextElement()) {
                final int id = recordEnum.nextRecordId();
                recordAsBytes = this.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes != null) {
                    byteArrayInputStream = ByteArrayInputStream(recordAsBytes);
                    inputStream = DataInputStream(byteArrayInputStream);
                    try {
                        final String name = inputStream.readUTF();
                        final int score = inputStream.readLong();
                        final HighScore newHighScore = HighScore(id, name, GameInfo.NONE, score);
                        final BasicArrayList list = this.getList();
                        int size = list.size();
                        int lastIndex = size;
                        for (int index = 0; index < size; index++) {
                            final HighScore highScore = (list.objectArray[index]! as HighScore);
                            if (this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.PRECEDES) {
                                lastIndex = index;
                                break;
                            }
                        }
                        list.addAt(lastIndex, newHighScore);
                    } catch (jcaught) {
                        if (jIsException(jcaught, 'EOFException')) {
                            final dynamic e = jcaught;
                        this.logUtil.put("EOF", this, this.commonStrings.LOAD, e);
                        throw e;
                        } else {
                            rethrow;
                        }
                    }
                }
            }
        } catch (jcaught) {
            if (jcaught is RecordStoreNotFoundException) {
                final dynamic e = jcaught;
            this.logUtil.put("No High Scores", this, this.commonStrings.LOAD, e);
            } else if (jcaught is RecordStoreException) {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e);
            } else if (jIsException(jcaught, 'IOException')) {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e);
            } else {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.UNKNOWN, this, this.commonStrings.LOAD, e);
            }
        } finally {
            try {
                if (recordStore != null) {
                    PreLogUtil.put("Closing RecordStore", this, this.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                }
            } catch (jcaught) {
                if (jcaught is RecordStoreException) {
                    final dynamic e = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.LOAD, e);
                } else {
                    rethrow;
                }
            }
        }
    }
    

    bool isTooManyHighScores() {
        if (this.getList() != null && this.getList().size() < this.MAXHIGHSCORES) {
            return false;
        } else {
            this.logUtil.putF(StringMaker().append("HighScores RecordStore Max Reached: ").appendint(this.MAXHIGHSCORES).toString(), this, "isTooManyHighScores");
            return true;
        }
    }
    

    @override
    bool isBestScore(HighScore newHighScore) {
        try {
            if (!this.isTooManyHighScores()) {
                this.logUtil.putF("Slot Available for a High Score", this, "isBestScore");
                return true;
            } else {
                final BasicArrayList list = this.getList();
                final int size = list.size();
                for (int index = 0; index < size; index++) {
                    final HighScore highScore = (list.objectArray[index]! as HighScore);
                    if (this.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.FOLLOWS) {
                        this.logUtil.putF("Obtained a High Score", this, "isBestScore");
                        return true;
                    }
                }
            }
            this.logUtil.putF("Not a High Score", this, "isBestScore");
            return false;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
            throw e;
            }
        }
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(super.toString());
        final BasicArrayList list = this.getList();
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            final HighScore highScore = (list.objectArray[index]! as HighScore);
            stringBuffer.append(highScore.getScoreString());
            stringBuffer.append(CommonSeps.getInstance().COMMA_SEP);
        }
        return stringBuffer.toString();
    }
}

