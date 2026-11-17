// Generated Code Do Not Modify
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.time

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/ThreadObjectUtil.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';

class StupidTimer {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late NullUtil nullUtil;
    late ThreadObjectUtil threadObjectUtil;

    // Java field initializers run after the base constructor
    void initFieldsStupidTimer() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.nullUtil = NullUtil.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    }

    StupidTimer() {
        this.initFieldsStupidTimer();
    }
    

    bool visitBool(Visitor visitorInterface) {
        final bool result = (visitorInterface.visit(this.nullUtil.NULL_OBJECT) as bool);
        final bool result2 = result;
        return result2;
    }
    

    void visit(Visitor visitorInterface, TimeDelayHelper timeDelayHelper) {
        bool tookTooLong = false;
        final String WAITING_FOR = "Waiting for: ";
        PreLogUtil.put(StringMaker().append(WAITING_FOR).append(StringUtil.getInstance().toString1(visitorInterface)).toString(), this, this.commonStrings.VISIT);
        int index = 0;
        while (this.visitBool(visitorInterface)) {
            if ((index).remainder(10) == 0) {
                PreLogUtil.put(StringMaker().append(WAITING_FOR).appendint(index).toString(), this, this.commonStrings.VISIT);
            }
            index++;
            {
                this.threadObjectUtil.waitObjectFor(this, 1800);
            }
            if (timeDelayHelper.isTimeTNT()) {
                tookTooLong = true;
                break;
            }
        }
        if (tookTooLong) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.VISIT, JException('Exception', StringMaker().append("Took Too Long: ").append(StringUtil.getInstance().toString1(visitorInterface)).toString()));
        } else {
            PreLogUtil.put(timeDelayHelper.toString(), this, this.commonStrings.VISIT);
        }
    }
    

    void stopWaiting() {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
}

