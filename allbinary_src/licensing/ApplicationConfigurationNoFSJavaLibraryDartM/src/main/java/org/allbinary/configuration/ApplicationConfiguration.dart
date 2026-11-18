// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class ApplicationConfiguration {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    bool fullscreen = false;
    bool showTitleBar = false;
    bool progressBarView = false;

    // Java field initializers run after the base constructor
    void initFieldsApplicationConfiguration() {
    this.logUtil = LogUtil.getInstance();
    this.fullscreen = true;
    this.showTitleBar = false;
    this.progressBarView = false;
    }
    

    static ApplicationConfiguration getInstance() {
        if (ApplicationConfiguration.instance == NullUtil.getInstance().NULL_OBJECT) {
            ApplicationConfiguration.instance = ApplicationConfiguration();
        }
        return (ApplicationConfiguration.instance as ApplicationConfiguration);
    }
    

    ApplicationConfiguration() {
        this.initFieldsApplicationConfiguration();
        try {
            this.read();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    void read() {
        this.setFullscreen(true);
        this.setProgressBarView(false);
        this.setShowTitleBar(false);
        this.logUtil.putF("Read Configuration: " + this.toString(), this, "read");
    }
    

    void write() {
    }
    

    void update(Feature gameFeature) {
        if (gameFeature == MainFeatureFactory.getInstance().FULL_SCREEN) {
            final Features features = Features.getInstance();
            if (features.isFeature(gameFeature)) {
                if (!this.isFullscreen()) {
                    this.setFullscreen(true);
                    this.write();
                }
            } else {
                if (this.isFullscreen()) {
                    this.setFullscreen(false);
                    this.write();
                }
            }
        }
    }
    

    void setFullscreen(bool fullscreen) {
        this.fullscreen = fullscreen;
    }
    

    bool isFullscreen() {
        return this.fullscreen;
    }
    

    void setShowTitleBar(bool showTitleBar) {
        this.showTitleBar = showTitleBar;
    }
    

    bool isShowTitleBar() {
        return this.showTitleBar;
    }
    

    void setProgressBarView(bool progressBarView) {
        this.progressBarView = progressBarView;
    }
    

    bool isProgressBarView() {
        return this.progressBarView;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("isFullscreen: ");
        stringBuffer.appendboolean(this.isFullscreen());
        stringBuffer.append(" isProgressBarView: ");
        stringBuffer.appendboolean(this.isProgressBarView());
        stringBuffer.append(" isShowTitleBar: ");
        stringBuffer.appendboolean(this.isShowTitleBar());
        return stringBuffer.toString();
    }
}

