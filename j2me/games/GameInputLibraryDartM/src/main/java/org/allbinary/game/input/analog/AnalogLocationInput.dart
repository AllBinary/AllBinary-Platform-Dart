// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.input.analog

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/CustomGPoint.dart';

class AnalogLocationInput {
    static final AnalogLocationInput NULL_ANALOG_LOCATION_INPUT = AnalogLocationInput(-1);
    int playerId = 0;
    late CustomGPoint customGPoint;
    int rz = 0;
    int rightTrigger = 0;
    int leftTrigger = 0;

    // Java field initializers run after the base constructor
    void initFieldsAnalogLocationInput() {
    
    
    this.rz = 0;
    this.rightTrigger = 0;
    this.leftTrigger = 0;
    }
    

    AnalogLocationInput(int playerId) {
        this.initFieldsAnalogLocationInput();
        this.playerId = playerId;
        this.customGPoint = CustomGPoint(0, 0, 0);
    }
    

    int getPlayerId() {
        return this.playerId;
    }
    

    CustomGPoint getCustomGPoint() {
        return this.customGPoint;
    }
    

    int getRz() {
        return this.rz;
    }
    

    void setRz(int rz) {
        this.rz = rz;
    }
    

    int getRightTrigger() {
        return this.rightTrigger;
    }
    

    void setRightTrigger(int rightTrigger) {
        this.rightTrigger = rightTrigger;
    }
    

    int getLeftTrigger() {
        return this.leftTrigger;
    }
    

    void setLeftTrigger(int leftTrigger) {
        this.leftTrigger = leftTrigger;
    }
}

