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
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/vector/RectangleAdjustedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/vector/RectangleFilledAdjustedAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CommandTextItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollCurrentSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemPaintableFactory.dart';

class CommandCurrentSelectionForm extends ScrollCurrentSelectionForm implements UpdateMyFontInterface {
    late List<Animation?> selectedAnimationArray;
    late List<Animation?> unSelectedAnimationArray;

    // Java field initializers run after the base constructor
    void initFieldsCommandCurrentSelectionForm() {
    this.selectedAnimationArray = List<Animation?>.filled(16, null);
    this.unSelectedAnimationArray = List<Animation?>.filled(16, null);
    }
    

    CommandCurrentSelectionForm(String title, List<ABCustomItem?> items, int border, bool moveForSmallScreen, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsCommandCurrentSelectionForm();
        
        this.initAnimations();
        this.addAll(items);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        this.updateAll(graphics, this.getAllitems());
        super.updateMeasurement(graphics);
    }
    

    void initAnimations() {
        final Animation nullAnimation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        for (int index = this.selectedAnimationArray.length; --index >= 0; ) {
            this.selectedAnimationArray[index] = nullAnimation;
        }
        for (int index = this.unSelectedAnimationArray.length; --index >= 0; ) {
            this.unSelectedAnimationArray[index] = nullAnimation;
        }
    }
    

    void addAll(List<ABCustomItem?> items) {
        for (int index = items.length; --index >= 0; ) {
            this.addAt(index, items[index]!);
        }
    }
    

    void addAt(int index, ABCustomItem item) {
        final BasicColorFactory basicColorFactory = BasicColorFactory.getInstance();
        final BasicColor buttonColor = basicColorFactory.TRANSPARENT_GREY;
        final BasicColor selectedButtonColor = basicColorFactory.TRANSPARENT_RED;
        int width = item.getMinimumWidth();
        int height = item.getMinimumHeight();
        int adjustedBorder = 3;
        final int offset = -(this.halfBorder + adjustedBorder);
        final int rectWidth = width + this.border - adjustedBorder;
        final int rectHeight = height + this.border - adjustedBorder;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.selectedAnimationArray[index] = RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        } else {
            this.selectedAnimationArray[index] = RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.unSelectedAnimationArray[index] = RectangleAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        } else {
            this.unSelectedAnimationArray[index] = RectangleFilledAdjustedAnimation(rectWidth, rectHeight, offset, offset, buttonColor);
        }
    }
    

    void updateAll(Graphics graphics, List<ABCustomItem?> items) {
        for (int index = items.length; --index >= 0; ) {
            items[index]!.preMeasurement(graphics);
            this.updateAt(index, items[index]!);
        }
    }
    

    void updateAt(int index, ABCustomItem item) {
        final BasicColorFactory basicColorFactory = BasicColorFactory.getInstance();
        final BasicColor buttonColor = basicColorFactory.TRANSPARENT_GREY;
        final BasicColor selectedButtonColor = basicColorFactory.TRANSPARENT_RED;
        final int width = item.getMinimumWidth();
        final int height = item.getMinimumHeight();
        int adjustedBorder = 3;
        final int offset = -(this.halfBorder + adjustedBorder);
        final int rectWidth = width + this.border - adjustedBorder;
        final int rectHeight = height + this.border - adjustedBorder;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            final RectangleAdjustedAnimation rectangleAdjustedAnimation = (this.selectedAnimationArray[index]! as RectangleAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        } else {
            final RectangleFilledAdjustedAnimation rectangleAdjustedAnimation = (this.selectedAnimationArray[index]! as RectangleFilledAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor);
        }
        adjustedBorder = 4;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            final RectangleAdjustedAnimation rectangleAdjustedAnimation = (this.unSelectedAnimationArray[index]! as RectangleAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        } else {
            final RectangleFilledAdjustedAnimation rectangleAdjustedAnimation = (this.unSelectedAnimationArray[index]! as RectangleFilledAdjustedAnimation);
            rectangleAdjustedAnimation.setWidth(rectWidth);
            rectangleAdjustedAnimation.setHeight(rectHeight);
            rectangleAdjustedAnimation.setOffsetX(offset);
            rectangleAdjustedAnimation.setOffsetY(offset);
            rectangleAdjustedAnimation.setBasicColorP(buttonColor);
        }
    }
    

    Command getSelectedCommand() {
        final int index = super.getSelectedIndex();
        final CommandTextItem commandTextItem = (this.get(index) as CommandTextItem);
        return commandTextItem.getCommand();
    }
    

    @override
    int append(ABCustomItem item) {
        int result = super.append(item);
        this.addAt(result, item);
        return result;
    }
    

    @override
    void delete(int itemNum) {
        super.delete(itemNum);
    }
    

    @override
    void deleteAll() {
        this.initAnimations();
        super.deleteAll();
    }
    

    @override
    void insert(int itemNum, ABCustomItem item) {
        super.insert(itemNum, item);
    }
    

    @override
    void set(int itemNum, ABCustomItem item) {
        super.set(itemNum, item);
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        super.paint(graphics);
    }
    

    @override
    int paintItem(Graphics graphics, int index, ABCustomItem item, int x, int y) {
        this.selectedAnimationArray[index]!.paintXY(graphics, x, y);
        return super.paintItem(graphics, index, item, x, y);
    }
    

    @override
    int paintUnselectedItem(Graphics graphics, int index, ABCustomItem item, int x, int y) {
        this.unSelectedAnimationArray[index]!.paintXY(graphics, x, y);
        return super.paintUnselectedItem(graphics, index, item, x, y);
    }
}

