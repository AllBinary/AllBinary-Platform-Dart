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
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCommandCanvas.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/RawKeyEventListener.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/validation/TextItemVisitor.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABTextFieldItem.dart';

class CustomTextBox extends GameCommandCanvas implements RawKeyEventListener {
    late ABTextFieldItem textFieldItem;
    late InputFactory inputFactory;

    // Java field initializers run after the base constructor
    void initFieldsCustomTextBox() {
    
    this.inputFactory = InputFactory.getInstance();
    }
    

    CustomTextBox(CommandListener cmdListener, String label, String text, int maxSize, int constraints, Font font, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(cmdListener, label, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsCustomTextBox();
        
        final StringUtil stringUtil = StringUtil.getInstance();
        final ABTextFieldItem textFieldItem = ABTextFieldItem(this, TextItemVisitor(), stringUtil.EMPTY_STRING, stringUtil.EMPTY_STRING, maxSize, 0, stringUtil.EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor);
        textFieldItem.setString(text);
        this.textFieldItem = textFieldItem;
        this.setTitle(label);
    }
    

    void submit() {
    }
    

    @override
    void onEventRaw(int keyCode, int deviceId, bool repeated) {
        this.logUtil.putF(StringMaker().append(this.commonStrings.START).appendint(keyCode).toString(), this, "onEvent");
        this.keyPressedByDevice(keyCode, deviceId);
    }
    

    @override
    void keyPressed(int keyCode) {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    @override
    void keyReleased(int keyCode) {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    @override
    void keyRepeated(int keyCode) {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    @override
    void keyPressedByDevice(int keyCode, int deviceId) {
        try {
            this.logUtil.putF(StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
            final PlatformKeyFactory platformKeyFactory = PlatformKeyFactory.getInstance();
            final Input input = this.inputFactory.getInstanceById(keyCode);
            if (platformKeyFactory.isSubmission(input)) {
                this.submit();
            } else {
                this.textFieldItem.keyPressed(keyCode);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.KEY_PRESSED, e);
            }
        }
    }
    

    @override
    void keyReleasedByDevice(int keyCode, int deviceId) {
    }
    

    @override
    void paint(Graphics graphics) {
        graphics.setColor(this.backgroundColor);
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        graphics.setColor(this.foregroundColor);
        if (!J2MEUtil.isJ2ME()) {
            graphics.drawString(this.getTitle(), 8, 1, 0);
        }
        this.paintXY(graphics, 8, graphics.getFont().getHeight() + 2);
        super.paint(graphics);
    }
    

    void paintXY(Graphics graphics, int x, int y) {
        this.textFieldItem.paintXY(graphics, x, y);
    }
    

    ABTextFieldItem getTextFieldItem() {
        return this.textFieldItem;
    }
}

