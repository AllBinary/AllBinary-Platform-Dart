// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/graphics/form/ABCustomForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';

class PaintableForm extends ABCustomForm {
    static Object NULL_PAINTABLE_FORM = NullUtil.getInstance().NULL_OBJECT;
    late CanvasStrings canvasStrings;
    late Rectangle rectangle;
    int x = 0;
    int y = 0;
    late FormType formType;

    // Java field initializers run after the base constructor
    void initFieldsPaintableForm() {
    this.canvasStrings = CanvasStrings.getInstance();
    this.rectangle = RectangleFactory.SINGLETON;
    this.x = 0;
    this.y = 0;
    this.formType = FormTypeFactory.getInstance().NULL_FORM_TYPE;
    }
    

    static PaintableForm getNullPaintableForm() {
        if (PaintableForm.NULL_PAINTABLE_FORM == NullUtil.getInstance().NULL_OBJECT) {
            PaintableForm.NULL_PAINTABLE_FORM = PaintableForm(StringUtil.getInstance().EMPTY_STRING, List<ABCustomItem?>.filled(0, null), BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (PaintableForm.NULL_PAINTABLE_FORM as PaintableForm);
    }
    

    PaintableForm(String title, List<ABCustomItem?> items, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(title, items, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsPaintableForm();
        
        this.setSelectedIndex(0);
    }
    

    void init(Rectangle rectangle, FormType formType) {
        this.rectangle = rectangle;
        final GPoint point = this.rectangle.getPoint();
        this.x = point.getX();
        this.y = point.getY();
        this.formType = formType;
    }
    

    @override
    int getWidth() {
        return this.rectangle.getWidth();
    }
}

