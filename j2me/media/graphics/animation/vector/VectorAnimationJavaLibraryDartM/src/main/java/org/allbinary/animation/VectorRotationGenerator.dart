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
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/pipeline/BasicGraphicsPipeline.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListS.dart';
import 'package:allbinary/org/allbinary/vector/VectorInfo.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimationUtil.dart';

class VectorRotationGenerator {
    static final VectorRotationGenerator instance = VectorRotationGenerator();
    late LogUtil logUtil;
    late VectorAnimationUtil vectorAnimationUtil;
    late AngleFactory angleFactory;

    // Java field initializers run after the base constructor
    void initFieldsVectorRotationGenerator() {
    this.logUtil = LogUtil.getInstance();
    this.vectorAnimationUtil = VectorAnimationUtil.getInstance();
    this.angleFactory = AngleFactory.getInstance();
    }
    

    static VectorRotationGenerator getInstance() {
        return VectorRotationGenerator.instance;
    }
    

    VectorRotationGenerator() {
        this.initFieldsVectorRotationGenerator();
    }
    

    List<List<List<int>?>?> getInstance1(VectorInfo vectorRotationInfo) {
        return this.getInstanceFrames(vectorRotationInfo.getWidth(), vectorRotationInfo.getHeight(), vectorRotationInfo.getPoints(), vectorRotationInfo.getTotalFrames());
    }
    

    List<List<List<int>?>?> getInstanceFrames(int width, int height, List<List<int>?> points, int frames) {
        try {
            int totalAngle = this.angleFactory.TOTAL_ANGLE;
            int angleIncrement = totalAngle ~/ frames;
            BasicArrayList pointsBasicArrayList = BasicArrayListS(totalAngle ~/ angleIncrement);
            BasicArrayList pointBasicArrayList = BasicArrayListS(points.length);
            PointFactory pointFactory = PointFactory.getInstance();
            int size = points.length;
            for (int index = 0; index < size; index++) {
                pointBasicArrayList.add(pointFactory.createXY(points[index]![0], points[index]![1]));
            }
            int index = 0;
            while (index < totalAngle) {
                pointsBasicArrayList.add(this.getListAtAngle(width, height, pointBasicArrayList, this.angleFactory.getAt(index)));
                index += angleIncrement;
            }
            List<List<List<int>?>?> newPoints = this.vectorAnimationUtil.toAnimationArrayFromListOfPointListWithPointsPerFrame(pointsBasicArrayList, pointBasicArrayList.size());
            return newPoints;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            return NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
            }
        }
    }
    

    BasicArrayList getListAtAngle(int width, int height, BasicArrayList pointBasicArrayList, Angle angle) {
        BasicGraphicsPipeline graphicsPipe = BasicGraphicsPipeline(pointBasicArrayList);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(-(width >> 1), -(height >> 1));
        graphicsPipe.rotateToAngle(angle);
        graphicsPipe.translate((width >> 1), (height >> 1));
        return graphicsPipe.getMatrix();
    }
}

