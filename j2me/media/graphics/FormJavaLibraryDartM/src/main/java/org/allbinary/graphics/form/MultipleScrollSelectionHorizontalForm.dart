// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemPaintableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemIndexPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/MultipleScrollSelectionFormRectPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/MultipleScrollSelectionFormVerticalPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/MultipleScrollSelectionFormHorizontalPaintable.dart';

class MultipleScrollSelectionHorizontalForm extends ScrollSelectionForm implements UpdateMyFontInterface {
    late Paintable rectPaintable;
    late ItemIndexPaintable multipleScrollSelectionHorizontalFormTypeItemIndexPaintable;
    int backgroundColor = 0;
    late MyFontProcessor myFontProcessor;
    bool logged = false;
    int fontHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsMultipleScrollSelectionHorizontalForm() {
    this.rectPaintable = NullPaintable.getInstance();
    this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance();
    this.backgroundColor = BasicColorFactory.getInstance().TRANSPARENT_GREY.intValue();
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.logged = false;
    this.fontHeight = 0;
    }
    

    static ScrollSelectionForm createForm(String title, List<ABCustomItem?> items, Rectangle rectangle, FormType formType, int border, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        final ScrollSelectionForm scrollSelectionForm = MultipleScrollSelectionHorizontalForm(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor);
        scrollSelectionForm.init(rectangle, formType);
        return scrollSelectionForm;
    }
    

    MultipleScrollSelectionHorizontalForm(String title, List<ABCustomItem?> items, ItemPaintableFactory formPaintableFactory, int border, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsMultipleScrollSelectionHorizontalForm();
        
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            this.rectPaintable = MultipleScrollSelectionFormRectPaintable(this);
        }
    }
    

    void fillRect(Graphics graphics) {
        graphics.setColor(this.backgroundColor);
        graphics.fillRect(this.x, this.y, this.rectangle.getWidth(), this.rectangle.getHeight());
    }
    

    @override
    void init(Rectangle rectangle, FormType formType) {
        super.init(rectangle, formType);
        final FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormHorizontalPaintable(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormVerticalPaintable(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            throw JException('Exception', formTypeFactory.UNK);
        }
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    int paintHorizontal(Graphics graphics, int index, ABCustomItem item, int dx, int dy) {
        int dx2 = this.paintItem(graphics, index, item, dx, dy) + this.border;
        this.paintable.paint(graphics, index, dx, dy);
        dx = dx2;
        return dx;
    }
    

    int paintVertical(Graphics graphics, int index, ABCustomItem item, int dx, int dy) {
        this.paintItem(graphics, index, item, dx, dy);
        this.paintable.paint(graphics, index, dx, dy);
        return dx;
    }
    

    @override
    int getStartIndex() {
        return this.getSelectedIndex();
    }
    

    @override
    void paint(Graphics graphics) {
        try {
            this.myFontProcessor.process(graphics);
            final int start = this.getStartIndex();
            final int size = this.size();
            int dx = this.x;
            final int dy = this.y;
            this.rectPaintable.paint(graphics);
            graphics.drawString(this.getTitle(), this.x, this.y - this.fontHeight, 0);
            late ABCustomItem item;
            for (int index = start; index < size; index++) {
                item = this.get(index);
                if (dx >= this.rectangle.getMaxX()) {
                    if (this.logged) {
                    } else {
                        this.logged = true;
                        PreLogUtil.put(StringMaker().append("painting beyond maxx: ").appendint(this.rectangle.getMaxX()).toString(), this, this.canvasStrings.PAINT);
                    }
                }
                dx = this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT);
            }
        }
    }
}

