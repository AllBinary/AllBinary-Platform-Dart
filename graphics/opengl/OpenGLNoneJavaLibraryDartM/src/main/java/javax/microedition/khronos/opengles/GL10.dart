// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package javax.microedition.khronos.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/nio/Buffer.dart';
import 'package:allbinary/java/nio/FloatBuffer.dart';
import 'package:allbinary/java/nio/IntBuffer.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';

abstract interface class GL10 implements GL {
    static const int GL_ADD = 260;
    static const int GL_ALIASED_LINE_WIDTH_RANGE = 33902;
    static const int GL_ALIASED_POINT_SIZE_RANGE = 33901;
    static const int GL_ALPHA = 6406;
    static const int GL_ALPHA_BITS = 3413;
    static const int GL_ALPHA_TEST = 3008;
    static const int GL_ALWAYS = 519;
    static const int GL_AMBIENT = 4608;
    static const int GL_AMBIENT_AND_DIFFUSE = 5634;
    static const int GL_AND = 5377;
    static const int GL_AND_INVERTED = 5380;
    static const int GL_AND_REVERSE = 5378;
    static const int GL_BACK = 1029;
    static const int GL_BLEND = 3042;
    static const int GL_BLUE_BITS = 3412;
    static const int GL_BYTE = 5120;
    static const int GL_CCW = 2305;
    static const int GL_CLAMP_TO_EDGE = 33071;
    static const int GL_CLEAR = 5376;
    static const int GL_COLOR_ARRAY = 32886;
    static const int GL_COLOR_BUFFER_BIT = 16384;
    static const int GL_COLOR_LOGIC_OP = 3058;
    static const int GL_COLOR_MATERIAL = 2903;
    static const int GL_COMPRESSED_TEXTURE_FORMATS = 34467;
    static const int GL_CONSTANT_ATTENUATION = 4615;
    static const int GL_COPY = 5379;
    static const int GL_COPY_INVERTED = 5388;
    static const int GL_CULL_FACE = 2884;
    static const int GL_CW = 2304;
    static const int GL_DECAL = 8449;
    static const int GL_DECR = 7683;
    static const int GL_DEPTH_BITS = 3414;
    static const int GL_DEPTH_BUFFER_BIT = 256;
    static const int GL_DEPTH_TEST = 2929;
    static const int GL_DIFFUSE = 4609;
    static const int GL_DITHER = 3024;
    static const int GL_DONT_CARE = 4352;
    static const int GL_DST_ALPHA = 772;
    static const int GL_DST_COLOR = 774;
    static const int GL_EMISSION = 5632;
    static const int GL_EQUAL = 514;
    static const int GL_EQUIV = 5385;
    static const int GL_EXP = 2048;
    static const int GL_EXP2 = 2049;
    static const int GL_EXTENSIONS = 7939;
    static const int GL_FALSE = 0;
    static const int GL_FASTEST = 4353;
    static const int GL_FIXED = 5132;
    static const int GL_FLAT = 7424;
    static const int GL_FLOAT = 5126;
    static const int GL_FOG = 2912;
    static const int GL_FOG_COLOR = 2918;
    static const int GL_FOG_DENSITY = 2914;
    static const int GL_FOG_END = 2916;
    static const int GL_FOG_HINT = 3156;
    static const int GL_FOG_MODE = 2917;
    static const int GL_FOG_START = 2915;
    static const int GL_FRONT = 1028;
    static const int GL_FRONT_AND_BACK = 1032;
    static const int GL_GEQUAL = 518;
    static const int GL_GREATER = 516;
    static const int GL_GREEN_BITS = 3411;
    static const int GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = 35739;
    static const int GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = 35738;
    static const int GL_INCR = 7682;
    static const int GL_INVALID_ENUM = 1280;
    static const int GL_INVALID_OPERATION = 1282;
    static const int GL_INVALID_VALUE = 1281;
    static const int GL_INVERT = 5386;
    static const int GL_KEEP = 7680;
    static const int GL_LEQUAL = 515;
    static const int GL_LESS = 513;
    static const int GL_LIGHT_MODEL_AMBIENT = 2899;
    static const int GL_LIGHT_MODEL_TWO_SIDE = 2898;
    static const int GL_LIGHT0 = 16384;
    static const int GL_LIGHT1 = 16385;
    static const int GL_LIGHT2 = 16386;
    static const int GL_LIGHT3 = 16387;
    static const int GL_LIGHT4 = 16388;
    static const int GL_LIGHT5 = 16389;
    static const int GL_LIGHT6 = 16390;
    static const int GL_LIGHT7 = 16391;
    static const int GL_LIGHTING = 2896;
    static const int GL_LINE_LOOP = 2;
    static const int GL_LINE_SMOOTH = 2848;
    static const int GL_LINE_SMOOTH_HINT = 3154;
    static const int GL_LINE_STRIP = 3;
    static const int GL_LINEAR = 9729;
    static const int GL_LINEAR_ATTENUATION = 4616;
    static const int GL_LINEAR_MIPMAP_LINEAR = 9987;
    static const int GL_LINEAR_MIPMAP_NEAREST = 9985;
    static const int GL_LINES = 1;
    static const int GL_LUMINANCE = 6409;
    static const int GL_LUMINANCE_ALPHA = 6410;
    static const int GL_MAX_ELEMENTS_INDICES = 33001;
    static const int GL_MAX_ELEMENTS_VERTICES = 33000;
    static const int GL_MAX_LIGHTS = 3377;
    static const int GL_MAX_MODELVIEW_STACK_DEPTH = 3382;
    static const int GL_MAX_PROJECTION_STACK_DEPTH = 3384;
    static const int GL_MAX_TEXTURE_SIZE = 3379;
    static const int GL_MAX_TEXTURE_STACK_DEPTH = 3385;
    static const int GL_MAX_TEXTURE_UNITS = 34018;
    static const int GL_MAX_VIEWPORT_DIMS = 3386;
    static const int GL_MODELVIEW = 5888;
    static const int GL_MODULATE = 8448;
    static const int GL_MULTISAMPLE = 32925;
    static const int GL_NAND = 5390;
    static const int GL_NEAREST = 9728;
    static const int GL_NEAREST_MIPMAP_LINEAR = 9986;
    static const int GL_NEAREST_MIPMAP_NEAREST = 9984;
    static const int GL_NEVER = 512;
    static const int GL_NICEST = 4354;
    static const int GL_NO_ERROR = 0;
    static const int GL_NOOP = 5381;
    static const int GL_NOR = 5384;
    static const int GL_NORMAL_ARRAY = 32885;
    static const int GL_NORMALIZE = 2977;
    static const int GL_NOTEQUAL = 517;
    static const int GL_NUM_COMPRESSED_TEXTURE_FORMATS = 34466;
    static const int GL_ONE = 1;
    static const int GL_ONE_MINUS_DST_ALPHA = 773;
    static const int GL_ONE_MINUS_DST_COLOR = 775;
    static const int GL_ONE_MINUS_SRC_ALPHA = 771;
    static const int GL_ONE_MINUS_SRC_COLOR = 769;
    static const int GL_OR = 5383;
    static const int GL_OR_INVERTED = 5389;
    static const int GL_OR_REVERSE = 5387;
    static const int GL_OUT_OF_MEMORY = 1285;
    static const int GL_PACK_ALIGNMENT = 3333;
    static const int GL_PALETTE4_R5_G6_B5_OES = 35730;
    static const int GL_PALETTE4_RGB5_A1_OES = 35732;
    static const int GL_PALETTE4_RGB8_OES = 35728;
    static const int GL_PALETTE4_RGBA4_OES = 35731;
    static const int GL_PALETTE4_RGBA8_OES = 35729;
    static const int GL_PALETTE8_R5_G6_B5_OES = 35735;
    static const int GL_PALETTE8_RGB5_A1_OES = 35737;
    static const int GL_PALETTE8_RGB8_OES = 35733;
    static const int GL_PALETTE8_RGBA4_OES = 35736;
    static const int GL_PALETTE8_RGBA8_OES = 35734;
    static const int GL_PERSPECTIVE_CORRECTION_HINT = 3152;
    static const int GL_POINT_SMOOTH = 2832;
    static const int GL_POINT_SMOOTH_HINT = 3153;
    static const int GL_POINTS = 0;
    static const int GL_POINT_FADE_THRESHOLD_SIZE = 33064;
    static const int GL_POINT_SIZE = 2833;
    static const int GL_POLYGON_OFFSET_FILL = 32823;
    static const int GL_POLYGON_SMOOTH_HINT = 3155;
    static const int GL_POSITION = 4611;
    static const int GL_PROJECTION = 5889;
    static const int GL_QUADRATIC_ATTENUATION = 4617;
    static const int GL_RED_BITS = 3410;
    static const int GL_RENDERER = 7937;
    static const int GL_REPEAT = 10497;
    static const int GL_REPLACE = 7681;
    static const int GL_RESCALE_NORMAL = 32826;
    static const int GL_RGB = 6407;
    static const int GL_RGBA = 6408;
    static const int GL_SAMPLE_ALPHA_TO_COVERAGE = 32926;
    static const int GL_SAMPLE_ALPHA_TO_ONE = 32927;
    static const int GL_SAMPLE_COVERAGE = 32928;
    static const int GL_SCISSOR_TEST = 3089;
    static const int GL_SET = 5391;
    static const int GL_SHININESS = 5633;
    static const int GL_SHORT = 5122;
    static const int GL_SMOOTH = 7425;
    static const int GL_SMOOTH_LINE_WIDTH_RANGE = 2850;
    static const int GL_SMOOTH_POINT_SIZE_RANGE = 2834;
    static const int GL_SPECULAR = 4610;
    static const int GL_SPOT_CUTOFF = 4614;
    static const int GL_SPOT_DIRECTION = 4612;
    static const int GL_SPOT_EXPONENT = 4613;
    static const int GL_SRC_ALPHA = 770;
    static const int GL_SRC_ALPHA_SATURATE = 776;
    static const int GL_SRC_COLOR = 768;
    static const int GL_STACK_OVERFLOW = 1283;
    static const int GL_STACK_UNDERFLOW = 1284;
    static const int GL_STENCIL_BITS = 3415;
    static const int GL_STENCIL_BUFFER_BIT = 1024;
    static const int GL_STENCIL_TEST = 2960;
    static const int GL_SUBPIXEL_BITS = 3408;
    static const int GL_TEXTURE = 5890;
    static const int GL_TEXTURE_2D = 3553;
    static const int GL_TEXTURE_COORD_ARRAY = 32888;
    static const int GL_TEXTURE_ENV = 8960;
    static const int GL_TEXTURE_ENV_COLOR = 8705;
    static const int GL_TEXTURE_ENV_MODE = 8704;
    static const int GL_TEXTURE_MAG_FILTER = 10240;
    static const int GL_TEXTURE_MIN_FILTER = 10241;
    static const int GL_TEXTURE_WRAP_S = 10242;
    static const int GL_TEXTURE_WRAP_T = 10243;
    static const int GL_TEXTURE0 = 33984;
    static const int GL_TEXTURE1 = 33985;
    static const int GL_TEXTURE2 = 33986;
    static const int GL_TEXTURE3 = 33987;
    static const int GL_TEXTURE4 = 33988;
    static const int GL_TEXTURE5 = 33989;
    static const int GL_TEXTURE6 = 33990;
    static const int GL_TEXTURE7 = 33991;
    static const int GL_TEXTURE8 = 33992;
    static const int GL_TEXTURE9 = 33993;
    static const int GL_TEXTURE10 = 33994;
    static const int GL_TEXTURE11 = 33995;
    static const int GL_TEXTURE12 = 33996;
    static const int GL_TEXTURE13 = 33997;
    static const int GL_TEXTURE14 = 33998;
    static const int GL_TEXTURE15 = 33999;
    static const int GL_TEXTURE16 = 34000;
    static const int GL_TEXTURE17 = 34001;
    static const int GL_TEXTURE18 = 34002;
    static const int GL_TEXTURE19 = 34003;
    static const int GL_TEXTURE20 = 34004;
    static const int GL_TEXTURE21 = 34005;
    static const int GL_TEXTURE22 = 34006;
    static const int GL_TEXTURE23 = 34007;
    static const int GL_TEXTURE24 = 34008;
    static const int GL_TEXTURE25 = 34009;
    static const int GL_TEXTURE26 = 34010;
    static const int GL_TEXTURE27 = 34011;
    static const int GL_TEXTURE28 = 34012;
    static const int GL_TEXTURE29 = 34013;
    static const int GL_TEXTURE30 = 34014;
    static const int GL_TEXTURE31 = 34015;
    static const int GL_TRIANGLE_FAN = 6;
    static const int GL_TRIANGLE_STRIP = 5;
    static const int GL_TRIANGLES = 4;
    static const int GL_TRUE = 1;
    static const int GL_UNPACK_ALIGNMENT = 3317;
    static const int GL_UNSIGNED_BYTE = 5121;
    static const int GL_UNSIGNED_SHORT = 5123;
    static const int GL_UNSIGNED_SHORT_4_4_4_4 = 32819;
    static const int GL_UNSIGNED_SHORT_5_5_5_1 = 32820;
    static const int GL_UNSIGNED_SHORT_5_6_5 = 33635;
    static const int GL_VENDOR = 7936;
    static const int GL_VERSION = 7938;
    static const int GL_VERTEX_ARRAY = 32884;
    static const int GL_XOR = 5382;
    static const int GL_ZERO = 0;
    

    void glActiveTexture(int texture);
    

    void glAlphaFunc(int func, double ref);
    

    void glBindTexture(int target, int texture);
    

    void glBlendFunc(int sfactor, int dfactor);
    

    void glClear(int mask);
    

    void glClearColor(double red, double green, double blue, double alpha);
    

    void glClearDepthf(double depth);
    

    void glClearStencil(int s);
    

    void glClientActiveTexture(int texture);
    

    void glColor4f(double red, double green, double blue, double alpha);
    

    void glColorMask(bool red, bool green, bool blue, bool alpha);
    

    void glColorPointer(int size, int type, int stride, Buffer pointer);
    

    void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize, Buffer data);
    

    void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int imageSize, Buffer data);
    

    void glCopyTexImage2D(int target, int level, int internalformat, int x, int y, int width, int height, int border);
    

    void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height);
    

    void glCullFace(int mode);
    

    void glDeleteTextures([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glDeleteTextures$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glDeleteTextures$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glDeleteTextures');
    }

    void glDeleteTextures$3(int n, List<int> textures, int offset);
    

    void glDeleteTextures$2(int n, IntBuffer textures);
    

    void glDepthFunc(int func);
    

    void glDepthMask(bool flag);
    

    void glDepthRangef(double zNear, double zFar);
    

    void glDisable(int cap);
    

    void glDisableClientState(int array);
    

    void glDrawArrays(int mode, int first, int count);
    

    void glDrawElements(int mode, int count, int type, Buffer indices);
    

    void glEnable(int cap);
    

    void glEnableClientState(int array);
    

    void glFinish();
    

    void glFlush();
    

    void glFogf(int pname, double param);
    

    void glFogfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glFogfv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glFogfv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glFogfv');
    }

    void glFogfv$3(int pname, List<double> params, int offset);
    

    void glFogfv$2(int pname, FloatBuffer params);
    

    void glFrontFace(int mode);
    

    void glFrustumf(double left, double right, double bottom, double top, double zNear, double zFar);
    

    void glGenTextures([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glGenTextures$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glGenTextures$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glGenTextures');
    }

    void glGenTextures$3(int n, List<int> textures, int offset);
    

    void glGenTextures$2(int n, IntBuffer textures);
    

    int glGetError();
    

    void glGetIntegerv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glGetIntegerv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is IntBuffer) {
            this.glGetIntegerv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glGetIntegerv');
    }

    void glGetIntegerv$3(int pname, List<int> params, int offset);
    

    void glGetIntegerv$2(int pname, IntBuffer params);
    

    String glGetString(int name);
    

    void glHint(int target, int mode);
    

    void glLightModelf(int pname, double param);
    

    void glLightModelfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && jIsList(p1) && p2 is int) {
            this.glLightModelfv$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is int && p1 is FloatBuffer) {
            this.glLightModelfv$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'glLightModelfv');
    }

    void glLightModelfv$3(int pname, List<double> params, int offset);
    

    void glLightModelfv$2(int pname, FloatBuffer params);
    

    void glLightf(int light, int pname, double param);
    

    void glLightfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glLightfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glLightfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glLightfv');
    }

    void glLightfv$4(int light, int pname, List<double> params, int offset);
    

    void glLightfv$3(int light, int pname, FloatBuffer params);
    

    void glLineWidth(double width);
    

    void glLoadIdentity();
    

    void glLoadMatrixf([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glLoadMatrixf$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is FloatBuffer) {
            this.glLoadMatrixf$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glLoadMatrixf');
    }

    void glLoadMatrixf$2(List<double> m, int offset);
    

    void glLoadMatrixf$1(FloatBuffer m);
    

    void glLogicOp(int opcode);
    

    void glMaterialf(int face, int pname, double param);
    

    void glMaterialfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glMaterialfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glMaterialfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glMaterialfv');
    }

    void glMaterialfv$4(int face, int pname, List<double> params, int offset);
    

    void glMaterialfv$3(int face, int pname, FloatBuffer params);
    

    void glMatrixMode(int mode);
    

    void glMultMatrixf([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && jIsList(p0) && p1 is int) {
            this.glMultMatrixf$2(p0, p1);
            return;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is FloatBuffer) {
            this.glMultMatrixf$1(p0);
            return;
        }
        throw JException('NoSuchMethodError', 'glMultMatrixf');
    }

    void glMultMatrixf$2(List<double> m, int offset);
    

    void glMultMatrixf$1(FloatBuffer m);
    

    void glMultiTexCoord4f(int target, double s, double t, double r, double q);
    

    void glNormal3f(double nx, double ny, double nz);
    

    void glNormalPointer(int type, int stride, Buffer pointer);
    

    void glOrthof(double left, double right, double bottom, double top, double zNear, double zFar);
    

    void glPixelStorei(int pname, int param);
    

    void glPointSize(double size);
    

    void glPolygonOffset(double factor, double units);
    

    void glPopMatrix();
    

    void glPushMatrix();
    

    void glReadPixels(int x, int y, int width, int height, int format, int type, Buffer pixels);
    

    void glRotatef(double angle, double x, double y, double z);
    

    void glRotatex(int angle, int x, int y, int z);
    

    void glSampleCoverage(double value, bool invert);
    

    void glScalef(double x, double y, double z);
    

    void glScalex(int x, int y, int z);
    

    void glScissor(int x, int y, int width, int height);
    

    void glShadeModel(int mode);
    

    void glStencilFunc(int func, int ref, int mask);
    

    void glStencilMask(int mask);
    

    void glStencilOp(int fail, int zfail, int zpass);
    

    void glTexCoordPointer(int size, int type, int stride, Buffer pointer);
    

    void glTexEnvf(int target, int pname, double param);
    

    void glTexEnvfv([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p3, jnone) && p0 is int && p1 is int && jIsList(p2) && p3 is int) {
            this.glTexEnvfv$4(p0, p1, p2, p3);
            return;
        }
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is int && p1 is int && p2 is FloatBuffer) {
            this.glTexEnvfv$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'glTexEnvfv');
    }

    void glTexEnvfv$4(int target, int pname, List<double> params, int offset);
    

    void glTexEnvfv$3(int target, int pname, FloatBuffer params);
    

    void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, Buffer pixels);
    

    void glTexParameterf(int target, int pname, double param);
    

    void glTexParameteri(int target, int pname, int param);
    

    void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, Buffer pixels);
    

    void glTranslatef(double x, double y, double z);
    

    void glVertexPointer(int size, int type, int stride, Buffer pointer);
    

    void glViewport(int x, int y, int width, int height);
    

    void glBegin(int i);
    

    void glEnd();
    

    void glVertex3f(double f, double f2, double f3);
    

    void glPolygonMode(int i, int i1);
}

