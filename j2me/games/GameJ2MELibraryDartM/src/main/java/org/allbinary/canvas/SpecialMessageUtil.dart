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
// package org.allbinary.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/system/Memory.dart';
import 'package:allbinary/org/allbinary/canvas/GameStatisticsFactory.dart';

class SpecialMessageUtil {
    static final SpecialMessageUtil SINGLETON = SpecialMessageUtil();
    

    static SpecialMessageUtil getInstance() {
        return SpecialMessageUtil.SINGLETON;
    }
    

    String get() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(Memory.getInfo());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(GameStatisticsFactory.getInstance().toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(" Option: ");
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT)) {
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT.getName());
        } else {
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_MINIMUM.getName());
        }
        return stringBuffer.toString();
    }
}

