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
// package org.allbinary.game.input.mapping

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputMapping.dart';

class InputToGameKeyMapping extends InputMapping {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late GameKeyFactory gameKeyFactory;
    late List<GameKey?> mappedGameKeys;
    late List<GameKey?> platformToGameKeyMapping;
    late List<GameKey?> negativePlatformToGameKeyMapping;

    // Java field initializers run after the base constructor
    void initFieldsInputToGameKeyMapping() {
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.mappedGameKeys = <GameKey?>[this.gameKeyFactory.UP, this.gameKeyFactory.DOWN, this.gameKeyFactory.LEFT, this.gameKeyFactory.RIGHT];
    this.platformToGameKeyMapping = List<GameKey?>.filled(InputFactory.getInstance().MAX, null);
    this.negativePlatformToGameKeyMapping = List<GameKey?>.filled(0, null);
    }
    

    static InputToGameKeyMapping getNullInstance() {
        if (InputToGameKeyMapping.instance == NullUtil.getInstance().NULL_OBJECT) {
            InputToGameKeyMapping.instance = InputToGameKeyMapping();
        }
        return (InputToGameKeyMapping.instance as InputToGameKeyMapping);
    }
    

    InputToGameKeyMapping() {
        this.initFieldsInputToGameKeyMapping();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.clear();
    }
    

    void clear() {
        for (int index = this.platformToGameKeyMapping.length - 1; index >= 0; index--) {
            this.platformToGameKeyMapping[index] = this.gameKeyFactory.NONE;
        }
    }
    

    @override
    void removeAll() {
        super.removeAll();
        this.clear();
    }
    

    @override
    void addMapping(InputToGameKeyMapping inputToGameKeyMapping) {
        for (int index = inputToGameKeyMapping.getMaxMappable() - 1; index >= 0; index--) {
            final Input input = inputToGameKeyMapping.getInstance1(index);
            if (input != this.gameKeyFactory.NONE) {
                this.addAll(input, inputToGameKeyMapping.getMappedInput(input));
            }
        }
    }
    

    void addAll(Input input, BasicArrayList list) {
        for (int index = list.size() - 1; index >= 0; index--) {
            Input mappedToInput = (list.objectArray[index]! as Input);
            this.add(input, mappedToInput);
        }
    }
    

    @override
    void add(Input input, Input mappedToInput) {
        super.add(input, mappedToInput);
        this.set(input, mappedToInput);
    }
    

    @override
    void remove(Input input, Input mappedToInput) {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString1(input)).append(" == ").append(StringUtil.getInstance().toString1(mappedToInput)).toString(), this, "InputToGameKeyMapping::remove");
        super.remove(input, mappedToInput);
        this.set(input, this.gameKeyFactory.NONE);
    }
    

    void set(Input input, Input mappedToInput) {
        int id = mappedToInput.getId();
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            this.platformToGameKeyMapping[id] = (input as GameKey);
        }
    }
    

    int getMaxMappable() {
        return this.platformToGameKeyMapping.length;
    }
    

    BasicArrayList getReverseInstance(int id) {
        BasicArrayList list = BasicArrayListD();
        final InputFactory inputFactory = InputFactory.getInstance();
        for (int index = 0; index < this.platformToGameKeyMapping.length; index++) {
            if (this.platformToGameKeyMapping[index]!.getId() == id) {
                Input input = inputFactory.getInstanceById(index);
                if (input != null) {
                    list.add(input);
                }
            }
        }
        return list;
    }
    

    void initGameKey(Canvas canvas, GameKey gameKey) {
        int key = canvas.getKeyCode(gameKey.getId());
        if (key < 0 && -key < this.negativePlatformToGameKeyMapping.length) {
            this.negativePlatformToGameKeyMapping[-key] = gameKey;
        } else if (key > 0) {
            if (this.platformToGameKeyMapping[key]! == this.gameKeyFactory.NONE) {
                this.platformToGameKeyMapping[key] = gameKey;
            }
        } else {
            PreLogUtil.putOE(StringMaker().append(gameKey.toString()).append(CommonSeps.getInstance().COLON_SEP).appendint(key).toString(), this, this.commonStrings.INIT, JException('Exception', ''));
        }
    }
    

    int getSmallestCanvasGameKeyCode(Canvas canvas) {
        int nextKey = 0;
        int smallestKey = 0;
        for (int index = this.mappedGameKeys.length; --index >= 0; ) {
            nextKey = canvas.getKeyCode(this.mappedGameKeys[index]!.getId());
            if (nextKey < smallestKey) {
                smallestKey = nextKey;
            }
        }
        return smallestKey;
    }
    

    void init(Canvas canvas) {
        try {
            List<GameKey?> negativePlatformToGameKeyMapping = List<GameKey?>.filled(0, null);
            int smallestKey = this.getSmallestCanvasGameKeyCode(canvas);
            if (smallestKey < 0) {
                smallestKey--;
                if (smallestKey < -256) {
                    smallestKey = -256;
                }
                negativePlatformToGameKeyMapping = List<GameKey?>.filled(-smallestKey, null);
                for (int index = negativePlatformToGameKeyMapping.length; --index >= 0; ) {
                    negativePlatformToGameKeyMapping[index] = this.gameKeyFactory.NONE;
                }
                this.negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping;
            }
            for (int index = this.mappedGameKeys.length; --index >= 0; ) {
                this.initGameKey(canvas, this.mappedGameKeys[index]!);
            }
        } catch (jcaught) {
            {
                final dynamic t = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, t);
            }
        }
    }
    

    GameKey getInstanceForCanvas(Canvas canvas, int id) {
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            return this.platformToGameKeyMapping[id]!;
        } else if (id < 0 && -id < this.negativePlatformToGameKeyMapping.length) {
            return this.negativePlatformToGameKeyMapping[-id]!;
        } else {
            return this.gameKeyFactory.NONE;
        }
    }
    

    GameKey getInstance1(int id) {
        if (id >= 0 && id < this.platformToGameKeyMapping.length) {
            return this.platformToGameKeyMapping[id]!;
        } else if (id < 0 && -id < this.negativePlatformToGameKeyMapping.length) {
            return this.negativePlatformToGameKeyMapping[-id]!;
        } else {
            return this.gameKeyFactory.NONE;
        }
    }
}

