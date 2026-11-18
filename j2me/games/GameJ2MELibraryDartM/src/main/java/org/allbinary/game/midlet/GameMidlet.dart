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
// package org.allbinary.game.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Enumeration.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Displayable.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCanvas.dart';
import 'package:allbinary/javax/microedition/midlet/MIDletStateChangeException.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateFactory.dart';
import 'package:allbinary/org/allbinary/canvas/FullScreenUtil.dart';
import 'package:allbinary/org/allbinary/canvas/GameStatisticsFactory.dart';
import 'package:allbinary/org/allbinary/debug/DebugFactory.dart';
import 'package:allbinary/org/allbinary/debug/DebugInterface.dart';
import 'package:allbinary/org/allbinary/game/GameAdState.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/GameMode.dart';
import 'package:allbinary/org/allbinary/game/GameStrings.dart';
import 'package:allbinary/org/allbinary/game/GameTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/PlayerTypesFactory.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameOptionsForm.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameOptionsFormFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/InGameFeatures.dart';
import 'package:allbinary/org/allbinary/game/configuration/InGameOptionsForm.dart';
import 'package:allbinary/org/allbinary/game/configuration/InGameOptionsFormFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/LoadGameForm.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/ChangedGameFeatureListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameFeatureEventHandler.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFormUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/GamePersistanceSingleton.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/KeyValuePersistance.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicPaintablesCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/DemoCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameEventHandlerUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameInputMappingCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/MenuListener.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.dart';
import 'package:allbinary/org/allbinary/game/input/TextNotificationUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEventHandler.dart';
import 'package:allbinary/org/allbinary/game/paint/help/HelpPaintable.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoreCommands.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoreCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoreTextBox.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoreUtil.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoresCanvas.dart';
import 'package:allbinary/org/allbinary/game/state/GameStateFactory.dart';
import 'package:allbinary/org/allbinary/graphics/ResizableListenerHandler.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/AboutCommandProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/AboutPaintableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/WebCommandProcessor.dart';
import 'package:allbinary/org/allbinary/input/AllBinarySensorManager.dart';
import 'package:allbinary/org/allbinary/input/event/VirtualKeyboardEventHandler.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/ClientInformationFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockableFeature.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LockableFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/AllBinaryMediaManager.dart';
import 'package:allbinary/org/allbinary/midlet/MidletStrings.dart';
import 'package:allbinary/org/allbinary/midlet/ProgressMidlet.dart';
import 'package:allbinary/org/allbinary/thread/NullThread.dart';
import 'package:allbinary/org/allbinary/thread/ThreadFactoryUtil.dart';
import 'package:allbinary/org/allbinary/thread/ThreadUtil.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/EnumerationUtil.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/midlet/GameMidletStateFactory.dart';
import 'package:allbinary/org/allbinary/game/midlet/GameMidletEventHandler.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletEvent.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletStateFactory.dart';

class GameMidlet extends ProgressMidlet implements CommandListener {
    late EnumerationUtil enumerationUtil;
    late BasicColorFactory basicColorFactory;
    late Features features;
    late MidletStrings midletStrings;
    late MyCommandsFactory myCommandsFactory;
    late GameStrings gameStrings;
    late GameAdStateFactory gameAdStateFactory;
    late GameStateFactory gameStateFactory;
    late TsUtil tsUtil;
    late String DISPLAYABLE;
    late String COMMAND_NAME;
    late String NO_COMMAND;
    late String NO_DISPLAYABLE;
    late String COMMAND_ACTION;
    late String PAUSE_APP_BACKGROUND;
    late String UN_PAUSE_APP_BACKGROUND;
    late AboutCommandProcessor aboutCommandProcessor;
    late WebCommandProcessor webCommandProcessor;
    late GameMidletStateFactory gameMidletStateFactory;
    late TimeDelayHelper gameStartTimeHelper;
    late FullScreenUtil fullScreenUtil;
    late DebugInterface debugInterface;
    late GameCanvasRunnableInterface allbinaryGameCanvasRunnableInterface;
    late Thread thread;
    late CommandForm loadGameForm;
    bool isFullScreen = false;
    bool resized = false;
    bool startedBefore = false;

    // Java field initializers run after the base constructor
    void initFieldsGameMidlet() {
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.features = Features.getInstance();
    this.midletStrings = MidletStrings.getInstance();
    this.myCommandsFactory = MyCommandsFactory.getInstance();
    this.gameStrings = GameStrings.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.DISPLAYABLE = " Displayable: ";
    this.COMMAND_NAME = "command Name/Label: ";
    this.NO_COMMAND = "No Command";
    this.NO_DISPLAYABLE = "No Displayable";
    this.COMMAND_ACTION = StringMaker().append("GameMidlet::").append(this.midletStrings.COMMAND_ACTION).toString();
    this.PAUSE_APP_BACKGROUND = "pauseAppBackground";
    this.UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground";
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance();
    this.webCommandProcessor = WebCommandProcessor.getInstance();
    this.gameMidletStateFactory = GameMidletStateFactory.getInstance();
    this.gameStartTimeHelper = TimeDelayHelper(240);
    this.fullScreenUtil = FullScreenUtil.getInstance();
    
    this.allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
    this.thread = NullThread.NULL_THREAD;
    
    this.isFullScreen = false;
    this.resized = false;
    this.startedBefore = false;
    }
    

    GameMidlet(ClientInformationFactory clientInformationFactory) : super(clientInformationFactory) {
        this.initFieldsGameMidlet();
        
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6);
        this.loadGameForm = CommandForm.getNullCommandForm();
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.init(this);
        GameFeatureEventHandler.getInstance().addListenerInterface(ChangedGameFeatureListener.getInstance());
        GamePersistanceSingleton.getInstance().clear();
        this.debugInterface = DebugFactory.getInstance();
        this.init();
    }
    

    void init() {
    }
    

    void setDemo() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void createGame() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void mediaShutdown() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void stopAll() {
    }
    

    @override
    void pauseApp() {
        this.pauseAppBackground(true);
        final GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().stopAll();
    }
    

    void pauseAppBackground(bool background) {
        this.logUtil.putF(this.commonStrings.START, this, this.PAUSE_APP_BACKGROUND);
        if (this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            this.allbinaryGameCanvasRunnableInterface.pause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.PAUSE_APP_BACKGROUND);
        }
        AllBinarySensorManager.getInstance().shutdown();
    }
    

    void unPauseApp() {
        this.unPauseAppBackground(true);
        final GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().startAll();
    }
    

    void unPauseAppBackground(bool background) {
        this.logUtil.putF(this.commonStrings.START, this, this.UN_PAUSE_APP_BACKGROUND);
        AllBinarySensorManager.getInstance().init();
        final GameCanvasRunnableInterface gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            gameCanvasRunnableInterface.unPause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.UN_PAUSE_APP_BACKGROUND);
        }
    }
    

    @override
    void destroyAppInRunnable(bool unconditional, bool isProgress) {
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        if (isProgress) {
            progressCanvas.start();
            this.commandAction(this.myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
        }
        this.destroyApp(unconditional);
        if (isProgress) {
            progressCanvas.end();
        }
    }
    

    @override
    void destroyApp(bool unconditional) {
        final String METHOD_NAME = "GameMidlet::destroyApp";
        try {
            PreLogUtil.put(GameStatisticsFactory.getInstance().toString(), this, METHOD_NAME);
            final GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().stopAll();
            if (!this.isDestroyed()) {
                this.stopGameCanvasRunnableInterface();
                this.setGameCanvasRunnableInterface(NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
                this.mediaShutdown();
            } else {
                this.logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, METHOD_NAME);
            }
            super.destroyApp(true);
            PreLogUtil.put(this.commonStrings.END, this, METHOD_NAME);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e);
            }
        }
        this.logUtil.putF(this.commonStrings.END, this, METHOD_NAME);
    }
    

    @override
    void startApp() {
        try {
            final GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().startAll();
            final String START_APP = "startApp";
            this.logUtil.putF(this.commonStrings.START, this, START_APP);
            final Object gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
            if (gameCanvasRunnableInterface == NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
                this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                this.setDemo();
            } else {
                this.logUtil.putF("GameCanvasRunnableInterface is available", this, START_APP);
                if (gameCanvasRunnableInterface == this.getCurrentDisplayable()) {
                    this.unPauseAppBackground(false);
                } else {
                    this.logUtil.putF("GameCanvasRunnableInterface is not current displayable", this, START_APP);
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "startApp", e);
            this.destroyApp(false);
            this.notifyDestroyed();
            }
        }
    }
    

    @override
    void commandAction(Command command, Displayable displayable) {
        try {
            String displayableAsString = this.NO_DISPLAYABLE;
            if (displayable != null) {
                displayableAsString = displayable.toString();
            }
            String label = this.NO_COMMAND;
            if (command != null) {
                label = command.getLabel();
            }
            PreLogUtil.put(StringMaker().append(this.COMMAND_NAME).append(label).append(this.DISPLAYABLE).append(displayableAsString).toString(), this, this.COMMAND_ACTION);
            final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
            final GameCanvasRunnableInterface allbinaryGameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
            final Object gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface;
            if (command == gameCommandsFactory.SHOW_GAME_CANVAS) {
                if (this.getDisplay().getCurrent() != gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.getType()) {
                    this.setDisplay((gameCanvasRunnableInterface as Displayable));
                }
                this.unPauseAppBackground(false);
            } else if (command == gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) {
                final MenuListener menuListener = (displayable as MenuListener);
                menuListener.close();
                this.setDisplay((gameCanvasRunnableInterface as Displayable));
                this.unPauseAppBackground(false);
            } else if (command == gameCommandsFactory.EXIT_COMMAND) {
                if (GameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size() == 0) {
                    this.exitProgress(true);
                }
                GameMidletEventHandler.getInstance().fireEvent(DemoGameMidletEvent(this, DemoGameMidletStateFactory.getInstance().NONE));
            } else if (command == gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) {
                this.exitProgress(false);
            } else if (command == gameCommandsFactory.START_COMMAND || command == gameCommandsFactory.RESTART_COMMAND || command == gameCommandsFactory.CONTINUE_COMMAND) {
                if (this.gameMidletStateFactory.getCurrentGameState() != this.gameStateFactory.PLAYING_GAME_STATE || command == gameCommandsFactory.RESTART_COMMAND) {
                    if (this.gameStartTimeHelper.isTimeTNT()) {
                        if (command == gameCommandsFactory.START_COMMAND && this.isDemoLoading()) {
                            this.logUtil.putF("Trying to Start Game Before Loading Complete", this, this.midletStrings.COMMAND_ACTION);
                        } else {
                            this.startedBefore = true;
                            this.createGame();
                            this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.PLAYING_GAME_STATE);
                        }
                    } else {
                        this.logUtil.putF("Starting Game Too Often", this, this.midletStrings.COMMAND_ACTION);
                    }
                } else {
                    this.logUtil.putF("Already in playing state", this, this.COMMAND_ACTION);
                }
            } else if (command == gameCommandsFactory.BUY_COMMAND) {
                InApplicationPurchaseFactory inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance();
                final BasicArrayList list = LockableFeatureFactory.getInstance().getList();
                final LockableFeature lockableFeature = (list.get(0) as LockableFeature);
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(lockableFeature)) {
                    inApplicationPurchaseFactory.purchase(lockableFeature);
                } else {
                    TextNotificationUtil.getInstance().fireSuccess("Already Purchased");
                }
            } else if (command == gameCommandsFactory.QUIT_COMMAND) {
                if (this.gameStartTimeHelper.isTimeTNT()) {
                    if ((displayable is HighScoreTextBox)) {
                        final MenuListener menuListener = (displayable as MenuListener);
                        menuListener.close();
                    }
                    this.stopGameCanvasRunnableInterface();
                    this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                    this.setDemo();
                }
            } else if (command == this.myCommandsFactory.RESUME_COMMAND) {
                this.unPauseAppBackground(false);
            } else if (command == this.myCommandsFactory.PAUSE_COMMAND) {
                this.pauseAppBackground(false);
            } else if (command == this.myCommandsFactory.SET_DISPLAYABLE) {
                this.pauseAppBackground(false);
                this.setDisplay(displayable);
            } else if (command == gameCommandsFactory.SET_MENU_DISPLAYABLE) {
                this.pauseAppBackground(false);
                final MenuListener menuListener = (displayable as MenuListener);
                menuListener.open();
                this.setDisplay(displayable);
            } else if (command == gameCommandsFactory.START_TRACE) {
                this.debugInterface.start();
                final AllBinaryGameCanvas gameCanvas = (allbinaryGameCanvasRunnableInterface as AllBinaryGameCanvas);
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE);
            } else if (command == gameCommandsFactory.STOP_TRACE) {
                this.pauseAppBackground(false);
                this.debugInterface.stop();
                this.unPauseAppBackground(false);
                final AllBinaryGameCanvas gameCanvas = (allbinaryGameCanvasRunnableInterface as AllBinaryGameCanvas);
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE);
            } else if (command == gameCommandsFactory.DEFAULT_OPTIONS) {
                final Displayable tempDisplayable = displayable;
                if ((tempDisplayable is GameOptionsForm)) {
                    GameFeatureFormUtil.getInstance().setDefault((tempDisplayable as CommandForm));
                }
            } else if (command == GameInputMappingInstructionsCanvas.DISPLAY) {
                final Displayable tempDisplayable = displayable;
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    GameInputMappingCanvas gameInputMappingCanvas = tempDisplayable;
                    gameInputMappingCanvas.update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingInstructionsCanvas());
            } else if (HighScoreCommandsFactory.getInstance().isHighScoreCommand(command)) {
                final Displayable tempDisplayable = displayable;
                if ((tempDisplayable is HighScoresCanvas)) {
                    final HighScoresCanvas highScoresCanvas = tempDisplayable;
                    highScoresCanvas.updateCommand(command);
                }
            } else if (command == HighScoreCommands.getInstance().DISPLAY) {
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.createHighScoresCanvas());
            } else if (command == GameInputMappingInstructionsCanvas.CLOSE) {
                final MenuListener menuListener = (displayable as MenuListener);
                menuListener.close();
                this.commandAction(GameInputMappingCanvas.DISPLAY, NullCanvas.NULL_CANVAS);
            } else if (command == GameInputMappingCanvas.DISPLAY) {
                if (J2MEUtil.isHTML()) {
                    this.pauseAppBackground(false);
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingCanvas());
            } else if (command == GameInputMappingCanvas.DEFAULT) {
                final Displayable tempDisplayable = displayable;
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    GameInputMappingCanvas gameInputMappingCanvas = tempDisplayable;
                    gameInputMappingCanvas.setDefault();
                }
            } else if (command == InGameOptionsForm.DISPLAY) {
                this.pauseAppBackground(false);
                final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
                progressCanvas.addNormalPortion(50, "In Game Options");
                final AllBinaryGameLayerManager layerManager = this.createGameLayerManager();
                final InGameOptionsFormFactory inGameOptionsFormFactory = InGameOptionsFormFactory.getInstance();
                inGameOptionsFormFactory.init(this, InGameFeatures(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
                final CommandForm inGameOptionsForm = inGameOptionsFormFactory.get();
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm);
            } else if (command == InGameOptionsForm.DEFAULT) {
                final InGameOptionsForm inGameOptionsForm = (InGameOptionsFormFactory.getInstance().get() as InGameOptionsForm);
                GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm);
            } else if (command == gameCommandsFactory.DISPLAY_OPTIONS) {
                AllBinaryMediaManager.setMuted(true);
                this.stopAll();
                final MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
                this.isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                ResizableListenerHandler.getInstance().fireEvent(true);
                this.setResized(false);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getGameOptionsForm());
            } else if (command == gameCommandsFactory.CLOSE_OPTIONS) {
                ResizableListenerHandler.getInstance().fireEvent(false);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
                final StringMaker stringBuffer = StringMaker();
                stringBuffer.append("Close isFullScreen/change: ");
                stringBuffer.appendboolean(this.isFullScreen);
                stringBuffer.appendboolean(this.fullScreenUtil.isScreenChange(this.isFullScreen));
                stringBuffer.append(" isResized: ");
                stringBuffer.appendboolean(this.isResized());
                PreLogUtil.put(stringBuffer.toString(), this, this.COMMAND_ACTION);
                if (this.isResized() || this.fullScreenUtil.isScreenChange(this.isFullScreen)) {
                    this.updateFullScreen();
                }
                AllBinaryMediaManager.setMuted(false);
            } else if (command == gameCommandsFactory.DISPLAY_LOAD_FORM) {
                this.pauseAppBackground(false);
                final KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                keyValuePersistance.clear();
                keyValuePersistance.loadAll(this.abeClientInformation);
                if (this.getLoadGameForm() == CommandForm.getNullCommandForm()) {
                    final AllBinaryGameLayerManager layerManager = this.createGameLayerManager();
                    this.setLoadGameForm(LoadGameForm(this, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
                } else {
                    this.getLoadGameForm().update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getLoadGameForm());
            } else if (command == gameCommandsFactory.LOAD_FILE) {
                final LoadGameForm loadGameForm = (this.getLoadGameForm() as LoadGameForm);
                final int index = loadGameForm.getSelectedId();
                if (index != -1) {
                    final KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                    this.setStartStateHashtable(keyValuePersistance.get(index));
                    final MenuListener menuListener = this.getLoadGameForm();
                    menuListener.close();
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION);
                    this.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas.NULL_CANVAS);
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION);
                }
            } else if (command == gameCommandsFactory.DELETE_FILE) {
                final LoadGameForm loadGameForm = (this.getLoadGameForm() as LoadGameForm);
                final int index = loadGameForm.getSelectedText();
                if (index != -1) {
                    final KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                    keyValuePersistance.delete(this.abeClientInformation, index);
                    keyValuePersistance.clear();
                    keyValuePersistance.loadAllSize(this.abeClientInformation, 1);
                    this.getLoadGameForm().update();
                }
            } else if (command == gameCommandsFactory.SAVE) {
                final KeyValuePersistance keyValuePersistance = GamePersistanceSingleton.getInstance();
                this.pauseAppBackground(false);
                keyValuePersistance.save(this.abeClientInformation, this.getCurrentStateHashtable());
                this.unPauseAppBackground(false);
            } else if (command == HighScoreUtil.SUBMIT_TEXTBOX_COMMAND) {
                this.logUtil.putF("Submitted Score", this, this.COMMAND_ACTION);
                if ((displayable is HighScoreTextBox)) {
                    final HighScoreTextBox highScoreTextBox = displayable;
                    highScoreTextBox.submitted = true;
                }
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
            } else if (command == gameCommandsFactory.DISPLAY_ABOUT) {
                this.aboutCommandProcessor.process(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getAboutCanvas());
            } else if (command == gameCommandsFactory.OPEN_WEB_URL) {
                this.webCommandProcessor.process(this, gameCommandsFactory.OPEN_WEB_URL, NullCanvas.NULL_CANVAS);
            } else if (command == gameCommandsFactory.TOGGLE_KEYBOARD) {
                final VirtualKeyboardEventHandler virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance();
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT);
            } else if (this.tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0) {
                final MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
                final bool isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                if (isFullScreen) {
                    this.features.removeDefault(mainFeatureFactory.FULL_SCREEN);
                } else {
                    this.features.addDefault(mainFeatureFactory.FULL_SCREEN);
                }
                this.updateFullScreen();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(command.getLabel()).toString(), this, this.midletStrings.COMMAND_ACTION, e);
            if (command != GameCommandsFactory.getInstance().EXIT_COMMAND) {
                this.exitProgress(false);
            }
            }
        }
    }
    

    void updateFullScreen() {
        final MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
        final bool isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
        final Displayable displayable = this.getDisplay().getCurrent();
        if ((displayable is Canvas)) {
            final Canvas canvas = displayable;
            canvas.setFullScreenMode(isFullScreen);
        }
    }
    

    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    MyCanvas getInputMappingInstructionsCanvas() {
        return GameInputMappingInstructionsCanvas(this, this.createGameLayerManager());
    }
    

    MyCanvas getInputMappingCanvas() {
        return GameInputMappingCanvas(this.abeClientInformation, this, this.createGameLayerManager(), this.getHelpPaintable());
    }
    

    MyCanvas getAboutCanvas() {
        return BasicPaintablesCanvas(this, CanvasStrings.getInstance().ABOUT, this.createGameLayerManager(), AboutPaintableFactory.getInstance().paintableArray);
    }
    

    HelpPaintable getHelpPaintable() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    HighScoresCanvas createHighScoresCanvas() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void startGameCanvasRunnableInterface() {
        final ThreadFactoryUtil threadFactoryUtil = ThreadFactoryUtil.getInstance();
        this.thread = threadFactoryUtil.getInstanceGameCanvasRunnable(this.allbinaryGameCanvasRunnableInterface);
        this.logUtil.putF(StringMaker().append("Thread Priority: ").appendint(this.thread.getPriority()).toString(), this, "startGameCanvasRunnableInterface");
        this.allbinaryGameCanvasRunnableInterface.setThread(this.thread);
        threadFactoryUtil.start(this.thread);
    }
    

    void stopGameCanvasRunnableInterface() {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        GameNotificationEventHandler.getInstance().removeAllListeners();
        ColorChangeEventHandler.getInstance().removeAllListeners();
        GameEventHandlerUtil.removeAllListeners();
        final GameCanvasRunnableInterface gameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            this.logUtil.putF(StringMaker().append("Set Running False: ").append(gameCanvasRunnableInterface.toString()).toString(), this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface.setRunning(false);
        } else {
            this.logUtil.putF("StopGame - Could Not Stop", this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        }
        ThreadUtil.getInstance().join(this.thread);
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable");
        } else {
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable");
        }
        this.logUtil.putF(this.commonStrings.END, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
    }
    

    GameCanvasRunnableInterface getGameCanvasRunnableInterface() {
        return this.allbinaryGameCanvasRunnableInterface;
    }
    

    void setGameCanvasRunnableInterface(GameCanvasRunnableInterface gameCanvasRunnableInterface) {
        this.allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface;
    }
    

    AllBinaryGameLayerManager createGameLayerManager() {
        final GameInfo gameInfo = GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1);
        return AllBinaryGameLayerManager(this.basicColorFactory.BLACK, this.basicColorFactory.WHITE, gameInfo);
    }
    

    CommandForm getGameOptionsForm() {
        final AllBinaryGameLayerManager layerManager = this.createGameLayerManager();
        return GameOptionsFormFactory.getInstance().init(this, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
    }
    

    void save() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.SAVE);
        final ABHashtable hashtable = this.getCurrentStateHashtable();
        GamePersistanceSingleton.getInstance().save(this.abeClientInformation, hashtable);
    }
    

    @override
    ABHashtable getCurrentStateHashtable() {
        this.logUtil.putF(this.commonStrings.START, this, "getCurrentStateHashtable");
        final ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        if (this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            final ABHashtable currentHashtable = this.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable();
            final Enumeration enumeration = currentHashtable.keys();
            late Object key;
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                key = this.enumerationUtil.nextElement(enumeration);
                hashtable.put(key, currentHashtable.get(key));
            }
        }
        return hashtable;
    }
    

    void setLoadGameForm(LoadGameForm loadGameForm) {
        this.loadGameForm = loadGameForm;
    }
    

    CommandForm getLoadGameForm() {
        return this.loadGameForm;
    }
    

    void setResized(bool resized) {
        this.resized = resized;
    }
    

    bool isResized() {
        return this.resized;
    }
    

    bool isDemoLoading() {
        if (this.startedBefore) {
            return false;
        }
        final Displayable displayable = this.getDisplay().getCurrent();
        if ((displayable is DemoCanvas)) {
            final DemoCanvas demoCanvas = displayable;
            if (demoCanvas.isDemoLoading()) {
                return true;
            }
        }
        return false;
    }
}

