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
// package org.allbinary.graphics.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Displayable.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/DemoCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameInputMappingCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullDisplayable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullWaitGameRunnable.dart';
import 'package:allbinary/org/allbinary/game/layer/SWTUtil.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoresCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/GraphicsStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/NullRunnable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';

class CurrentDisplayableFactory {
    static final CurrentDisplayableFactory instance = CurrentDisplayableFactory();
    late CommonStrings commonStrings;
    late CanvasStrings canvasStrings;
    late StringUtil stringUtil;
    late String SET_DISPLAYABLE;
    late String SET_RUNNABLE;
    late String CLEAR_RUNNABLE;
    late String SET_USED_RUNNABLE;
    late String RUNNABLE;
    late String RUNNABLE_WAS_ALREADY_IN_USE;
    late BasicArrayList DEFAULT_CHILD_NAME_LIST;
    late Displayable displayable;
    late Displayable openGlReadydisplayable;
    late GameRunnable runnable;
    late GameRunnable usedRunnable;

    // Java field initializers run after the base constructor
    void initFieldsCurrentDisplayableFactory() {
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.SET_DISPLAYABLE = "setDisplayable";
    this.SET_RUNNABLE = "setRunnable";
    this.CLEAR_RUNNABLE = "clearRunnable";
    this.SET_USED_RUNNABLE = "setUsedRunnable";
    this.RUNNABLE = "Runnable: ";
    this.RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: ";
    this.DEFAULT_CHILD_NAME_LIST = BasicArrayListD();
    this.displayable = NullDisplayable.getInstance();
    this.openGlReadydisplayable = NullDisplayable.getInstance();
    this.runnable = NullWaitGameRunnable.getInstance();
    this.usedRunnable = NullWaitGameRunnable.getInstance();
    }
    

    static CurrentDisplayableFactory getInstance() {
        return CurrentDisplayableFactory.instance;
    }
    

    CurrentDisplayableFactory() {
        this.initFieldsCurrentDisplayableFactory();
        this.DEFAULT_CHILD_NAME_LIST.add(this.canvasStrings.ABOUT);
        this.DEFAULT_CHILD_NAME_LIST.add(this.canvasStrings.OPTIONS);
        this.DEFAULT_CHILD_NAME_LIST.add(GameInputMappingCanvas.NAME);
        this.DEFAULT_CHILD_NAME_LIST.add(GameInputMappingInstructionsCanvas.NAME);
        this.DEFAULT_CHILD_NAME_LIST.add(HighScoresCanvas.NAME);
    }
    

    void setMyCanvas(MyCanvas displayable) {
        if ((this.displayable is MyCanvas)) {
            if (displayable.hasChild((this.displayable as MyCanvas))) {
                PreLogUtil.put(StringMaker().append("Child Displayable is already set for: ").append(this.stringUtil.toString1(displayable)).toString(), this, this.SET_DISPLAYABLE);
                return;
            }
        }
        this.setDisplayable(displayable);
    }
    

    void setDisplayable(Displayable displayable) {
        this.displayable = displayable;
        this.setOpenGlReadydisplayable(displayable);
    }
    

    void setOpenGlReadydisplayable(Displayable openGlReadydisplayable) {
        this.openGlReadydisplayable = openGlReadydisplayable;
        this.update();
    }
    

    Displayable getOpenGlReadydisplayable() {
        return this.openGlReadydisplayable;
    }
    

    void setRunnable(GameRunnable runnable) {
        PreLogUtil.put(StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(runnable)).toString(), this, this.SET_RUNNABLE);
        this.runnable = runnable;
        if (!identical(this.usedRunnable, this.runnable)) {
            this.update();
        } else {
            PreLogUtil.put(StringMaker().append(this.RUNNABLE_WAS_ALREADY_IN_USE).append(this.stringUtil.toString1(runnable)).toString(), this, this.SET_RUNNABLE);
        }
    }
    

    void clearRunnable() {
        PreLogUtil.put(StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.CLEAR_RUNNABLE);
        this.setUsedRunnable(NullWaitGameRunnable.getInstance());
    }
    

    void update() {
        {
            final CommonSeps commonSeps = CommonSeps.getInstance();
            final Features features = Features.getInstance();
            final StringMaker stringMaker = StringMaker();
            stringMaker.append(this.stringUtil.toString1(this.openGlReadydisplayable));
            if (SWTUtil.isSWT && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(SWTUtil.SWT).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable.getInstance());
            } else if (J2MEUtil.isHTML()) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else if ((this.openGlReadydisplayable is DemoCanvas) || (this.openGlReadydisplayable is AllBinaryGameCanvas) || features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(this.runnable);
            } else {
                PreLogUtil.put(stringMaker.append(this.RUNNABLE).append(this.stringUtil.toString1(NullRunnable.getInstance())).toString(), this, this.commonStrings.UPDATE);
                this.setUsedRunnable(NullWaitGameRunnable.getInstance());
            }
        }
    }
    

    Displayable getDisplayable() {
        return this.displayable;
    }
    

    GameRunnable getUsedRunnable() {
        return this.usedRunnable;
    }
    

    void setUsedRunnable(GameRunnable usedRunnable) {
        PreLogUtil.put(StringMaker().append(this.RUNNABLE).append(this.stringUtil.toString1(this.runnable)).append(CommonSeps.getInstance().COLON_SEP).append(this.stringUtil.toString1(usedRunnable)).toString(), this, this.SET_USED_RUNNABLE);
        this.usedRunnable = usedRunnable;
    }
}

