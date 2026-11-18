// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package javax.microedition.lcdui

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Stack.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';

class NullCanvas extends Canvas {
    static final NullCanvas NULL_CANVAS = NullCanvas();
    

    NullCanvas() {
    }
    

    @override
    void setFullScreenMode(bool mode) {
    }
    

    @override
    void sizeChanged(int w, int h) {
    }
    

    Stack getCommandStack() {
        throw JException('RuntimeException', '');
    }
    

    bool isCommand(Command command) {
        throw JException('RuntimeException', '');
    }
    

    @override
    void addCommand(Command command) {
    }
    

    @override
    void removeCommand(Command command) {
    }
    

    void removeAllCommands() {
    }
    

    @override
    void setCommandListener(CommandListener l) {
    }
    

    CommandListener getCustomCommandListener() {
        throw JException('RuntimeException', '');
    }
    

    bool isPaused() {
        throw JException('RuntimeException', '');
    }
    

    void removePauseCommand() {
    }
    

    void pause() {
    }
    

    void unPause() {
    }
    

    void process() {
    }
    

    @override
    void paint(Graphics graphics) {
    }
    

    void destroy() {
    }
    

    void setPaused(bool isPaused) {
        throw JException('RuntimeException', '');
    }
    

    @override
    void pointerDragged(int x, int y) {
    }
    

    @override
    void pointerPressed(int x, int y) {
    }
    

    @override
    void pointerReleased(int x, int y) {
    }
}

