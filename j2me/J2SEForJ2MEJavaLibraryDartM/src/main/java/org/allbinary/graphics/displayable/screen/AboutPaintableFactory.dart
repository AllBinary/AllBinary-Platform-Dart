/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
// package org.allbinary.graphics.displayable.screen

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/paint/AboutPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class AboutPaintableFactory {
    static final AboutPaintableFactory instance = AboutPaintableFactory();
    late List<Paintable?> paintableArray;

    // Java field initializers run after the base constructor
    void initFieldsAboutPaintableFactory() {
    this.paintableArray = <Paintable?>[NullPaintable.getInstance()];
    }
    

    static AboutPaintableFactory getInstance() {
        return AboutPaintableFactory.instance;
    }
    

    AboutPaintableFactory() {
        this.initFieldsAboutPaintableFactory();
        final List<String?> INFO = <String?>["Built with the", "AllBinary Platform", StringUtil.getInstance().EMPTY_STRING, "Comments or Questions:", "support@allbinary.com"];
        final List<String?> DEVELOPERS = <String?>["Developed By:", "Travis Berthelot"];
        this.paintableArray = AboutPaintable.getInstance2(INFO, DEVELOPERS).getPaintableArrayInstance();
    }
}

