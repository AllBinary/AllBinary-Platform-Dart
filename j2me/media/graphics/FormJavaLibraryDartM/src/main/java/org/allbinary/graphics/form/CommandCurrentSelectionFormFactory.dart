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
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/TouchFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/CommandCurrentSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';

class CommandCurrentSelectionFormFactory {
    

    static ScrollSelectionForm getInstance8(String title, List<ABCustomItem?> items, Rectangle rectangle, FormType formType, int border, bool moveForSmallScreen, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        if (Features.getInstance().isFeature(TouchFeatureFactory.getInstance().TOUCH_ENABLED)) {
            final ScrollSelectionForm scrollSelectionForm = CommandCurrentSelectionForm(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
            scrollSelectionForm.init(rectangle, formType);
            return scrollSelectionForm;
        } else {
            return ScrollSelectionFormNoneFactory.getInstance();
        }
    }
}

