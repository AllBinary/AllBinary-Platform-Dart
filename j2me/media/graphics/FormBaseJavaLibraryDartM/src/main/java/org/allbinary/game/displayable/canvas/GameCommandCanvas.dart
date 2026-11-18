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
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCommandListener.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/displayable/RepaintBehavior.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputStrings.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventListener.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/PaintableForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CommandTextItemArrayFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/validation/AllCommandsVisitor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/MenuListener.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NoMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/ImmediateCommandFormInputProcessor.dart';

class GameCommandCanvas extends MyCanvas implements MenuListener, DisplayChangeEventListener, UpdateMyFontInterface {
    static const int id = 0;
    late Processor repaintProcessor;
    late GameInputStrings gameInputStrings;
    late BasicColor foregroundBasicColor;
    late BasicColor backgroundBasicColor;
    late InputToGameKeyMapping inputToGameKeyMapping;
    late GameKeyFactory gameKeyFactory;
    late GameKeyEventFactory gameKeyEventFactory;
    late DownGameKeyEventHandler downGameKeyEventHandler;
    late UpGameKeyEventHandler upGameKeyEventHandler;
    late RepaintBehavior repaintBehavior;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    int foregroundColor = 0;
    int backgroundColor = 0;
    late BasicMenuInputProcessor menuInputProcessor;
    late Paintable menuPaintable;
    late PaintableForm menuForm;
    bool isSingleKeyRepeatableProcessing = false;
    int fontHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameCommandCanvas() {
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this);
    this.gameInputStrings = GameInputStrings.getInstance();
    
    
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuPaintable = NullPaintable.getInstance();
    this.menuForm = PaintableForm.getNullPaintableForm();
    this.isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
    this.fontHeight = 0;
    }
    

    GameCommandCanvas(CommandListener cmdListener, String name, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(name, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST) {
        this.initFieldsGameCommandCanvas();
        
        this.repaintBehavior = RepaintBehavior.getInstance();
        this.foregroundBasicColor = foregroundBasicColor;
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundColor = this.foregroundBasicColor.intValue();
        this.backgroundColor = this.backgroundBasicColor.intValue();
        this.initCommands(cmdListener);
        if (cmdListener != NullCommandListener.NULL_COMMAND_LISTENER) {
            try {
                this.initMenu();
                this.repaintProcessor.process();
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                throw JException('RuntimeException', '');
                }
            }
        }
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        try {
            final Font font = graphics.getFont();
            this.logUtil.putF(StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeight = font.getHeight();
            final Rectangle rectangle = this.createRectangle(this.menuForm.size());
            this.menuForm.init(rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM);
            this.update();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        this.logUtil.putF(StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    void initMenu() {
        final ScrollSelectionForm form = this.createForm();
        this.menuForm = form;
        if (form != ScrollSelectionFormNoneFactory.getInstance()) {
            this.setMenuInputProcessor(ImmediateCommandFormInputProcessor(BasicArrayListD(), -1, this, form));
            this.menuPaintable = FormPaintable(form);
        }
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    ScrollSelectionForm createForm() {
        final List<ABCustomItem?> items = CommandTextItemArrayFactory(AllCommandsVisitor()).getInstance3(this.getCommandStack(), this.backgroundBasicColor, this.foregroundBasicColor);
        final Rectangle rectangle = this.createRectangle(items.length);
        return CommandCurrentSelectionFormFactory.getInstance8(StringUtil.getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, this.backgroundBasicColor, this.foregroundBasicColor);
    }
    

    Rectangle createRectangle(int size) {
        final int height = size * this.fontHeight;
        final int startY = (this.displayInfo.getLastHeight() * 2 ~/ 3) - height;
        final PointFactory pointFactory = PointFactory.getInstance();
        final Rectangle rectangle = Rectangle(pointFactory.createXY(30, startY), this.displayInfo.getLastWidth() - 30, startY);
        return rectangle;
    }
    

    @override
    void open() {
        this.logUtil.putF(this.commonStrings.START, this, "open");
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    @override
    void close() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler.getInstance().removeListener(this);
    }
    

    void update() {
        this.repaintProcessor.process();
    }
    

    @override
    int getSourceId() {
        return GameCommandCanvas.id;
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
        this.logUtil.putF(StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
        this.addGameKeyEvent(keyCode, 0, false);
    }
    

    @override
    void keyReleasedByDevice(int keyCode, int deviceId) {
        this.removeGameKeyEvent(keyCode, deviceId, false);
    }
    

    @override
    void keyRepeatedByDevice(int keyCode, int deviceId) {
        if (this.isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, deviceId, true);
        }
    }
    

    void addGameKeyEvent(int keyCode, int deviceId, bool repeated) {
        try {
            final GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.gameKeyFactory.NONE) {
                final GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
        }
    }
    

    void removeGameKeyEvent(int keyCode, int deviceId, bool repeated) {
        try {
            final GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.gameKeyFactory.NONE) {
                final GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e);
            }
        }
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        this.menuPaintable.paint(graphics);
        this.repaintBehavior.repaint(this);
    }
    

    void setMenuInputProcessor(BasicMenuInputProcessor menuInputProcessor) {
        this.menuInputProcessor = menuInputProcessor;
    }
    

    BasicMenuInputProcessor getMenuInputProcessor() {
        return this.menuInputProcessor;
    }
}

