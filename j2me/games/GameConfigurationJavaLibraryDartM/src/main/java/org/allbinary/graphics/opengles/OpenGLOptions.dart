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
// package org.allbinary.graphics.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';

class OpenGLOptions {
    

    void init() {
        OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (Features.getInstance().isFeature(openGLFeatureFactory.OPENGL_OPTIONS)) {
            BasicArrayList openGLMultipleList = BasicArrayListD();
            openGLMultipleList.add(openGLFeatureFactory.OPENGL);
            GameFeatureChoiceGroups.getMultipleInstance().add("OpenGL (Complete Restart)", openGLMultipleList);
            BasicArrayList openGLVersionSelectorMultipleList = BasicArrayListD();
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_AUTO_SELECT);
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_MINIMUM);
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Version Selector", openGLVersionSelectorMultipleList);
            BasicArrayList openGLImageColorMultipleList = BasicArrayListD();
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888);
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Image Color RGBA", openGLImageColorMultipleList);
        }
    }
}

