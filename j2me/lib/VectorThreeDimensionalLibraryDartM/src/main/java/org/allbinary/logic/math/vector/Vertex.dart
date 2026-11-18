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
// package org.allbinary.logic.math.vector

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/math/PositionStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class Vertex {
    late BasicDecimal x;
    late BasicDecimal y;
    late BasicDecimal z;

    // Java field initializers run after the base constructor
    void initFieldsVertex() {
    this.x = BasicDecimal(0);
    this.y = BasicDecimal(0);
    this.z = BasicDecimal(0);
    }
    

    Vertex() {
        this.initFieldsVertex();
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        PositionStrings positionStrings = PositionStrings.getInstance();
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.append(this.x.toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.append(this.y.toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.append(this.z.toString());
        return stringBuffer.toString();
    }
}

