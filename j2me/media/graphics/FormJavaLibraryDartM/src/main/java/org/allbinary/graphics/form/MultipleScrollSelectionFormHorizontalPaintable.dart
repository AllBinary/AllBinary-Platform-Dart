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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemIndexPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.dart';

class MultipleScrollSelectionFormHorizontalPaintable extends ItemIndexPaintable {
    late MultipleScrollSelectionHorizontalForm multipleScrollSelectionForm;

    // Java field initializers run after the base constructor
    void initFieldsMultipleScrollSelectionFormHorizontalPaintable() {
    
    }
    

    MultipleScrollSelectionFormHorizontalPaintable(MultipleScrollSelectionHorizontalForm multipleScrollSelectionForm) {
        this.initFieldsMultipleScrollSelectionFormHorizontalPaintable();
        this.multipleScrollSelectionForm = multipleScrollSelectionForm;
    }
    

    @override
    int paint(Graphics graphics, int index, ABCustomItem item, int dx, int dy) {
        return this.multipleScrollSelectionForm.paintHorizontal(graphics, index, item, dx, dy);
    }
}

