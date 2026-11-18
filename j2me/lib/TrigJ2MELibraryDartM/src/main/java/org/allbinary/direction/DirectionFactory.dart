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
// package org.allbinary.direction

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonPhoneStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';

class DirectionFactory {
    static final DirectionFactory instance = DirectionFactory();
    late String NAME;
    late Direction LEFT;
    late Direction RIGHT;
    late Direction DOWN;
    late Direction UP;
    late Direction UP_LEFT;
    late Direction UP_RIGHT;
    late Direction DOWN_LEFT;
    late Direction DOWN_RIGHT;
    late Direction NOT_BORDERED_WITH;
    late Direction NO_DIRECTION;
    late Direction TOP;
    late Direction BOTTOM;
    late Direction ALL_DIRECTION;

    // Java field initializers run after the base constructor
    void initFieldsDirectionFactory() {
    this.NAME = "DIRECTION";
    this.LEFT = Direction(CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1);
    this.RIGHT = Direction(CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0);
    this.DOWN = Direction(CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0);
    this.UP = Direction(CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0);
    
    
    
    
    this.NOT_BORDERED_WITH = Direction("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0);
    this.NO_DIRECTION = Direction("NO_DIRECTION", "NO_DIRECTION", 9, 0);
    this.TOP = Direction("TOP", "TOP", 10, 0);
    this.BOTTOM = Direction("BOTTOM", "BOTTOM", 11, 0);
    this.ALL_DIRECTION = Direction("ALL_DIRECTION", "ALL_DIRECTION", 12, 0);
    }
    

    static DirectionFactory getInstance() {
        return DirectionFactory.instance;
    }
    

    DirectionFactory() {
        this.initFieldsDirectionFactory();
        StringMaker stringBuffer = StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        this.UP_LEFT = Direction("UP LEFT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 4, 0);
        stringBuffer.delete(0, stringBuffer.length());
        this.UP_RIGHT = Direction("UP RIGHT", stringBuffer.append(this.UP.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 5, 0);
        stringBuffer.delete(0, stringBuffer.length());
        this.DOWN_LEFT = Direction("DOWN LEFT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.LEFT.getOtherName()).toString(), 6, 0);
        stringBuffer.delete(0, stringBuffer.length());
        this.DOWN_RIGHT = Direction("DOWN RIGHT", stringBuffer.append(this.DOWN.getOtherName()).append(commonSeps.SPACE).append(this.RIGHT.getOtherName()).toString(), 7, 0);
    }
}

