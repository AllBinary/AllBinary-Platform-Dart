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
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemIndexDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemPaintableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/VerticalFormProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/VerticalItemIndexDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/HorizontalFormProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/HorizontalItemIndexDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/TempHorizontalFormProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/TempHorizontalItemIndexDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';

class ScrollCurrentSelectionForm extends ScrollSelectionForm implements UpdateMyFontInterface {
    bool moveForSmallScreen = false;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    late Processor processor;
    late ItemIndexDx preItemIndexDx;
    int dx = 0;
    int dy = 0;
    int maxWidth = 0;

    // Java field initializers run after the base constructor
    void initFieldsScrollCurrentSelectionForm() {
    
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.processor = Processor.getInstance();
    this.preItemIndexDx = ItemIndexDx.getInstance();
    this.dx = 0;
    this.dy = 0;
    this.maxWidth = 0;
    }
    

    ScrollCurrentSelectionForm(String title, List<ABCustomItem?> items, ItemPaintableFactory formPaintableFactory, int border, int adjustedExtraBorder, bool moveForSmallScreen, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsScrollCurrentSelectionForm();
        
        this.moveForSmallScreen = moveForSmallScreen;
    }
    

    @override
    void init(Rectangle rectangle, FormType formType) {
        super.init(rectangle, formType);
        final FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            this.processor = TempHorizontalFormProcessor(this);
            this.preItemIndexDx = TempHorizontalItemIndexDx(this);
        } else if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.processor = HorizontalFormProcessor(this);
            this.preItemIndexDx = HorizontalItemIndexDx(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.processor = VerticalFormProcessor(this);
            this.preItemIndexDx = VerticalItemIndexDx(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            this.logUtil.putF(formTypeFactory.UNK, this, this.commonStrings.INIT);
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    void processTempHorizontalForm() {
        this.dx = this.x - 30 + (this.rectangle.getWidth() >> 1);
        this.dy = this.y;
    }
    

    void processHorizontalForm() {
        final int size = this.size();
        int totalWidth = 0;
        late ABCustomItem item;
        for (int index = 0; index < size; index++) {
            item = this.get(index);
            totalWidth += item.getMinimumWidth() + this.border;
        }
        this.dx = this.x + (this.rectangle.getWidth() >> 1) - (totalWidth >> 1);
        this.dy = this.y + (this.rectangle.getHeight() >> 1);
        if (this.moveForSmallScreen) {
            int maxTitleHeight = 175;
            if (this.dy < maxTitleHeight) {
                this.dy = maxTitleHeight;
            }
        }
    }
    

    void processVerticalForm() {
        int totalHeight = 0;
        final int size = this.size();
        late ABCustomItem item2;
        for (int index = 0; index < size; index++) {
            item2 = this.get(index);
            if (this.maxWidth < item2.getMinimumWidth()) {
                this.maxWidth = item2.getMinimumWidth();
            }
            totalHeight += item2.getMinimumHeight() + this.border;
        }
        this.dx = ((this.rectangle.getWidth() - this.maxWidth) ~/ 2);
        if (this.size() > 0) {
            this.dy = this.y + ((this.rectangle.getHeight() - totalHeight) ~/ 2);
            if (this.moveForSmallScreen) {
                int maxTitleHeight = 175;
                if (this.dy < maxTitleHeight) {
                    this.dy = maxTitleHeight;
                }
            }
        } else {
            this.dy = this.y;
        }
    }
    

    int getXTempHorizontalForm(int index, ABCustomItem item, int dx, int dy) {
        return this.getDiffX(item);
    }
    

    int getXHorizontalForm(int index, ABCustomItem item, int dx, int dy) {
        return 0;
    }
    

    int getXVerticalForm(int index, ABCustomItem item, int dx, int dy) {
        return this.getDiffX(item) + this.halfBorder;
    }
    

    @override
    int getDiffX(ABCustomItem item) {
        return ((this.maxWidth - item.getMinimumWidth()) >> 1);
    }
    

    @override
    int getDx() {
        return this.dx;
    }
    

    @override
    int getDy() {
        return this.dy;
    }
    

    @override
    void paint(Graphics graphics) {
        try {
            this.processor.process();
            int delta = 0;
            int deltaX = this.getDx();
            int deltaY = this.getDy();
            final int size = this.size();
            final FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
            late ABCustomItem item;
            for (int index = 0; index < size; index++) {
                item = this.get(index);
                int diffX = this.preItemIndexDx.getDx(index, item, this.dx, this.dy);
                if (index == this.getSelectedIndex()) {
                    delta = this.paintItem(graphics, index, item, deltaX + diffX, deltaY);
                    this.paintable.paint(graphics, index, deltaX + diffX, deltaY);
                } else {
                    delta = this.paintUnselectedItem(graphics, index, item, deltaX + diffX, deltaY);
                    this.paintable.paint(graphics, index, deltaX + diffX, deltaY);
                }
                if (this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
                } else if (this.formType == formTypeFactory.HORIZONTAL_FORM) {
                    deltaX = delta;
                } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
                    deltaY = delta;
                } else {
                    throw JException('Exception', formTypeFactory.UNK);
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT, e);
            }
        }
    }
}

