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
// package org.allbinary.time

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Calendar.dart';

class TimeUtil {
    static final TimeUtil instance = TimeUtil();
    static final Calendar calendar = Calendar.getInstance();
    

    static TimeUtil getInstance() {
        return TimeUtil.instance;
    }
    

    void setCalendar(Calendar calendar, String yearString, String monthString, String dayString, String hourString) {
        int year = (int.parse(yearString)).toInt();
        int month = (int.parse(monthString)).toInt();
        int day = (int.parse(dayString)).toInt();
        int hour = (int.parse(hourString)).toInt();
        calendar.set(year, month, day, hour, 0);
    }
    

    void setCalendarWithTime(Calendar calendar, String yearString, String monthString, String dayString, String hourString, String minuteString, String secondString) {
        int year = (int.parse(yearString)).toInt();
        int month = (int.parse(monthString)).toInt();
        int day = (int.parse(dayString)).toInt();
        int hour = (int.parse(hourString)).toInt();
        int minute = (int.parse(minuteString)).toInt();
        int second = (int.parse(secondString)).toInt();
        calendar.set(year, month, day, hour, minute, second);
    }
    

    void setExpirationCalendar(Calendar calendar, String yearsString, String monthsString, String daysString, String hoursString, String minutesString, String secondsString) {
        int year = calendar.get(Calendar.YEAR) + (int.parse(yearsString)).toInt();
        int month = calendar.get(Calendar.MONTH) + (int.parse(monthsString)).toInt();
        int day = calendar.get(Calendar.DAY_OF_MONTH) + (int.parse(daysString)).toInt();
        int hour = calendar.get(Calendar.HOUR) + (int.parse(hoursString)).toInt();
        int minute = calendar.get(Calendar.MINUTE) + (int.parse(minutesString)).toInt();
        int second = calendar.get(Calendar.SECOND) + (int.parse(secondsString)).toInt();
        calendar.set(year, month, day, hour, minute, second);
    }
    

    int getTotalTime(String yearString, String monthString, String dayString, String hourString, String minuteString, String secondString) {
        int time = TimeUtil.calendar.getTimeInMillis();
        this.setExpirationCalendar(TimeUtil.calendar, yearString, monthString, dayString, hourString, minuteString, secondString);
        int timeDelta = TimeUtil.calendar.getTimeInMillis();
        return timeDelta - time;
    }
}

