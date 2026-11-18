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
// package org.allbinary.game.resource

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/resource/FeaturedResourceFactory.dart';
import 'package:allbinary/org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.dart';

class FeatureResourceInitializationUtil {
    static final FeatureResourceInitializationUtil instance = FeatureResourceInitializationUtil();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsFeatureResourceInitializationUtil() {
    this.logUtil = LogUtil.getInstance();
    }

    FeatureResourceInitializationUtil() {
        this.initFieldsFeatureResourceInitializationUtil();
    }
    

    static FeatureResourceInitializationUtil getInstance() {
        return FeatureResourceInitializationUtil.instance;
    }
    

    void init(int level) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(commonStrings.START, this, commonStrings.INIT);
        FeaturedResourceFactory featuredResourceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredResourceFactory.init(level);
        FeaturedResourceRelativeRelationshipFactory.getInstance().init(level);
    }
}

