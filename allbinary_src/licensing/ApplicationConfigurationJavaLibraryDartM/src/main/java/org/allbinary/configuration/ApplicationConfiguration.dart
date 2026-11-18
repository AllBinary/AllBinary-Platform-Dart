// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/Closeable.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/java/io/OutputStream.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/AbDataInputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/AbDataOutputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/FileStreamFactory.dart';
import 'package:allbinary/org/allbinary/logic/io/NullCloseable.dart';
import 'package:allbinary/org/allbinary/logic/io/StreamUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/file/FileFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class ApplicationConfiguration {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    bool fullscreen = false;
    bool showTitleBar = false;
    bool progressBarView = false;
    late String FILE;

    // Java field initializers run after the base constructor
    void initFieldsApplicationConfiguration() {
    this.logUtil = LogUtil.getInstance();
    this.fullscreen = true;
    this.showTitleBar = false;
    this.progressBarView = false;
    this.FILE = "ReloadConfiguration.dat";
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
            if (FileFactory.getInstance().isFile(this.FILE)) {
                this.read();
            } else {
                this.write();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    void read() {
        final FileStreamFactory fileInputStreamFactory = FileStreamFactory.getInstance();
        final InputStream fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, this.FILE);
        final AbDataInputStream dataInputStream = AbDataInputStream(fileInputStream);
        int fullScreen = dataInputStream.readInt();
        if (fullScreen == 0) {
            this.setFullscreen(false);
        } else if (fullScreen == 1) {
            this.setFullscreen(true);
        } else {
            throw JException('Exception', "Invalid FullScreen ActivityConfiguration");
        }
        final int progressBarView = dataInputStream.readInt();
        if (progressBarView == 0) {
            this.setProgressBarView(false);
        } else if (progressBarView == 1) {
            this.setProgressBarView(true);
        } else {
            throw JException('Exception', "Invalid ProgressBarView ActivityConfiguration");
        }
        final int showTitleBar = dataInputStream.readInt();
        if (showTitleBar == 0) {
            this.setShowTitleBar(false);
        } else if (showTitleBar == 1) {
            this.setShowTitleBar(true);
        } else {
            throw JException('Exception', "Invalid ShowTitleBar ActivityConfiguration");
        }
        this.logUtil.putF("Read Configuration: " + this.toString(), this, "read");
    }
    

    void write() {
        Closeable closeable = NullCloseable.NULL_CLOSEABLE;
        try {
            this.logUtil.putF("Write Configuration: " + this.toString(), this, "write");
            final FileStreamFactory fileInputStreamFactory = FileStreamFactory.getInstance();
            final OutputStream fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, this.FILE);
            final AbDataOutputStream dataOutputStream = AbDataOutputStream(fileOutputStream);
            closeable = dataOutputStream;
            if (this.isFullscreen()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isProgressBarView()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            if (this.isShowTitleBar()) {
                dataOutputStream.writeInt(1);
            } else {
                dataOutputStream.writeInt(0);
            }
            dataOutputStream.flush();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        } finally {
            StreamUtil.getInstance().close(closeable);
        }
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

