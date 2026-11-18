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
// package org.allbinary.game.ag.life

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/ag/life/LifeInterface.dart';

class Life implements LifeInterface {
    static final Life NO_LIFE = Life.createLife();
    int lives = 0;
    int startLives = 0;
    int maxlives = 0;

    // Java field initializers run after the base constructor
    void initFieldsLife() {
    
    
    
    }
    

    static Life createLife() {
        try {
            return Life((0).toSigned(16), (0).toSigned(16));
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw JException('RuntimeException', '');
            }
        }
    }
    

    Life(int lives, int maxlives) {
        this.initFieldsLife();
        this.maxlives = maxlives;
        if (lives > this.maxlives) {
            throw JException('Exception', "To Many Lives");
        }
        this.lives = lives;
        this.startLives = lives;
    }
    

    @override
    int get() {
        return this.lives;
    }
    

    @override
    void set(int lives) {
        this.lives = lives;
    }
    

    @override
    void reset() {
        this.lives = this.startLives;
    }
    

    @override
    void add(int lives) {
        if (!this.reachedLimit()) {
            if (this.lives + lives <= this.getMaxlives()) {
                this.lives = ((this.lives + lives)).toSigned(16);
            } else {
                this.lives = this.getMaxlives();
            }
        }
    }
    

    @override
    bool isAlive() {
        if (this.lives <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    @override
    int getMaxlives() {
        return this.maxlives;
    }
    

    bool reachedLimit() {
        if (this.lives > this.maxlives || this.lives < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    void deaths(int lives) {
        if (!this.reachedLimit()) {
            if (this.lives - lives >= 0) {
                this.lives = ((this.lives - lives)).toSigned(16);
            } else {
                this.lives = 0;
            }
        }
    }
    

    int getStartLives() {
        return this.startLives;
    }
    

    void setStartLives(int startLives) {
        this.startLives = startLives;
    }
}

