// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.input.analog

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/analog/AnalogLocationInput.dart';

class AnalogLocationInputFactory {
    static final AnalogLocationInputFactory instance = AnalogLocationInputFactory();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsAnalogLocationInputFactory() {
    this.list = BasicArrayListD();
    }
    

    static AnalogLocationInputFactory getInstance() {
        return AnalogLocationInputFactory.instance;
    }
    

    AnalogLocationInputFactory() {
        this.initFieldsAnalogLocationInputFactory();
    }
    

    void addPlayer(int playerInputId) {
        AnalogLocationInput analogLocationInput = AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT;
        if (playerInputId < this.list.size()) {
            analogLocationInput = (this.list.get(playerInputId) as AnalogLocationInput);
        }
        if (analogLocationInput == AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT) {
            analogLocationInput = AnalogLocationInput(playerInputId);
            this.list.add(analogLocationInput);
        }
    }
    

    AnalogLocationInput getInstanceForPlayer(int playerInputId) {
        return (this.list.get(playerInputId) as AnalogLocationInput);
    }
    

    BasicArrayList getList() {
        return this.list;
    }
}

