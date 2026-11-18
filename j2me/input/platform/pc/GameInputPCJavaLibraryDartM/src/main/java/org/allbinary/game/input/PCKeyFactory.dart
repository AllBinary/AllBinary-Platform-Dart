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
import 'package:allbinary/org/allbinary/game/input/ABKeyEventWrapper.dart';
import 'package:allbinary/org/allbinary/game/input/PCGameKey.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';

class PCKeyFactory {
    static final PCKeyFactory SINGLETON = PCKeyFactory();
    late ABKeyEventWrapper keyEventWrapper;
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
    this.keyEventWrapper = ABKeyEventWrapper.getInstance();
    this.UNKNOWN = PCGameKey(this.keyEventWrapper.VK_UNDEFINED, "UNKNOWN");
    this.ENTER = PCGameKey(5, "Enter");
    this.u_A = PCGameKey(this.keyEventWrapper.VK_A, "A");
    this.u_B = PCGameKey(this.keyEventWrapper.VK_B, "B");
    this.u_C = PCGameKey(this.keyEventWrapper.VK_C, "C");
    this.u_D = PCGameKey(this.keyEventWrapper.VK_D, "D");
    this.u_E = PCGameKey(this.keyEventWrapper.VK_E, "E");
    this.u_F = PCGameKey(this.keyEventWrapper.VK_F, "F");
    this.u_G = PCGameKey(this.keyEventWrapper.VK_G, "G");
    this.u_H = PCGameKey(this.keyEventWrapper.VK_H, "H");
    this.u_I = PCGameKey(this.keyEventWrapper.VK_I, "I");
    this.u_J = PCGameKey(this.keyEventWrapper.VK_J, "J");
    this.u_K = PCGameKey(this.keyEventWrapper.VK_K, "K");
    this.u_L = PCGameKey(this.keyEventWrapper.VK_L, "L");
    this.u_M = PCGameKey(this.keyEventWrapper.VK_M, "M");
    this.u_N = PCGameKey(this.keyEventWrapper.VK_N, "N");
    this.u_O = PCGameKey(this.keyEventWrapper.VK_O, "O");
    this.u_P = PCGameKey(this.keyEventWrapper.VK_P, "P");
    this.u_Q = PCGameKey(this.keyEventWrapper.VK_Q, "Q");
    this.u_R = PCGameKey(this.keyEventWrapper.VK_R, "R");
    this.u_S = PCGameKey(this.keyEventWrapper.VK_S, "S");
    this.u_T = PCGameKey(this.keyEventWrapper.VK_T, "T");
    this.u_U = PCGameKey(this.keyEventWrapper.VK_U, "U");
    this.u_V = PCGameKey(this.keyEventWrapper.VK_V, "V");
    this.u_W = PCGameKey(this.keyEventWrapper.VK_W, "W");
    this.u_X = PCGameKey(this.keyEventWrapper.VK_X, "X");
    this.u_Y = PCGameKey(this.keyEventWrapper.VK_Y, "Y");
    this.u_Z = PCGameKey(this.keyEventWrapper.VK_Z, "Z");
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
    this.ZERO = PCGameKey(this.keyEventWrapper.VK_0, CommonPhoneStrings.getInstance().ZERO);
    this.ONE = PCGameKey(this.keyEventWrapper.VK_1, CommonPhoneStrings.getInstance().ONE);
    this.TWO = PCGameKey(this.keyEventWrapper.VK_2, CommonPhoneStrings.getInstance().TWO);
    this.THREE = PCGameKey(this.keyEventWrapper.VK_3, CommonPhoneStrings.getInstance().THREE);
    this.FOUR = PCGameKey(this.keyEventWrapper.VK_4, CommonPhoneStrings.getInstance().FOUR);
    this.FIVE = PCGameKey(this.keyEventWrapper.VK_5, CommonPhoneStrings.getInstance().FIVE);
    this.SIX = PCGameKey(this.keyEventWrapper.VK_6, CommonPhoneStrings.getInstance().SIX);
    this.SEVEN = PCGameKey(this.keyEventWrapper.VK_7, CommonPhoneStrings.getInstance().SEVEN);
    this.EIGHT = PCGameKey(this.keyEventWrapper.VK_8, CommonPhoneStrings.getInstance().EIGHT);
    this.NINE = PCGameKey(this.keyEventWrapper.VK_9, CommonPhoneStrings.getInstance().NINE);
    this.DPAD_UP = PCGameKey(this.keyEventWrapper.VK_UP, CommonPhoneStrings.getInstance().UP);
    this.DPAD_DOWN = PCGameKey(this.keyEventWrapper.VK_DOWN, CommonPhoneStrings.getInstance().DOWN);
    this.DPAD_LEFT = PCGameKey(this.keyEventWrapper.VK_LEFT, CommonPhoneStrings.getInstance().LEFT);
    this.DPAD_RIGHT = PCGameKey(this.keyEventWrapper.VK_RIGHT, CommonPhoneStrings.getInstance().RIGHT);
    this.DPAD_UP2 = this.DPAD_UP;
    this.DPAD_DOWN2 = this.DPAD_DOWN;
    this.DPAD_LEFT2 = this.DPAD_LEFT;
    this.DPAD_RIGHT2 = this.DPAD_RIGHT;
    this.COMMA = PCGameKey(this.keyEventWrapper.VK_COMMA, "COMMA");
    this.SPACE = PCGameKey(this.keyEventWrapper.VK_SPACE, "SPACE");
    this.DEL = PCGameKey(this.keyEventWrapper.VK_DELETE, "DEL");
    this.STAR = PCGameKey(42, CommonPhoneStrings.getInstance().STAR);
    this.QUESTION = PCGameKey(47, "?");
    this.PERIOD = PCGameKey(this.keyEventWrapper.VK_PERIOD, CommonSeps.getInstance().PERIOD);
    this.ESCAPE = PCGameKey(this.keyEventWrapper.VK_ESCAPE, "Esc");
    this.BACK_SPACE = PCGameKey(this.keyEventWrapper.VK_BACK_SPACE, "Backspace");
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

