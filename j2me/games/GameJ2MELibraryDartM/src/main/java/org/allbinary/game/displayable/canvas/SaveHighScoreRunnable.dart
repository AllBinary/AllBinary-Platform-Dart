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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoreTextBox.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class SaveHighScoreRunnable implements Runnable {
    late ProgressCanvas progressCanvas;
    bool isLast = false;
    late HighScoreTextBox textBox;

    // Java field initializers run after the base constructor
    void initFieldsSaveHighScoreRunnable() {
    this.progressCanvas = ProgressCanvasFactory.getInstance();
    
    
    }
    

    SaveHighScoreRunnable(bool isLast, HighScoreTextBox textBox) {
        this.initFieldsSaveHighScoreRunnable();
        this.isLast = isLast;
        this.textBox = textBox;
    }
    

    @override
    void run() {
        final LogUtil logUtil = LogUtil.getInstance();
        try {
            if (this.isLast) {
                this.textBox.submit();
            } else {
                this.textBox.saveHighScore();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, "run", e);
            this.progressCanvas.end();
            }
        }
    }
}

