// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package javax.microedition.khronos.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/nio/Buffer.dart';
import 'package:allbinary/java/nio/FloatBuffer.dart';
import 'package:allbinary/java/nio/IntBuffer.dart';
import 'package:allbinary/java/nio/ShortBuffer.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';

abstract interface class GL11Ext implements GL {
    static const int GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES = 35742;
    static const int GL_MATRIX_INDEX_ARRAY_OES = 34884;
    static const int GL_MATRIX_INDEX_ARRAY_POINTER_OES = 34889;
    static const int GL_MATRIX_INDEX_ARRAY_SIZE_OES = 34886;
    static const int GL_MATRIX_INDEX_ARRAY_STRIDE_OES = 34888;
    static const int GL_MATRIX_INDEX_ARRAY_TYPE_OES = 34887;
    static const int GL_MATRIX_PALETTE_OES = 34880;
    static const int GL_MAX_PALETTE_MATRICES_OES = 34882;
    static const int GL_MAX_VERTEX_UNITS_OES = 34468;
    static const int GL_TEXTURE_CROP_RECT_OES = 35741;
    static const int GL_WEIGHT_ARRAY_BUFFER_BINDING_OES = 34974;
    static const int GL_WEIGHT_ARRAY_OES = 34477;
    static const int GL_WEIGHT_ARRAY_POINTER_OES = 34476;
    static const int GL_WEIGHT_ARRAY_SIZE_OES = 34475;
    static const int GL_WEIGHT_ARRAY_STRIDE_OES = 34474;
    static const int GL_WEIGHT_ARRAY_TYPE_OES = 34473;
    

    void glTexParameterfv(int target, int pname, List<double> param, int offset);
    

    void glCurrentPaletteMatrixOES(int matrixpaletteindex);
    

    void glDrawTexfOES(double x, double y, double z, double width, double height);
    

    void glDrawTexfvOES([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glDrawTexfvOES$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is FloatBuffer) {
            this.glDrawTexfvOES$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glDrawTexfvOES');
    }

    void glDrawTexfvOES$2(List<double> coords, int offset);
    

    void glDrawTexfvOES$1(FloatBuffer coords);
    

    void glDrawTexiOES(int x, int y, int z, int width, int height);
    

    void glDrawTexivOES([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glDrawTexivOES$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is IntBuffer) {
            this.glDrawTexivOES$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glDrawTexivOES');
    }

    void glDrawTexivOES$2(List<int> coords, int offset);
    

    void glDrawTexivOES$1(IntBuffer coords);
    

    void glDrawTexsOES(int x, int y, int z, int width, int height);
    

    void glDrawTexsvOES([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glDrawTexsvOES$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is ShortBuffer) {
            this.glDrawTexsvOES$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glDrawTexsvOES');
    }

    void glDrawTexsvOES$2(List<int> coords, int offset);
    

    void glDrawTexsvOES$1(ShortBuffer coords);
    

    void glDrawTexxOES(int x, int y, int z, int width, int height);
    

    void glDrawTexxvOES([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glDrawTexxvOES$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is IntBuffer) {
            this.glDrawTexxvOES$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glDrawTexxvOES');
    }

    void glDrawTexxvOES$2(List<int> coords, int offset);
    

    void glDrawTexxvOES$1(IntBuffer coords);
    

    void glEnable(int cap);
    

    void glEnableClientState(int array);
    

    void glLoadPaletteFromModelViewMatrixOES();
    

    void glMatrixIndexPointerOES([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is Buffer) {
            this.glMatrixIndexPointerOES$4$I_I_I_Buffer(p0, p1, p2, p3);
            return;
        }
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is int) {
            this.glMatrixIndexPointerOES$4$I_I_I_I(p0, p1, p2, p3);
            return;
        }
        throw JException('NoSuchMethodError', 'glMatrixIndexPointerOES');
    }

    void glMatrixIndexPointerOES$4$I_I_I_Buffer(int size, int type, int stride, Buffer pointer);
    

    void glMatrixIndexPointerOES$4$I_I_I_I(int size, int type, int stride, int offset);
    

    void glWeightPointerOES([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is Buffer) {
            this.glWeightPointerOES$4$I_I_I_Buffer(p0, p1, p2, p3);
            return;
        }
        if (!identical(p3, jnone) && p0 is int && p1 is int && p2 is int && p3 is int) {
            this.glWeightPointerOES$4$I_I_I_I(p0, p1, p2, p3);
            return;
        }
        throw JException('NoSuchMethodError', 'glWeightPointerOES');
    }

    void glWeightPointerOES$4$I_I_I_Buffer(int size, int type, int stride, Buffer pointer);
    

    void glWeightPointerOES$4$I_I_I_I(int size, int type, int stride, int offset);
}

