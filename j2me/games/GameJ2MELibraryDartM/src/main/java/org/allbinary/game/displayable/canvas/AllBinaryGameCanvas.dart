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
import 'package:allbinary/javax/microedition/lcdui/ChoiceGroup.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCommandListener.dart';
import 'package:allbinary/org/allbinary/AndroidUtil.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateFactory.dart';
import 'package:allbinary/org/allbinary/canvas/BaseGameStatistics.dart';
import 'package:allbinary/org/allbinary/canvas/GameStatisticsFactory.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/canvas/RunnableCanvas.dart';
import 'package:allbinary/org/allbinary/debug/DebugFactory.dart';
import 'package:allbinary/org/allbinary/debug/NoDebug.dart';
import 'package:allbinary/org/allbinary/game/GameAdState.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/GameStrings.dart';
import 'package:allbinary/org/allbinary/game/GameTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/Intermission.dart';
import 'package:allbinary/org/allbinary/game/IntermissionCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/IntermissionEnableListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/IntermissionInterface.dart';
import 'package:allbinary/org/allbinary/game/PlayerTypesFactory.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/InGameFeatures.dart';
import 'package:allbinary/org/allbinary/game/configuration/InGameOptionsForm.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/ChangedGameFeatureListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedEvent.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameInitializedEventHandler.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/TouchFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory.dart';
import 'package:allbinary/org/allbinary/game/init/BasicBuildGameInitializerFactory.dart';
import 'package:allbinary/org/allbinary/game/init/GameInitializationUtil.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputStrings.dart';
import 'package:allbinary/org/allbinary/game/input/InputProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/NoPlayerGameInput.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/layer/SWTUtil.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillBasePaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillPaintableFactory.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevel.dart';
import 'package:allbinary/org/allbinary/game/resource/ResourceLoadingLevelFactory.dart';
import 'package:allbinary/org/allbinary/game/score/HighScore.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBaseInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresPaintable.dart';
import 'package:allbinary/org/allbinary/game/score/NullHighScoresSingletonFactory.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoreTextBox.dart';
import 'package:allbinary/org/allbinary/game/state/GameState.dart';
import 'package:allbinary/org/allbinary/game/state/GameStateFactory.dart';
import 'package:allbinary/org/allbinary/graphics/GraphicsStrings.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/ScreenCapture.dart';
import 'package:allbinary/org/allbinary/graphics/ScreenCaptureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEventListener.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/CommandCurrentSelectionFormFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormNoneFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CommandTextItemArrayFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/CurrentDisplayableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureUtil.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLThreadUtil.dart';
import 'package:allbinary/org/allbinary/graphics/paint/InitUpdatePaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullInitUpdatePaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLImageSpecificFactory.dart';
import 'package:allbinary/org/allbinary/input/gyro/SensorGameUpdateProcessor.dart';
import 'package:allbinary/org/allbinary/input/gyro/SingleSensorGameUpdateProcessor.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BaseTouchInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/NoButtonsTouchInputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonsPaintableFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/AllBinaryMediaManager.dart';
import 'package:allbinary/org/allbinary/media/audio/PlayerQueue.dart';
import 'package:allbinary/org/allbinary/media/audio/PrimaryPlayerQueueFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/SecondaryPlayerQueueFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/SelectSound.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/thread/SecondaryThreadPool.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/MenuListener.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/PopupMenuInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/FormUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/MyFormUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/EndGameInfo.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NoMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/DemoGameBehavior.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BaseMenuBehavior.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BaseGameBehavior.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicPopupMenuPaintable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/PopupMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/InGameMenuBehavior.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameLimitedCommandTextItemArrayFactory.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/PopupCommandFormInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullWaitGameRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/CheatGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/EndGameProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/StartIntermissionProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/EndGamePaintable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullDemoPaintable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/DemoPaintableInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/FormInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/SaveHighScoreRunnable.dart';

class AllBinaryGameCanvas extends RunnableCanvas implements AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, IntermissionCompositeInterface, IntermissionEnableListenerInterface, PopupMenuInterface, DisplayChangeEventListener, UpdateMyFontInterface {
    static const int id = 0;
    static const int TYPE = 2;
    late BasicColorFactory basicColorFactory;
    late BasicColorSetUtil basicSetColorUtil;
    late TouchFeatureFactory touchFeatureFactory;
    late OpenGLFeatureFactory openGLFeatureFactory;
    late TouchButtonFactory touchButtonFactory;
    late GameAdStateFactory gameAdStateFactory;
    late GameStrings gameStrings;
    late GameInputStrings gameInputStrings;
    late GameStateFactory gameStateFactory;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;
    late GameTickDisplayInfoSingleton gameTickDisplayInfoSingleton;
    late GameCanvasRunnable gameRunnable;
    late GameCanvasPauseRunnable gamePauseRunnable;
    late FormUtil formUtil;
    late MyFormUtil myFormUtil;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    late Paintable gameSpecificPaintable;
    late SensorGameUpdateProcessor sensorGameUpdateProcessor;
    late EndGameInfo endGameInfo;
    late IntermissionInterface startIntermissionInterface;
    late IntermissionInterface endLevelIntermissionInterface;
    late AllBinaryGameLayerManager gameLayerManager;
    late GameState gameState;
    bool gameOver = false;
    bool initialized = false;
    late TimeDelayHelper gameStateTimeHelper;
    late HighScoresHelperBaseInterface highScoresHelper;
    bool highScoreSubmitted = false;
    late HighScoresPaintable realHighScoresPaintable;
    late Paintable highScoresPaintable;
    late BasicArrayList localPlayerGameInputList;
    bool isCheating = false;
    late ABHashtable hashtable;
    bool isSingleKeyRepeatableProcessing = false;
    late BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface;
    late Paintable touchButtonsPaintable;
    late Paintable touchPaintable;
    late PlayerGameInput cheatProcessor;
    late Processor gameInputProcessor;
    late Processor endGameProcessor;
    late Processor realEndGameProcessor;
    late Processor startIntermissionProcessor;
    late Processor realStartIntermissionProcessor;
    late Paintable endGamePaintable;
    late Paintable endGameStatePaintable;
    late Paintable nonBotPaintable;
    late Paintable intermissionPaintable;
    late InitUpdatePaintable startIntermissionPaintable;
    late Processor mainStateProcessor;
    late Processor processGameProcessor;
    late HighScoresFactoryInterface highScoresFactoryInterface;
    int startLevel = 0;
    late BasicMenuInputProcessor mainMenuInputProcessor;
    late BasicMenuInputProcessor popupMenuInputProcessor;
    late BasicMenuInputProcessor menuInputProcessor;
    late ScrollSelectionForm menuForm;
    late Paintable formPaintable;
    late Paintable openMenuPaintable;
    late Paintable menuPaintable;
    late BaseTouchInput currentTouchInputFactory;
    late ColorFillBasePaintable colorFillPaintable;
    late BaseGameStatistics baseGameStatistics;
    late PlayerQueue primaryPlayerQueue;
    late PlayerQueue secondaryPlayerQueue;
    late String BUILD_GAME;
    late GameTypeFactory gameTypeFactory;
    late ScreenCapture screenCapture;
    late BasicMotionGesturesHandler basicMotionGesturesHandler;
    late GameKeyEventHandler gameKeyEventHandler;
    late DemoGameBehavior gameBehavior;
    late BaseMenuBehavior menuBehavior;
    late PaintableInterface progressPaintable;
    int fontHeightP = 0;
    late DemoPaintableInterface gameCanvasStartListener;
    late InputProcessor rawGameInputProcessor;
    late InputProcessor rawInputProcessor;
    late InputProcessor inputProcessor;
    int YIELD_SLEEP = 0;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryGameCanvas() {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.touchFeatureFactory = TouchFeatureFactory.getInstance();
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
    this.touchButtonFactory = TouchButtonFactory.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStrings = GameStrings.getInstance();
    this.gameInputStrings = GameInputStrings.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance();
    this.gameRunnable = GameCanvasRunnable(this);
    this.gamePauseRunnable = GameCanvasPauseRunnable(this);
    this.formUtil = FormUtil.getInstance();
    this.myFormUtil = MyFormUtil.getInstance();
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.gameSpecificPaintable = NullPaintable.getInstance();
    this.sensorGameUpdateProcessor = SingleSensorGameUpdateProcessor();
    this.endGameInfo = EndGameInfo();
    this.startIntermissionInterface = Intermission();
    this.endLevelIntermissionInterface = Intermission();
    this.gameLayerManager = AllBinaryGameLayerManager.getNullInstance();
    this.gameState = this.gameStateFactory.NO_GAME_STATE;
    this.gameOver = false;
    this.initialized = false;
    this.gameStateTimeHelper = TimeDelayHelper(0);
    
    this.highScoreSubmitted = false;
    this.realHighScoresPaintable = HighScoresPaintable();
    this.highScoresPaintable = NullPaintable.getInstance();
    this.localPlayerGameInputList = BasicArrayListD();
    this.isCheating = false;
    this.hashtable = this.stdUtil.NULL_TABLE;
    this.isSingleKeyRepeatableProcessing = false;
    this.gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
    this.touchButtonsPaintable = NullPaintable.getInstance();
    this.touchPaintable = NullPaintable.getInstance();
    this.cheatProcessor = NoPlayerGameInput.getInstance();
    this.gameInputProcessor = Processor.getInstance();
    this.endGameProcessor = Processor.getInstance();
    this.realEndGameProcessor = Processor.getInstance();
    this.startIntermissionProcessor = Processor.getInstance();
    this.realStartIntermissionProcessor = Processor.getInstance();
    this.endGamePaintable = NullPaintable.getInstance();
    this.endGameStatePaintable = NullPaintable.getInstance();
    this.nonBotPaintable = NullPaintable.getInstance();
    this.intermissionPaintable = NullPaintable.getInstance();
    this.startIntermissionPaintable = NullInitUpdatePaintable.getInstance();
    this.mainStateProcessor = Processor.getInstance();
    this.processGameProcessor = Processor.getInstance();
    
    this.startLevel = 0;
    this.mainMenuInputProcessor = NoMenuInputProcessor.getInstance();
    this.popupMenuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm();
    this.formPaintable = NullPaintable.getInstance();
    this.openMenuPaintable = NullPaintable.getInstance();
    this.menuPaintable = NullPaintable.getInstance();
    this.currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance();
    this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(this.basicColorFactory.BLACK, true);
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
    this.primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance();
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance();
    this.BUILD_GAME = "buildGame";
    this.gameTypeFactory = GameTypeFactory.getInstance();
    this.screenCapture = ScreenCaptureFactory.getInstance();
    this.basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance();
    this.gameKeyEventHandler = GameKeyEventHandler.getInstance();
    
    
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance();
    this.fontHeightP = 0;
    this.gameCanvasStartListener = NullDemoPaintable.NULL_DEMO_PAINTABLE;
    this.rawGameInputProcessor = GameCanvasInputProcessor(this);
    this.rawInputProcessor = FormInputProcessor(this);
    this.inputProcessor = this.getRawGameInputProcessor();
    this.YIELD_SLEEP = 100;
    }
    

    AllBinaryGameCanvas(CommandListener commandListener, AllBinaryGameLayerManager gameLayerManager, HighScoresFactoryInterface highScoresFactoryInterface, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface, bool buffered) : super(commandListener, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true) {
        this.initFieldsAllBinaryGameCanvas();
        
        this.highScoresHelper = highScoresFactoryInterface.createHighScoresHelper();
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        this.init(gameLayerManager, buffered);
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        if (this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.BOT || this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.NONE) {
            this.gameBehavior = DemoGameBehavior.getInstance();
            this.menuBehavior = BaseMenuBehavior.getInstance();
        } else {
            this.gameBehavior = BaseGameBehavior.getInstance();
            this.menuBehavior = this.getInGameMenuBehavior();
        }
        this.initPopupMenu();
        this.initMenu();
        this.initSpecialPaint();
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        try {
            final Font font = graphics.getFont();
            this.logUtil.putF(StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeightP = font.getHeight();
            this.myFormUtil.updateMeasurement(graphics);
            final Rectangle popupMenuRectangle = this.myFormUtil.getPopupMenuRectangle();
            final BasicPopupMenuPaintable basicPopupMenuPaintable = ((this.getOpenMenuPaintable() as BasicPopupMenuPaintable));
            basicPopupMenuPaintable.init(popupMenuRectangle);
            if (this.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance()) {
                final PopupMenuInputProcessor popupMenuInputProcessor = ((this.getPopupMenuInputProcessor() as PopupMenuInputProcessor));
                popupMenuInputProcessor.init(popupMenuRectangle);
            }
            this.myFontProcessor = MyFontProcessor.getInstance();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
        }
    }
    

    BaseMenuBehavior getInGameMenuBehavior() {
        return InGameMenuBehavior.getInstance();
    }
    

    @override
    void setCurrentThread() {
        if (J2MEUtil.isHTML()) {
            super.setCurrentThreadFake();
        } else {
            super.setCurrentThread();
        }
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        try {
            this.logUtil.putF(StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.myFontProcessor = this.updateMyFontProcessor;
            this.menuBehavior.onDisplayChangeEvent(this, displayChangeEvent);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
            }
        }
    }
    

    void updateMenuFromEvent(DisplayChangeEvent displayChangeEvent) {
        final FormType formType = FormTypeFactory.getInstance().getFormType();
        final Rectangle rectangle = this.formUtil.createFormRectangle();
        this.menuForm.init(rectangle, formType);
        if (this.currentTouchInputFactory != NoButtonsTouchInputFactory.getInstance()) {
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList());
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    @override
    void processSleep() {
        super.processSleep();
        if (AllBinaryMediaManager.update()) {
            if (!this.primaryPlayerQueue.process()) {
                this.secondaryPlayerQueue.process();
            }
        }
        if (this.menuInputProcessor.processInputList() != -1) {
            this.runnableCanvasRefreshHelper.process();
        }
    }
    

    void initPopupMenu() {
        if (this.popupMenuInputProcessor == NoMenuInputProcessor.getInstance()) {
            final Features features = Features.getInstance();
            final Rectangle popupMenuRectangle = this.myFormUtil.getPopupMenuRectangle();
            if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
                this.setOpenMenuPaintable(BasicPopupMenuPaintable(popupMenuRectangle, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
                this.setPopupMenuInputProcessor(PopupMenuInputProcessor(BasicArrayListD(), -1, this, popupMenuRectangle));
            }
        } else {
        }
    }
    

    void initMenu() {
        try {
            this.menuBehavior.initMenu(this);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e);
            }
        }
    }
    

    void initMenu2() {
        this.closeMenu();
        final FormType formType = FormTypeFactory.getInstance().getFormType();
        final GameLimitedCommandTextItemArrayFactory gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance();
        final CommandTextItemArrayFactory commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        final List<ABCustomItem?> items = commandTextItemArrayFactory.getInstance3(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        final Rectangle rectangle = this.formUtil.createFormRectangle();
        this.setMenuForm(CommandCurrentSelectionFormFactory.getInstance8(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
        final ScrollSelectionForm scrollSelectionForm = this.getMenuForm();
        final Features features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
            this.mainMenuInputProcessor = PopupCommandFormInputProcessor(BasicArrayListD(), -1, this, scrollSelectionForm, (this.getPopupMenuInputProcessor() as PopupMenuInputProcessor));
        } else {
        }
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
        if (scrollSelectionForm != ScrollSelectionFormNoneFactory.getInstance()) {
            this.setFormPaintable(FormPaintable(scrollSelectionForm));
        } else {
        }
        this.closeMenu();
    }
    

    void updateMenu() {
        try {
            this.menuBehavior.updateMenu(this);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e);
            }
        }
    }
    

    void updateMenu2() {
        final ScrollSelectionForm scrollSelectionForm = this.getMenuForm();
        scrollSelectionForm.deleteAll();
        final GameLimitedCommandTextItemArrayFactory gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance();
        final CommandTextItemArrayFactory commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        final List<ABCustomItem?> items = commandTextItemArrayFactory.getInstance3(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        final int size = items.length;
        for (int index = 0; index < size; index++) {
            scrollSelectionForm.append(items[index]!);
        }
        final FormType formType = FormTypeFactory.getInstance().getFormType();
        final Rectangle rectangle = this.formUtil.createFormRectangle();
        scrollSelectionForm.init(rectangle, formType);
    }
    

    @override
    void pause() {
        this.gameBehavior.pause(this);
        this.closeMenu();
        super.pause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance());
        this.tsUtil.gc();
    }
    

    @override
    void unPause() {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.UNPAUSE);
        this.closeMenu();
        this.tsUtil.gc();
        super.unPause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance());
        this.gameBehavior.unPause(this);
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
    void popupMenu() {
        this.menuBehavior.popupMenu(this);
    }
    

    void popupMenu2() {
        this.primaryPlayerQueue.add(SelectSound.getInstance());
        this.setMenuPaintable(this.getFormPaintable());
        this.setMenuInputProcessor(this.mainMenuInputProcessor);
        this.basicMotionGesturesHandler.addListenerInterface(this.mainMenuInputProcessor);
        this.gameKeyEventHandler.addListener(this.mainMenuInputProcessor);
    }
    

    @override
    void toggleMenu() {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.TOGGLE_MENU);
        if (identical(this.getMenuPaintable(), this.getOpenMenuPaintable())) {
            this.pause();
            this.updateMenu();
            this.popupMenu();
        } else if (identical(this.getMenuPaintable(), this.getFormPaintable())) {
            this.primaryPlayerQueue.add(SelectSound.getInstance());
            this.unPause();
        }
    }
    

    @override
    void closeMenu() {
        this.menuBehavior.closeMenu(this);
    }
    

    void closeMenu2() {
        this.setMenuPaintable(this.getOpenMenuPaintable());
        this.basicMotionGesturesHandler.removeListener(this.mainMenuInputProcessor);
        this.gameKeyEventHandler.removeListener(this.mainMenuInputProcessor);
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
    }
    

    @override
    void open() {
        this.basicMotionGesturesHandler.addListenerInterface(this.menuInputProcessor);
        this.gameKeyEventHandler.addListener(this.menuInputProcessor);
    }
    

    @override
    void close() {
        this.basicMotionGesturesHandler.removeListener(this.menuInputProcessor);
        this.gameKeyEventHandler.removeListener(this.menuInputProcessor);
        this.primaryPlayerQueue.clear();
        this.secondaryPlayerQueue.clear();
    }
    

    void processorInit() {
        this.setMainStateProcessor(Processor.getInstance());
        this.setProcessGameProcessorInit();
    }
    

    void setProcessGameProcessorInit() {
        this.setProcessGameProcessor(GameProcessor(this));
    }
    

    void initSpecialPaint() {
        this.menuBehavior.initSpecialPaint(this);
    }
    

    void init(AllBinaryGameLayerManager gameLayerManager, bool buffered) {
        this.gameStateTimeHelper.setStartTimeTNT();
        this.setHighScoreSubmitted(false);
        this.setLayerManager(gameLayerManager);
        if (!buffered) {
            final String BUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX";
            this.logUtil.putF(BUFF_MESSAGE, this, this.commonStrings.CONSTRUCTOR);
        } else {
            throw JException('Exception', "Buffering is disabled");
        }
        this.setGameInputProcessor(Processor.getInstance());
        final Features features = Features.getInstance();
        if (features.isFeature(GameFeatureFactory.getInstance().CHEATING)) {
            this.isCheating = true;
            this.cheatProcessor = CheatGameInputProcessor(this);
            this.gameKeyEventHandler.addListener(this.cheatProcessor);
        } else {
            this.isCheating = false;
            this.cheatProcessor = NoPlayerGameInput.getInstance();
        }
        this.realEndGameProcessor = EndGameProcessor(this);
        this.setEndGameProcessor(Processor.getInstance());
        this.realStartIntermissionProcessor = StartIntermissionProcessor(this);
        this.startIntermissionProcessor = Processor.getInstance();
        this.setEndGameStatePaintable(EndGamePaintable(this));
        this.setEndGamePaintable(NullPaintable.getInstance());
        this.setIntermissionPaintable(NullPaintable.getInstance());
        this.getStartIntermissionInterface().setListener(this);
    }
    

    @override
    void notifyIntermission(bool enable) {
        if (enable) {
            this.startIntermissionProcessor = this.realStartIntermissionProcessor;
        } else {
            this.startIntermissionProcessor = Processor.getInstance();
        }
        if (enable) {
            this.setIntermissionPaintable(this.getStartIntermissionPaintable());
        } else {
            this.setIntermissionPaintable(NullPaintable.getInstance());
        }
    }
    

    void mediaInit() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    void initConfigurable(AbeClientInformationInterface abeClientInformation) {
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(50, "Setting Configurables");
        GameInitializationUtil.getInstance().initGame(abeClientInformation, this, this.gameInitializationInterfaceFactoryInterface);
        final GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        final ChangedGameFeatureListener changedGameFeatureListener = ChangedGameFeatureListener.getInstance();
        if (changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)) {
            final Features features = Features.getInstance();
            this.logUtil.putF(StringMaker().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), this, "initConfigurable");
            this.mediaInit();
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND);
        }
        final SensorFeatureFactory sensorFeatureFactory = SensorFeatureFactory.getInstance();
        if (changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION);
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS);
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS);
        }
        final ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        this.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME);
    }
    

    void initApp(AbeClientInformationInterface abeClientInformation) {
        this.initConfigurable(abeClientInformation);
        this.processorInit();
        this.sensorGameUpdateProcessor.process(this.gameLayerManager);
        this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager);
        this.initTouch();
    }
    

    void initTouch() {
        final GameInitializedEvent gameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        final ResourceLoadingLevelFactory resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
        this.touchButtonFactory.defaultList();
        this.updateTouch();
        this.postInitTouch();
    }
    

    void updateCurrentTouchInputFactory(BaseTouchInput nextTouchInput) {
        if (!identical(nextTouchInput, this.currentTouchInputFactory)) {
            this.currentTouchInputFactory = nextTouchInput;
            PreLogUtil.put(this.currentTouchInputFactory.toString(), this, this.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY);
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList());
        }
    }
    

    void updateTouch() {
        this.gameBehavior.updateTouch(this);
    }
    

    void updateTouch2() {
        final Features features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            if (this.gameLayerManager.getGameInfo().getCurrentLevel() - this.getStartLevel() == 1) {
                this.setTouchPaintableP(NullPaintable.getInstance());
            }
        }
    }
    

    void postInitTouch() {
        this.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance1(this.gameLayerManager.getForegroundBasicColor()));
        this.updateScreenButtonPaintable();
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommands();
        this.setCommandListener(cmdListener);
    }
    

    void addCommands() {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        final MyCommandsFactory myCommandsFactory = MyCommandsFactory.getInstance();
        if (DebugFactory.getInstance() != NoDebug.getInstance()) {
            this.addCommand(gameCommandsFactory.START_TRACE);
        }
        this.addCommand(gameCommandsFactory.RESTART_COMMAND);
        this.addCommand(myCommandsFactory.PAUSE_COMMAND);
        this.addCommand(gameCommandsFactory.QUIT_COMMAND);
        final bool isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
        if (J2MEUtil.isHTML()) {
        } else if (SWTUtil.isSWT) {
        } else if (!isOverScan) {
            if (TouchScreenFactory.getInstance().isTouch() && InGameFeatures().isAny()) {
                this.addCommand(InGameOptionsForm.DISPLAY);
            }
            this.addCommand(gameCommandsFactory.SAVE);
            this.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM);
        }
    }
    

    @override
    void itemStateChanged(Item item) {
        try {
            final String itemLabel = item.getLabel();
            this.logUtil.putF(StringMaker().append(this.commonLabels.ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((item is ChoiceGroup)) {
                final GameFeatureUtil gameFeatureUtil = GameFeatureUtil.getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup((item as ChoiceGroup));
                } else {
                    gameFeatureUtil.updateMultiple(item);
                }
            }
            this.sensorGameUpdateProcessor.process(this.gameLayerManager);
            this.updateTouch();
            this.updateScreenButtonPaintable();
            this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "itemStateChanged", e);
            }
        }
    }
    

    void updateScreenButtonPaintable() {
        this.gameBehavior.updateScreenButtonPaintable(this);
    }
    

    void updateScreenButtonPaintable2() {
        final Features features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
            this.setStartLevel(this.gameLayerManager.getGameInfo().getCurrentLevel());
        } else if (features.isFeature(this.touchFeatureFactory.SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
        } else if (features.isFeature(this.touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(NullPaintable.getInstance());
        } else {
            this.setTouchPaintableP(NullPaintable.getInstance());
        }
    }
    

    @override
    AllBinaryGameLayerManager getLayerManager() {
        return this.gameLayerManager;
    }
    

    void setLayerManager(AllBinaryGameLayerManager layerManager) {
        this.gameLayerManager = layerManager;
    }
    

    @override
    bool isGameOver() {
        return this.gameOver;
    }
    

    void setGameOver(bool gameOver) {
        this.gameOver = gameOver;
    }
    

    @override
    void processGameOver() {
        PreLogUtil.put(this.commonStrings.START, this, this.gameStrings.SET_GAME_OVER);
        this.setGameOver(true);
        this.removePauseCommand();
        this.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
        this.setEndGamePaintable(this.getEndGameStatePaintable());
    }
    

    @override
    bool isHighScoreSubmitted() {
        return this.highScoreSubmitted;
    }
    

    @override
    void setHighScoreSubmitted(bool highScoreSubmitted) {
        this.highScoreSubmitted = highScoreSubmitted;
        if (highScoreSubmitted) {
            this.highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance());
        }
        this.logUtil.putF(StringMaker().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).toString(), this, "setHighScoreSubmitted");
    }
    

    @override
    GameState getGameState() {
        return this.gameState;
    }
    

    @override
    void setGameState(GameState gameState) {
        this.logUtil.putF(StringMaker().append(this.gameStrings.GAME_STATE).append(this.stringUtil.toString1(gameState)).toString(), this, this.gameStrings.SET_GAME_STATE);
        this.gameState = gameState;
        this.gameStateTimeHelper.setStartTimeTNT();
        this.updateEndGameProcessor();
        this.updateGameKeyEventProcessor();
        this.gameBehavior.setGameState(this);
    }
    

    void updateGameState() {
        final GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processAdState(this.gameState, this.gameLayerManager.getGameInfo().getGameType());
        if (this.gameState != this.gameStateFactory.PLAYING_GAME_STATE) {
            gameAdState.processPageAdState();
        }
    }
    

    void updateGameKeyEventProcessor() {
        if (this.getGameState() != this.gameStateFactory.PLAYING_GAME_STATE || this.isCheating) {
        } else {
        }
    }
    

    void removeAllGameKeyInputListenersOnBuild() {
        this.removeAllGameKeyInputListeners();
    }
    

    void removeAllGameKeyInputListeners() {
        this.gameBehavior.removeAllGameKeyInputListeners(this);
    }
    

    void removeAllGameKeyInputListeners2() {
        this.logUtil.putF("Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners");
        for (int index = this.localPlayerGameInputList.size() - 1; index >= 0; index--) {
            PlayerGameInput playerGameInput = (this.localPlayerGameInputList.get(index) as PlayerGameInput);
            this.removeKeyInputListener(playerGameInput);
            playerGameInput.removeNonAIInputGameKeyEvents();
        }
    }
    

    void removeKeyInputListener(PlayerGameInput playerGameInput) {
        this.gameKeyEventHandler.removeListener(playerGameInput);
    }
    

    void updateEndGameProcessor() {
        this.gameBehavior.updateEndGameProcessor(this);
    }
    

    void updateEndGameProcessor2() {
        if (this.getGameState() == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE || this.getGameState() == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
            this.setEndGameProcessor(this.realEndGameProcessor);
        } else {
            this.setEndGameProcessor(Processor.getInstance());
        }
    }
    

    void buildGameInit(bool isPortion) {
    }
    

    void cleanupGame() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLEANUP);
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(10, "Cleaning Up");
        this.primaryPlayerQueue.clear();
        this.secondaryPlayerQueue.clear();
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear();
    }
    

    void loadResourceLoadingLevel(ResourceLoadingLevel resourceLoadingLevel) {
        final GameInitializedEvent gameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
    }
    

    void loadResources(int level) {
        final GameInitializedEvent gameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setLevel(level);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
    }
    

    void updateColor() {
    }
    

    void buildGame(int portion) {
        this.screenCapture.endRecording();
        this.screenCapture.startRecording();
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        final Features features = Features.getInstance();
        progressCanvas.addNormalPortion(portion, "Generic Build");
        this.removeAllGameKeyInputListenersOnBuild();
        this.updateTouch();
        progressCanvas.addNormalPortion(portion, "High Scores");
        this.highScoresFactoryInterface.fetchHighScores(this.gameLayerManager.getGameInfo(), this.highScoresHelper);
        this.setHighScoresPaintable(NullPaintable.getInstance());
        progressCanvas.addNormalPortion(portion, "Finishing.");
        this.getEndGameInfoP().update(this.getLayerManager().getGameInfo(), this);
        this.isSingleKeyRepeatableProcessing = features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
        this.setGameOver(false);
        progressCanvas.addNormalPortion(portion, "Finishing..");
        this.updateColor();
        this.getStartIntermissionPaintable().update();
        if (!this.isRunningInAnotherThread()) {
            return;
        }
        progressCanvas.addNormalPortion(portion, "Finishing...");
        if (this.isMainCanvas() || !this.isInitialized()) {
            if (features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                if (this.getCustomCommandListener() != null) {
                    progressCanvas.end();
                }
            } else {
                progressCanvas.end();
            }
            this.setInitialized(true);
        }
        if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
            this.logUtil.putF("Show Game Paintable in DemoCanvas Thread", this, this.BUILD_GAME);
            this.gameCanvasStartListener.showGamePaintable();
        } else {
            this.logUtil.putF("No GameCanvasStartListener", this, this.BUILD_GAME);
        }
        this.colorFillPaintable.setBasicColorP(this.gameLayerManager.getBackgroundBasicColor());
        this.gameBehavior.buildGame(this);
    }
    

    void buildGame2() {
        PreLogUtil.put(StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(this.localPlayerGameInputList.size()).toString(), this, this.BUILD_GAME);
        late PlayerGameInput playerGameInput;
        for (int index = this.localPlayerGameInputList.size() - 1; index >= 0; index--) {
            playerGameInput = (this.localPlayerGameInputList.get(index) as PlayerGameInput);
            PreLogUtil.put(StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), this, this.BUILD_GAME);
            playerGameInput.removeNonAIInputGameKeyEvents();
            this.addKeyInputListener(playerGameInput);
        }
    }
    

    void addKeyInputListener(PlayerGameInput playerGameInput) {
        GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId());
    }
    

    void setGameCanvasStartListener(DemoPaintableInterface gameCanvasStartListener) {
        this.gameCanvasStartListener = gameCanvasStartListener;
    }
    

    void loadState() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.LOAD);
        ABHashtable hashtable = this.getLoadStateHashtable();
        if (hashtable != null && hashtable.size() > 0) {
            final String levelAsString = (hashtable.get((GameInfo.LEVEL_NAME as Object)) as String);
            final int level = (int.parse(levelAsString)).toInt();
            final GameInfo gameInfo = this.gameLayerManager.getGameInfo();
            gameInfo.setCurrentLevel(level);
        }
    }
    

    @override
    ABHashtable getLoadStateHashtable() {
        this.logUtil.putF(StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString1(this.hashtable)).toString(), this, "getLoadStateHashtable");
        return this.hashtable;
    }
    

    @override
    void setLoadStateHashtable(ABHashtable hashtable) {
        this.logUtil.putF(StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString1(hashtable)).toString(), this, "setLoadStateHashtable");
        this.hashtable = hashtable;
    }
    

    @override
    ABHashtable getCurrentStateHashtable() {
        final ABHashtable hashtable = this.stdUtil.createHashtable();
        final int level = this.gameLayerManager.getGameInfo().getCurrentLevel();
        hashtable.put(GameInfo.LEVEL_NAME.toString(), jstr(level));
        this.logUtil.putF(StringMaker().append("End: ").append(this.stringUtil.toString1(hashtable)).toString(), this, "getCurrentStateHashtable");
        return hashtable;
    }
    

    void paintGameOver(Graphics graphics) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    @override
    void draw(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.gameLayerManager.getForegroundBasicColor());
        this.gameSpecificPaintable.paint(graphics);
    }
    

    void clear(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        this.baseGameStatistics.nextRefresh();
        this.draw(graphics);
        this.menuPaintable.paint(graphics);
        this.progressPaintable.paint(graphics);
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
    

    void processEndLevelIntermissionGameState() {
    }
    

    void nonBotPaint(Graphics graphics) {
        this.endGamePaintable.paint(graphics);
        this.intermissionPaintable.paint(graphics);
        this.paintIntermission(graphics);
        this.touchPaintable.paint(graphics);
    }
    

    void paintIntermission(Graphics graphics) {
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
        this.inputProcessor.keyPressedByDevice(keyCode, deviceId);
    }
    

    @override
    void keyRepeatedByDevice(int keyCode, int deviceId) {
        if (this.isSingleKeyRepeatableProcessing) {
            this.inputProcessor.keyPressedByDevice(keyCode, deviceId);
        }
    }
    

    @override
    void keyReleasedByDevice(int keyCode, int deviceId) {
        this.inputProcessor.keyReleasedByDevice(this, keyCode, deviceId);
    }
    

    void handleRawKey(int keyCode, int deviceId, bool repeated) {
    }
    

    int endProgress(bool isProgress) {
        int portion = 30;
        if (isProgress && this.isMainCanvas()) {
            final MyCommandsFactory myCommandsFactory = MyCommandsFactory.getInstance();
            final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.start();
            this.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
            portion = 4;
        }
        return portion;
    }
    

    void processPlayingGame() {
        this.cheatProcessor.update();
        this.sensorGameUpdateProcessor.getInputSensor().update();
        this.gameInputProcessor.process();
        this.gameLayerManager.process();
        this.startIntermissionProcessor.process();
    }
    

    void threadInit() {
    }
    

    void processGame() {
        super.process();
        if (AllBinaryMediaManager.update()) {
            if (!this.primaryPlayerQueue.process()) {
                this.secondaryPlayerQueue.process();
            }
        }
        this.mainStateProcessor.process();
        this.menuInputProcessor.processInputList();
        this.endGameProcessor.process();
        this.baseGameStatistics.nextFrame();
    }
    

    void notifyDonePainting() {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
    

    void shouldWait() {
        final Features features = Features.getInstance();
        if (AndroidUtil.isAndroid()) {
        } else if (features.isFeature(this.openGLFeatureFactory.OPENGL_2D)) {
        } else {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL)) {
                final OpenGLImageSpecificFactory openGLImageSpecificFactory = OpenGLImageSpecificFactory.getInstance();
                while (openGLImageSpecificFactory.updating) {
                    Thread.sleep(this.YIELD_SLEEP);
                }
            }
        }
    }
    

    @override
    void run() {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Game Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
                Thread.sleep(this.YIELD_SLEEP);
            }
            this.shouldWait();
            this.threadInit();
            if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
                Thread.sleep(this.YIELD_SLEEP);
            }
            this.open();
            final GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.init();
            gameAdState.setGameIsReady(true);
            this.gameBehavior.run(this);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
        }
    }
    

    void run2() {
        final Features features = Features.getInstance();
        if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), this, this.commonStrings.RUN);
            }
            if (J2MEUtil.isHTML()) {
                this.logUtil.putF(GraphicsStrings.getInstance().HTML, this, this.commonStrings.RUN);
            }
            final CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(this.gameRunnable);
            currentDisplayableFactory.setDisplayable(this);
            OpenGLThreadUtil.getInstance().onResume();
        } else if (features.isDefault(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) {
            this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), this, this.commonStrings.RUN);
            OpenGLThreadUtil.getInstance().onResume();
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        } else {
            this.logUtil.putF("this thread", this, this.commonStrings.RUN);
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        }
    }
    

    void run3() {
        this.loopTimeHelper.setStartTime(this.gameTickTimeDelayHelper.setStartTime());
        this.gameTickDisplayInfoSingleton.update();
        this.processGame();
        this.processLoopSleep();
    }
    

    @override
    void setRunning(bool running) {
        super.setRunning(running);
        try {
            final Features features = Features.getInstance();
            if (running) {
            } else {
                if (features.isDefault(this.openGLFeatureFactory.OPENGL) || SWTUtil.isSWT) {
                    if (this.gameLayerManager.getGameInfo().getGameType() != this.gameTypeFactory.BOT) {
                        final CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
                        currentDisplayableFactory.clearRunnable();
                    }
                    this.end();
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e);
            }
        }
    }
    

    void end() {
        this.screenCapture.endRecording();
        this.baseGameStatistics.add(StringMaker().append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString());
        this.baseGameStatistics.init();
        this.gameKeyEventHandler.removeListener(this.cheatProcessor);
        this.close();
        this.removeAllGameKeyInputListeners();
        this.endGameThread();
    }
    

    void endGameThread() {
        DisplayChangeEventHandler.getInstance().removeListener(this);
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear();
        GameAdState gameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.notPlayingAdState();
    }
    

    HighScore createHighScore(int score) {
        final GameInfo gameInfo = this.gameLayerManager.getGameInfo();
        return HighScore(0, "NONE", GameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score);
    }
    

    void setHighScore(AbeClientInformationInterface abeClientInformation, String name, int score, bool autoSubmit, bool isLast) {
        this.gameBehavior.setHighScore(abeClientInformation, this, name, score, autoSubmit, isLast);
    }
    

    void setHighScore2(AbeClientInformationInterface abeClientInformation, String name, int score, bool autoSubmit, bool isLast) {
        final HighScore highScore = this.createHighScore(score);
        final HighScoreTextBox textBox = HighScoreTextBox(this.highScoresFactoryInterface, this.highScoresHelper, abeClientInformation, this.gameLayerManager.getGameInfo(), this.getCustomCommandListener(), name, highScore, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        if (isLast) {
            this.getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox);
        }
        if (autoSubmit) {
            SecondaryThreadPool.getInstance().runTask(SaveHighScoreRunnable(isLast, textBox));
        }
    }
    

    TimeDelayHelper getGameStateTimeHelper() {
        return this.gameStateTimeHelper;
    }
    

    void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    @override
    bool isInitialized() {
        return this.initialized;
    }
    

    @override
    int getSourceId() {
        return AllBinaryGameCanvas.id;
    }
    

    void setProgressPaintable(PaintableInterface paintable) {
        this.progressPaintable = paintable;
    }
    

    @override
    IntermissionInterface getStartIntermissionInterface() {
        return this.startIntermissionInterface;
    }
    

    @override
    IntermissionInterface getEndLevelIntermissionInterface() {
        return this.endLevelIntermissionInterface;
    }
    

    void setTouchPaintableP(Paintable paintable) {
        this.touchPaintable = paintable;
    }
    

    Paintable getTouchPaintableP() {
        return this.touchPaintable;
    }
    

    void setEndGamePaintable(Paintable endGamePaintable) {
        this.endGamePaintable = endGamePaintable;
    }
    

    Paintable getEndGamePaintable() {
        return this.endGamePaintable;
    }
    

    void setIntermissionPaintable(Paintable intermissionPaintable) {
        this.intermissionPaintable = intermissionPaintable;
    }
    

    Paintable getIntermissionPaintable() {
        return this.intermissionPaintable;
    }
    

    EndGameInfo getEndGameInfoP() {
        return this.endGameInfo;
    }
    

    void setHighScoresPaintable(Paintable highScoresPaintable) {
        this.highScoresPaintable = highScoresPaintable;
    }
    

    Paintable getHighScoresPaintable() {
        return this.highScoresPaintable;
    }
    

    HighScoresPaintable getRealHighScoresPaintable() {
        return this.realHighScoresPaintable;
    }
    

    void clearPlayerGameInputList() {
        late PlayerGameInput playerGameInput;
        for (int index = this.localPlayerGameInputList.size() - 1; index >= 0; index--) {
            playerGameInput = (this.localPlayerGameInputList.get(index) as PlayerGameInput);
            this.gameKeyEventHandler.removeListener(playerGameInput);
        }
        this.localPlayerGameInputList.clear();
    }
    

    void addPlayerGameInput(PlayerGameInput playerGameInput) {
        this.localPlayerGameInputList.add(playerGameInput);
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
    

    int getStartLevel() {
        return this.startLevel;
    }
    

    void setStartLevel(int startLevel) {
        this.startLevel = startLevel;
    }
    

    void setTouchButtonsPaintable(Paintable touchButtonsPaintable) {
        this.touchButtonsPaintable = touchButtonsPaintable;
    }
    

    Paintable getTouchButtonsPaintable() {
        return this.touchButtonsPaintable;
    }
    

    void setGameInputProcessor(Processor gameInputProcessor) {
        this.gameInputProcessor = gameInputProcessor;
    }
    

    Processor getGameInputProcessor() {
        return this.gameInputProcessor;
    }
    

    void setEndGameProcessor(Processor endGameProcessor) {
        this.endGameProcessor = endGameProcessor;
    }
    

    Processor getEndGameProcessor() {
        return this.endGameProcessor;
    }
    

    void setEndGameStatePaintable(Paintable endGameStatePaintable) {
        this.endGameStatePaintable = endGameStatePaintable;
    }
    

    Paintable getEndGameStatePaintable() {
        return this.endGameStatePaintable;
    }
    

    void setNonBotPaintableP(Paintable nonBotPaintable) {
        this.nonBotPaintable = nonBotPaintable;
    }
    

    Paintable getNonBotPaintableP() {
        return this.nonBotPaintable;
    }
    

    void setStartIntermissionPaintable(InitUpdatePaintable startIntermissionPaintable) {
        this.startIntermissionPaintable = startIntermissionPaintable;
    }
    

    InitUpdatePaintable getStartIntermissionPaintable() {
        return this.startIntermissionPaintable;
    }
    

    void setMainStateProcessor(Processor mainStateProcessor) {
        this.mainStateProcessor = mainStateProcessor;
    }
    

    Processor getMainStateProcessor() {
        return this.mainStateProcessor;
    }
    

    void setProcessGameProcessor(Processor processGameProcessor) {
        this.processGameProcessor = processGameProcessor;
    }
    

    Processor getProcessGameProcessor() {
        return this.processGameProcessor;
    }
    

    void setOpenMenuPaintable(Paintable openMenuPaintable) {
        this.openMenuPaintable = openMenuPaintable;
    }
    

    Paintable getOpenMenuPaintable() {
        return this.openMenuPaintable;
    }
    

    void setPopupMenuInputProcessor(BasicMenuInputProcessor popupMenuInputProcessor) {
        this.popupMenuInputProcessor = popupMenuInputProcessor;
    }
    

    BasicMenuInputProcessor getPopupMenuInputProcessor() {
        return this.popupMenuInputProcessor;
    }
    

    SensorGameUpdateProcessor getSensorGameUpdateProcessor() {
        return this.sensorGameUpdateProcessor;
    }
    

    InputProcessor getRawGameInputProcessor() {
        return this.rawGameInputProcessor;
    }
    

    InputProcessor getRawInputProcessor() {
        return this.rawInputProcessor;
    }
    

    void setInputProcessor(InputProcessor inputProcessor) {
        this.inputProcessor = inputProcessor;
    }
    

    InputProcessor getInputProcessor() {
        return this.inputProcessor;
    }
    

    void setMenuPaintable(Paintable menuPaintable) {
        this.menuPaintable = menuPaintable;
    }
    

    Paintable getMenuPaintable() {
        return this.menuPaintable;
    }
    

    void setFormPaintable(Paintable formPaintable) {
        this.formPaintable = formPaintable;
    }
    

    Paintable getFormPaintable() {
        return this.formPaintable;
    }
    

    void setGameSpecificPaintableP(Paintable gameSpecificPaintable) {
        this.gameSpecificPaintable = gameSpecificPaintable;
    }
    

    Paintable getGameSpecificPaintableP() {
        return this.gameSpecificPaintable;
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
    

    @override
    int getType() {
        return AllBinaryGameCanvas.TYPE;
    }
    

    @override
    String getTitle() {
        return super.getTitle();
    }
    

    @override
    bool isPaused() {
        return super.isPaused();
    }
}

