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
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/special/SpecialAnimation.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateFactory.dart';
import 'package:allbinary/org/allbinary/canvas/BaseGameStatistics.dart';
import 'package:allbinary/org/allbinary/canvas/CustomGameMenuUtil.dart';
import 'package:allbinary/org/allbinary/canvas/FullScreenUtil.dart';
import 'package:allbinary/org/allbinary/canvas/GameStatisticsFactory.dart';
import 'package:allbinary/org/allbinary/canvas/RunnableCanvas.dart';
import 'package:allbinary/org/allbinary/game/GameAdState.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/ChangedGameFeatureListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/init/BasicBuildGameInitializerFactory.dart';
import 'package:allbinary/org/allbinary/game/init/GameInitializationUtil.dart';
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
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/layer/SWTUtil.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidlet.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoreCommands.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelper.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresPaintable.dart';
import 'package:allbinary/org/allbinary/game/score/NullHighScoresSingletonFactory.dart';
import 'package:allbinary/org/allbinary/game/state/GameState.dart';
import 'package:allbinary/org/allbinary/game/state/GameStateFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/ResizableListenerHandler.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventListener.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/CurrentDisplayableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureUtil.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLThreadUtil.dart';
import 'package:allbinary/org/allbinary/graphics/paint/InitUpdatePaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/paint/StatePaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/StatePaintableFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockableFeature.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockableFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/AllBinaryMediaManager.dart';
import 'package:allbinary/org/allbinary/media/audio/EarlySoundsFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/MenuListener.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/FormUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NoMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullWaitGameRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameInputMappingCanvas.dart';

class StartCanvas extends RunnableCanvas implements GameCanvasRunnableInterface, MenuListener, DisplayChangeEventListener {
    static const int id = 0;
    static const String BOT_GAME_STATS = "Bot Game Statistics: ";
    late BasicColorFactory basicColorFactory;
    late Features features;
    late OpenGLFeatureFactory openGLFeatureFactory;
    late MyCommandsFactory myCommandsFactory;
    late GameAdStateFactory gameAdStateFactory;
    late GameStateFactory gameStateFactory;
    late GameInputStrings gameInputStrings;
    late FormUtil formUtil;
    late StatePaintable basicGameDemoPaintable;
    late SpecialAnimation specialAnimationInterface;
    late Animation paintedSpecialAnimationInterface;
    late FullScreenUtil fullScreenUtil;
    late HighScoresHelper highScoresHelper;
    late HighScoresPaintable realHighScoresPaintable;
    late Paintable highScoresPaintable;
    int state = 0;
    late TimeDelayHelper timeDelayHelper;
    late HighScoresFactoryInterface highScoresFactoryInterface;
    late BasicMenuInputProcessor menuInputProcessor;
    late ScrollSelectionForm menuForm;
    late BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface;
    bool initialized = false;
    late Paintable defaultPaintableInterface;
    late PaintableInterface paintableInterface;
    late InitUpdatePaintable overlayPaintable;
    int tempWait = 0;
    late InputToGameKeyMapping inputToGameKeyMapping;
    late GameRunnable gameRunnable;
    late PaintableInterface progressPaintable;
    bool isSingleKeyRepeatableProcessing = false;
    late GameKey NONE;
    late GameKeyEventFactory gameKeyEventFactory;
    late String SET_STATE;
    late BaseGameStatistics baseGameStatistics;

    // Java field initializers run after the base constructor
    void initFieldsStartCanvas() {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.features = Features.getInstance();
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
    this.myCommandsFactory = MyCommandsFactory.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.gameInputStrings = GameInputStrings.getInstance();
    this.formUtil = FormUtil.getInstance();
    this.basicGameDemoPaintable = StatePaintableFactory.getInstance();
    this.specialAnimationInterface = SpecialAnimation.getInstance();
    this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance();
    this.fullScreenUtil = FullScreenUtil.getInstance();
    this.highScoresHelper = HighScoresHelper();
    this.realHighScoresPaintable = HighScoresPaintable();
    this.highScoresPaintable = NullPaintable.getInstance();
    this.state = 0;
    this.timeDelayHelper = TimeDelayHelper(6000);
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm();
    
    this.initialized = false;
    this.defaultPaintableInterface = NullPaintable.getInstance();
    this.paintableInterface = NullPaintable.getInstance();
    
    this.tempWait = NullWaitGameRunnable.getInstance().WAIT;
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.gameRunnable = NullWaitGameRunnable.getInstance();
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance();
    this.isSingleKeyRepeatableProcessing = this.features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.SET_STATE = "setState";
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
    }
    

    StartCanvas(AbeClientInformationInterface abeClientInformation, CommandListener commandListener, HighScoresFactoryInterface highScoresFactoryInterface, Paintable paintable, InitUpdatePaintable overlayPaintable, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface, bool isContinue) : super(commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true) {
        this.initFieldsStartCanvas();
        
        this.setWait(NullWaitGameRunnable.getInstance().WAIT);
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil.getInstance().initDemo(abeClientInformation, this, gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler.getInstance().fireEvent(false);
        this.overlayPaintable = overlayPaintable;
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.setDefaultPaintableInterface(paintable);
        this.setPaintableInterface(this.getDefaultPaintableInterface());
        if (isContinue) {
            this.addCommand(GameCommandsFactory.getInstance().CONTINUE_COMMAND);
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(GameFeatureFactory.getInstance().SOUND)) {
            this.mediaInit();
        }
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        try {
            ScrollSelectionForm scrollSelectionForm = this.getMenuForm();
            if (scrollSelectionForm != null) {
                FormType formType = FormTypeFactory.getInstance().getFormType();
                Rectangle rectangle = this.formUtil.createFormRectangle();
                scrollSelectionForm.init(rectangle, formType);
            }
            this.overlayPaintable.init();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
        }
    }
    

    List<Object?> getCustomCommands() {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        if (J2MEUtil.isHTML()) {
            final List<Object?> commandArray = <Object?>[gameCommandsFactory.START_COMMAND, HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT];
            return commandArray;
        } else {
            final BasicArrayList commandList = BasicArrayListD();
            commandList.add(gameCommandsFactory.START_COMMAND);
            final InApplicationPurchaseFactory inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance();
            if (inApplicationPurchaseFactory.isEnabled()) {
                final BasicArrayList list = LockableFeatureFactory.getInstance().getList();
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased((list.get(0) as LockableFeature))) {
                    commandList.add(gameCommandsFactory.BUY_COMMAND);
                }
            }
            commandList.add(HighScoreCommands.getInstance().DISPLAY);
            try {
                final bool isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
                if (SWTUtil.isSWT) {
                    commandList.add(GameInputMappingCanvas.DISPLAY);
                } else if (!isOverScan) {
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS);
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM);
                    commandList.add(GameInputMappingCanvas.DISPLAY);
                }
            } catch (jcaught) {
                {
                    final dynamic e = jcaught;
                }
            }
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT);
            final List<Object?> commandArray = commandList.toArray();
            return commandArray;
        }
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        final List<Object?> commandArray = this.getCustomCommands();
        final int size = commandArray.length;
        for (int index = 0; index < size; index++) {
            this.addCommand((commandArray[index]! as Command));
        }
        CustomGameMenuUtil.add(this);
        this.setCommandListener(cmdListener);
    }
    

    void initPostPaint() {
    }
    

    void mediaInit() {
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance());
    }
    

    @override
    void itemStateChanged(Item item) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    void initMenu() {
        this.close();
        this.open();
    }
    

    @override
    void open() {
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor());
    }
    

    @override
    void close() {
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor());
    }
    

    @override
    int getSourceId() {
        return StartCanvas.id;
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
        this.addGameKeyEvent(keyCode, false);
    }
    

    @override
    void keyReleasedByDevice(int keyCode, int deviceId) {
        this.removeGameKeyEvent(keyCode, false);
    }
    

    @override
    void keyRepeatedByDevice(int keyCode, int deviceId) {
        if (this.isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, true);
        }
    }
    

    void addGameKeyEvent(int keyCode, bool repeated) {
        try {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (!identical(gameKey, this.NONE)) {
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
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
    

    void removeGameKeyEvent(int keyCode, bool repeated) {
        try {
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (!identical(gameKey, this.NONE)) {
                GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
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
    void pause() {
        this.close();
        this.setPaused(true);
    }
    

    @override
    void unPause() {
        this.open();
        this.setPaused(false);
    }
    

    @override
    bool isPausable() {
        if (CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    bool isGameOver() {
        this.logUtil.putF(StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), this, "isGameOver");
        return false;
    }
    

    @override
    void setLoadStateHashtable(ABHashtable hashtable) {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable");
    }
    

    @override
    ABHashtable getLoadStateHashtable() {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    @override
    ABHashtable getCurrentStateHashtable() {
        this.logUtil.putF("Trying to save the AI lol", this, "getCurrentStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    @override
    void setHighScoreSubmitted(bool isNotUsed) {
    }
    

    @override
    void paint(Graphics graphics) {
        this.paintableInterface.paint(graphics);
        this.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0);
        this.highScoresPaintable.paint(graphics);
        this.getBasicGameDemoPaintable().paint(graphics);
        this.overlayPaintable.paint(graphics);
        this.progressPaintable.paint(graphics);
    }
    

    @override
    void paintThreed(Graphics graphics) {
        this.paintableInterface.paintThreed(graphics);
        this.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
    

    @override
    void processGameOver() {
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver");
    }
    

    void demoStateChange() {
        int newState = this.state + 1;
        if (newState > 2) {
            newState = 0;
        } else if (newState == 2) {
            if (!this.highScoresHelper.isAnyHighScores()) {
                newState = 0;
            } else {
                final HighScores highScores = this.highScoresHelper.getNextHighScores();
                if (highScores == NullHighScoresSingletonFactory.getInstance()) {
                    newState = 0;
                } else {
                    this.getRealHighScoresPaintable().setHighScores(highScores);
                }
            }
        }
        this.setState(newState);
        this.updateDemoState();
    }
    

    void updateDemoState() {
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(this.state).toString(), this, this.SET_STATE);
        this.getBasicGameDemoPaintable().setState(this.state);
        if (this.state == 0) {
            this.highScoresPaintable = NullPaintable.getInstance();
            this.paintedSpecialAnimationInterface = this.getSpecialAnimationInterface();
            this.getSpecialAnimationInterface().reset();
        } else if (this.state == 1) {
            this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance();
        } else if (this.state == 2) {
            this.highScoresPaintable = this.getRealHighScoresPaintable();
        }
        GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processPageAdState();
    }
    

    int getNextRandom() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    AllBinaryGameLayerManager createGameLayerManager(int randomValue) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    GameCanvasRunnableInterface createRunnable(int randomLevel) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void createCanvas() {
        this.highScoresPaintable = NullPaintable.getInstance();
        int randomLevel = this.getNextRandom();
    }
    

    void start() {
    }
    

    void preDemoProcess() {
        this.overlayPaintable.update();
    }
    

    @override
    void process() {
        this.getMenuInputProcessor().processInputList();
        this.preDemoProcess();
        if (this.state == 0) {
            final IndexedAnimationBehavior indexedAnimationBehavior = (this.getSpecialAnimationInterface().getAnimationBehavior() as IndexedAnimationBehavior);
            if (indexedAnimationBehavior.loopIndex < 1) {
                this.timeDelayHelper.setStartTimeTNT();
            }
            DemoGameMidlet demoGameMidlet = (this.getCustomCommandListener() as DemoGameMidlet);
        }
    }
    

    void startDemoGame() {
    }
    

    void processGame() {
        this.gameRunnable.run();
        this.specialAnimationInterface.nextFrame();
        this.process();
    }
    

    @override
    void run() {
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
        try {
            final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Demo Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                progressCanvas.end();
            } else {
                progressCanvas.addNormalPortion(50, "Demo Thread Running");
            }
            this.fullScreenUtil.initOnRun(this, this.getCustomCommandListener());
            this.initMenu();
            this.initPostPaint();
            this.updateDemoState();
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                OpenGLThreadUtil.getInstance().onResume();
            }
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            } else {
                while (this.isRunning()) {
                    this.loopTimeHelper.setStartTimeTNT();
                    this.processGame();
                    this.processLoopSleep();
                }
                this.end();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
        }
        this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
    }
    

    @override
    void setRunning(bool running) {
        super.setRunning(running);
        try {
            if ((this.features.isDefault(this.openGLFeatureFactory.OPENGL) || J2MEUtil.isHTML()) && !running) {
                final CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
                currentDisplayableFactory.clearRunnable();
                this.end();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e);
            }
        }
    }
    

    void end() {
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        this.baseGameStatistics.add(StringMaker().append(StartCanvas.BOT_GAME_STATS).append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString());
        this.baseGameStatistics.init();
        if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
            progressCanvas.start();
        }
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN);
        this.close();
        DisplayChangeEventHandler.getInstance().removeListener(this);
    }
    

    @override
    void setGameState(GameState gameState) {
    }
    

    @override
    GameState getGameState() {
        return this.gameStateFactory.PLAYING_GAME_STATE;
    }
    

    int getState() {
        return this.state;
    }
    

    void setState(int state) {
        this.state = state;
    }
    

    @override
    bool isHighScoreSubmitted() {
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted");
        return false;
    }
    

    HighScoresPaintable getRealHighScoresPaintable() {
        return this.realHighScoresPaintable;
    }
    

    void setSpecialAnimationInterface(SpecialAnimation specialAnimationInterface) {
        specialAnimationInterface.setFrame(0);
        this.specialAnimationInterface = specialAnimationInterface;
    }
    

    SpecialAnimation getSpecialAnimationInterface() {
        return this.specialAnimationInterface;
    }
    

    void setPaintableInterface(PaintableInterface paintableInterface) {
        this.paintableInterface = paintableInterface;
    }
    

    PaintableInterface getPaintableInterface() {
        return this.paintableInterface;
    }
    

    void setDefaultPaintableInterface(Paintable defaultPaintableInterface) {
        this.defaultPaintableInterface = defaultPaintableInterface;
    }
    

    Paintable getDefaultPaintableInterface() {
        return this.defaultPaintableInterface;
    }
    

    HighScoresFactoryInterface getHighScoresFactoryInterface() {
        return this.highScoresFactoryInterface;
    }
    

    void setMenuInputProcessor(BasicMenuInputProcessor menuInputProcessor) {
        this.menuInputProcessor = menuInputProcessor;
    }
    

    BasicMenuInputProcessor getMenuInputProcessor() {
        return this.menuInputProcessor;
    }
    

    ScrollSelectionForm getMenuForm() {
        return this.menuForm;
    }
    

    void setMenuForm(ScrollSelectionForm menuForm) {
        this.menuForm = menuForm;
    }
    

    @override
    bool isInitialized() {
        return this.initialized;
    }
    

    Paintable getOverlayPaintable() {
        return this.overlayPaintable;
    }
    

    void setBasicGameDemoPaintable(StatePaintable basicGameDemoPaintable) {
        this.basicGameDemoPaintable = basicGameDemoPaintable;
    }
    

    StatePaintable getBasicGameDemoPaintable() {
        return this.basicGameDemoPaintable;
    }
    

    void setTempWait(int tempWait) {
        this.tempWait = tempWait;
    }
    

    int getTempWait() {
        return this.tempWait;
    }
    

    @override
    bool isSingleThread() {
        return OpenGLFeatureUtil.getInstance().isAnyThreed() || SWTUtil.isSWT;
    }
    

    bool isRunningInAnotherThread() {
        final Features features = Features.getInstance();
        final OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
            return true;
        } else {
            return this.isRunning();
        }
    }
    

    BasicBuildGameInitializerFactory getGameInitializationInterfaceFactoryInterface() {
        return this.gameInitializationInterfaceFactoryInterface;
    }
    

    @override
    String getTitle() {
        return super.getTitle();
    }
    

    @override
    bool isPaused() {
        return super.isPaused();
    }
    

    @override
    int getType() {
        return super.getType();
    }
}

