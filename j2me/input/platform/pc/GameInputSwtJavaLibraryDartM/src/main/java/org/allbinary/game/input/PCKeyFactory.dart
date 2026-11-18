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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/math/PositionStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonPhoneStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/game/input/PCGameKey.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';

class PCKeyFactory {
    static final PCKeyFactory SINGLETON = PCKeyFactory();
    late PCGameKey UNKNOWN;
    late PCGameKey ENTER;
    late PCGameKey u_A;
    late PCGameKey u_B;
    late PCGameKey u_C;
    late PCGameKey u_D;
    late PCGameKey u_E;
    late PCGameKey u_F;
    late PCGameKey u_G;
    late PCGameKey u_H;
    late PCGameKey u_I;
    late PCGameKey u_J;
    late PCGameKey u_K;
    late PCGameKey u_L;
    late PCGameKey u_M;
    late PCGameKey u_N;
    late PCGameKey u_O;
    late PCGameKey u_P;
    late PCGameKey u_Q;
    late PCGameKey u_R;
    late PCGameKey u_S;
    late PCGameKey u_T;
    late PCGameKey u_U;
    late PCGameKey u_V;
    late PCGameKey u_W;
    late PCGameKey u_X;
    late PCGameKey u_Y;
    late PCGameKey u_Z;
    late PCGameKey a;
    late PCGameKey b;
    late PCGameKey c;
    late PCGameKey d;
    late PCGameKey e;
    late PCGameKey f;
    late PCGameKey g;
    late PCGameKey h;
    late PCGameKey i;
    late PCGameKey j;
    late PCGameKey k;
    late PCGameKey l;
    late PCGameKey m;
    late PCGameKey n;
    late PCGameKey o;
    late PCGameKey p;
    late PCGameKey q;
    late PCGameKey r;
    late PCGameKey s;
    late PCGameKey t;
    late PCGameKey u;
    late PCGameKey v;
    late PCGameKey w;
    late PCGameKey x;
    late PCGameKey y;
    late PCGameKey z;
    late PCGameKey ZERO;
    late PCGameKey ONE;
    late PCGameKey TWO;
    late PCGameKey THREE;
    late PCGameKey FOUR;
    late PCGameKey FIVE;
    late PCGameKey SIX;
    late PCGameKey SEVEN;
    late PCGameKey EIGHT;
    late PCGameKey NINE;
    late PCGameKey DPAD_UP;
    late PCGameKey DPAD_DOWN;
    late PCGameKey DPAD_LEFT;
    late PCGameKey DPAD_RIGHT;
    late PCGameKey DPAD_UP2;
    late PCGameKey DPAD_DOWN2;
    late PCGameKey DPAD_LEFT2;
    late PCGameKey DPAD_RIGHT2;
    late PCGameKey COMMA;
    late PCGameKey SPACE;
    late PCGameKey DEL;
    late PCGameKey STAR;
    late PCGameKey QUESTION;
    late PCGameKey PERIOD;
    late PCGameKey ESCAPE;
    late PCGameKey BACK_SPACE;

    // Java field initializers run after the base constructor
    void initFieldsPCKeyFactory() {
    this.UNKNOWN = PCGameKey(254, "UNKNOWN");
    this.ENTER = PCGameKey(13, "Enter");
    this.u_A = PCGameKey(65, "A");
    this.u_B = PCGameKey(66, "B");
    this.u_C = PCGameKey(67, "C");
    this.u_D = PCGameKey(68, "D");
    this.u_E = PCGameKey(69, "E");
    this.u_F = PCGameKey(70, "F");
    this.u_G = PCGameKey(71, "G");
    this.u_H = PCGameKey(72, "H");
    this.u_I = PCGameKey(73, "I");
    this.u_J = PCGameKey(74, "J");
    this.u_K = PCGameKey(75, "K");
    this.u_L = PCGameKey(76, "L");
    this.u_M = PCGameKey(77, "M");
    this.u_N = PCGameKey(78, "N");
    this.u_O = PCGameKey(79, "O");
    this.u_P = PCGameKey(80, "P");
    this.u_Q = PCGameKey(81, "Q");
    this.u_R = PCGameKey(82, "R");
    this.u_S = PCGameKey(83, "S");
    this.u_T = PCGameKey(84, "T");
    this.u_U = PCGameKey(85, "U");
    this.u_V = PCGameKey(86, "V");
    this.u_W = PCGameKey(87, "W");
    this.u_X = PCGameKey(88, "X");
    this.u_Y = PCGameKey(89, "Y");
    this.u_Z = PCGameKey(90, "Z");
    this.a = PCGameKey(97, "a");
    this.b = PCGameKey(98, "b");
    this.c = PCGameKey(99, "c");
    this.d = PCGameKey(100, "d");
    this.e = PCGameKey(101, "e");
    this.f = PCGameKey(102, "f");
    this.g = PCGameKey(103, "g");
    this.h = PCGameKey(104, "h");
    this.i = PCGameKey(105, "i");
    this.j = PCGameKey(106, "j");
    this.k = PCGameKey(107, "k");
    this.l = PCGameKey(108, "l");
    this.m = PCGameKey(109, "m");
    this.n = PCGameKey(110, "n");
    this.o = PCGameKey(111, "o");
    this.p = PCGameKey(112, "p");
    this.q = PCGameKey(113, "q");
    this.r = PCGameKey(114, "r");
    this.s = PCGameKey(115, "s");
    this.t = PCGameKey(116, "t");
    this.u = PCGameKey(117, "u");
    this.v = PCGameKey(118, "v");
    this.w = PCGameKey(119, "w");
    this.x = PCGameKey(120, PositionStrings.getInstance().X);
    this.y = PCGameKey(121, PositionStrings.getInstance().Y);
    this.z = PCGameKey(122, "z");
    this.ZERO = PCGameKey(48, CommonPhoneStrings.getInstance().ZERO);
    this.ONE = PCGameKey(49, CommonPhoneStrings.getInstance().ONE);
    this.TWO = PCGameKey(50, CommonPhoneStrings.getInstance().TWO);
    this.THREE = PCGameKey(51, CommonPhoneStrings.getInstance().THREE);
    this.FOUR = PCGameKey(52, CommonPhoneStrings.getInstance().FOUR);
    this.FIVE = PCGameKey(53, CommonPhoneStrings.getInstance().FIVE);
    this.SIX = PCGameKey(54, CommonPhoneStrings.getInstance().SIX);
    this.SEVEN = PCGameKey(55, CommonPhoneStrings.getInstance().SEVEN);
    this.EIGHT = PCGameKey(56, CommonPhoneStrings.getInstance().EIGHT);
    this.NINE = PCGameKey(57, CommonPhoneStrings.getInstance().NINE);
    this.DPAD_UP = PCGameKey(38, CommonPhoneStrings.getInstance().UP);
    this.DPAD_DOWN = PCGameKey(40, CommonPhoneStrings.getInstance().DOWN);
    this.DPAD_LEFT = PCGameKey(37, CommonPhoneStrings.getInstance().LEFT);
    this.DPAD_RIGHT = PCGameKey(39, CommonPhoneStrings.getInstance().RIGHT);
    this.DPAD_UP2 = this.DPAD_UP;
    this.DPAD_DOWN2 = this.DPAD_DOWN;
    this.DPAD_LEFT2 = this.DPAD_LEFT;
    this.DPAD_RIGHT2 = this.DPAD_RIGHT;
    this.COMMA = PCGameKey(44, "COMMA");
    this.SPACE = PCGameKey(32, "SPACE");
    this.DEL = PCGameKey(46, "DEL");
    this.STAR = PCGameKey(42, CommonPhoneStrings.getInstance().STAR);
    this.QUESTION = PCGameKey(47, "?");
    this.PERIOD = PCGameKey(46, CommonSeps.getInstance().PERIOD);
    this.ESCAPE = PCGameKey(27, "Esc");
    this.BACK_SPACE = PCGameKey(8, "Backspace");
    }

    PCKeyFactory() {
        this.initFieldsPCKeyFactory();
    }
    

    static PCKeyFactory getInstance() {
        return PCKeyFactory.SINGLETON;
    }
    

    bool isSubmission(Input input) {
        if (identical(input, this.ENTER)) {
            return true;
        }
        return false;
    }
    

    bool isDelete(Input input) {
        if (identical(input, this.DEL)) {
            return true;
        }
        return false;
    }
    

    bool isBackSpace(Input input) {
        if (identical(input, this.BACK_SPACE)) {
            return true;
        }
        return false;
    }
    

    bool isUp(Input input) {
        if (identical(input, this.DPAD_UP) || identical(input, this.DPAD_UP2)) {
            return true;
        }
        return false;
    }
    

    bool isDown(Input input) {
        if (identical(input, this.DPAD_DOWN) || identical(input, this.DPAD_DOWN2)) {
            return true;
        }
        return false;
    }
    

    bool isLeft(Input input) {
        if (identical(input, this.DPAD_LEFT) || identical(input, this.DPAD_LEFT2)) {
            return true;
        }
        return false;
    }
    

    bool isRight(Input input) {
        if (identical(input, this.DPAD_RIGHT) || identical(input, this.DPAD_RIGHT2)) {
            return true;
        }
        return false;
    }
    

    bool isEnter(Input input) {
        if (identical(input, this.ENTER)) {
            return true;
        }
        return false;
    }
}

