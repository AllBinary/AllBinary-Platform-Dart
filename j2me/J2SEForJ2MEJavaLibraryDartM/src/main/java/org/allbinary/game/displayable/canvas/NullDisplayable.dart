// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/canvas/BaseGameStatistics.dart';
import 'package:allbinary/org/allbinary/canvas/GameStatisticsFactory.dart';

//J2SEForJ2ME
class NullDisplayable extends Canvas {
    static final NullDisplayable SINGLETON = NullDisplayable();
    late BaseGameStatistics baseGameStatistics;

    // Java field initializers run after the base constructor
    void initFieldsNullDisplayable() {
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
    }
    

    static NullDisplayable getInstance() {
        return NullDisplayable.SINGLETON;
    }
    

    NullDisplayable() {
        this.initFieldsNullDisplayable();
    }
    

    @override
    void paint(Graphics graphics) {
        this.baseGameStatistics.nextRefresh();
    }
}

