// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game

import 'package:allbinary/allbinary_java.dart';

class BasicGameInfoFactory {
    static final BasicGameInfoFactory SINGLETON = BasicGameInfoFactory();
    int currentReleaseIndex = 0;
    int currentDestroyIndex = 0;
    int total = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicGameInfoFactory() {
    this.currentReleaseIndex = 0;
    this.currentDestroyIndex = 0;
    this.total = 0;
    }
    

    static BasicGameInfoFactory getInstance() {
        return BasicGameInfoFactory.SINGLETON;
    }
    

    BasicGameInfoFactory() {
        this.initFieldsBasicGameInfoFactory();
    }
    

    void init(int total) {
        this.currentReleaseIndex = 0;
        this.currentDestroyIndex = 0;
        this.total = total;
    }
    

    bool isPeaked() {
        if (this.currentDestroyIndex >= this.total) {
            return true;
        } else {
            return false;
        }
    }
    

    int howManyLeft() {
        return this.total - this.currentDestroyIndex;
    }
}

