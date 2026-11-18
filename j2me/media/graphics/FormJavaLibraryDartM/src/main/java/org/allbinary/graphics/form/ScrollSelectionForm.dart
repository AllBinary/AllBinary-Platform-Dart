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
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/math/RectangleCollisionUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/graphics/form/PaintableForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemPaintableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemIndexPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemIndexDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/ItemPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormVerticalPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormVericalDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormHorizontalPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionFormHorizontalDx.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';

class ScrollSelectionForm extends PaintableForm {
    static Object NULL_SCROLL_SELECTION_FORM = NullUtil.getInstance().NULL_OBJECT;
    static Object NULL_SCROLL_SELECTION_HORIZONTAL_FORM = NullUtil.getInstance().NULL_OBJECT;
    static const String INSIDE_FORM = " inside form";
    static const String IS_IN_FORM = "isInForm";
    static const String GET_SELECTED_INDEX = "getSelectedIndexForPoint";
    late RectangleCollisionUtil rectangleCollisionUtil;
    int border = 0;
    int halfBorder = 0;
    late BasicColor buttonBasicColor;
    late ItemIndexPaintable scrollSelectionFormFormTypeItemIndexPaintable;
    late ItemIndexDx formTypeItemIndexDx;
    late ItemPaintable paintable;
    int adjustedExtraBorder = 0;

    // Java field initializers run after the base constructor
    void initFieldsScrollSelectionForm() {
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    
    
    
    this.scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance();
    this.formTypeItemIndexDx = ItemIndexDx.getInstance();
    this.paintable = ItemPaintableFactory.getInstance();
    
    }
    

    static PaintableForm createForm(String title, List<ABCustomItem?> items, ItemPaintableFactory formPaintableFactory, int border, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        try {
            if (formPaintableFactory == ItemPaintableFactory.getInstance()) {
                return ScrollSelectionForm(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor);
            } else {
                final CommonStrings commonStrings = CommonStrings.getInstance();
                final LogUtil logUtil = LogUtil.getInstance();
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION);
                return PaintableForm.getNullPaintableForm();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            final LogUtil logUtil = LogUtil.getInstance();
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e);
            return PaintableForm.getNullPaintableForm();
            }
        }
    }
    

    static ScrollSelectionForm getNullScrollSelectionForm() {
        if (ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM == NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, List<ABCustomItem?>.filled(0, null), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM as ScrollSelectionForm);
    }
    

    static ScrollSelectionForm getNullScrollSelectionFormHorizontal() {
        if (ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM == NullUtil.getInstance().NULL_OBJECT) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, List<ABCustomItem?>.filled(0, null), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM as ScrollSelectionForm);
    }
    

    ScrollSelectionForm(String title, List<ABCustomItem?> items, ItemPaintableFactory formPaintableFactory, int border, int adjustedExtraBorder, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(title, items, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsScrollSelectionForm();
        
        this.adjustedExtraBorder = adjustedExtraBorder;
        this.buttonBasicColor = foregroundBasicColor;
        this.border = border;
        this.halfBorder = (border >> 1);
        this.paintable = formPaintableFactory.getInstanceItemPaintable(this);
    }
    

    @override
    void init(Rectangle rectangle, FormType formType) {
        super.init(rectangle, formType);
        final FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (formType == formTypeFactory.HORIZONTAL_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormHorizontalPaintable(this);
            this.formTypeItemIndexDx = ScrollSelectionFormHorizontalDx(this);
        } else if (formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormVerticalPaintable(this);
            this.formTypeItemIndexDx = ScrollSelectionFormVericalDx(this);
        } else if (formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            this.scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormTempHorizontalPaintable(this);
            this.formTypeItemIndexDx = ScrollSelectionFormTempHorizontalDx(this);
        } else if (formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            throw JException('Exception', formTypeFactory.UNK);
        }
    }
    

    int paintItemHorizontal(Graphics graphics, int index, ABCustomItem item, int x, int y) {
        final int width = item.getMinimumWidth();
        return x + width + this.border;
    }
    

    int paintItemVertical(Graphics graphics, int index, ABCustomItem item, int x, int y) {
        final int height = item.getMinimumHeight();
        return y + height + this.border;
    }
    

    int paintItemTempHorizontal(Graphics graphics, int index, ABCustomItem item, int x, int y) {
        return 0;
    }
    

    int getSelectedIndexForPointHorizontalDx(int index, ABCustomItem item, int dx, int dy) {
        return dx - this.halfBorder;
    }
    

    int getSelectedIndexForPointVerticalDx(int index, ABCustomItem item, int dx, int dy) {
        return dx + this.getDiffX(item);
    }
    

    int getSelectedIndexForPointTempHorizontalDx(int index, ABCustomItem item, int dx, int dy) {
        return dx + this.getDiffX(item);
    }
    

    @override
    int append(ABCustomItem item) {
        return super.append(item);
    }
    

    ABCustomItem getSelectedItem(GPoint point) {
        int index = this.getSelectedIndexForPoint(point);
        if (index != -1) {
            return this.get(index);
        } else {
            return ABCustomItem.getNullInstance();
        }
    }
    

    int getItemIndex(ABCustomItem item) {
        late ABCustomItem nextItem;
        final int size = this.size();
        for (int index = 0; index < size; index++) {
            nextItem = (this.get(index) as ABCustomItem);
            if (identical(nextItem, item)) {
                return index;
            }
        }
        return -1;
    }
    

    int getStartIndex() {
        return 0;
    }
    

    int getSelectedIndexForPoint(GPoint point) {
        final int start = this.getStartIndex();
        final int size = this.size();
        int dx = this.getDx();
        int dy = this.getDy();
        final FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        final CommonLabels commonLabels = CommonLabels.getInstance();
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(commonLabels.START_LABEL);
        stringBuffer.appendint(start);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(commonLabels.TOTAL_LABEL);
        stringBuffer.appendint(size);
        this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX);
        late ABCustomItem item;
        int width = 0;
        int height = 0;
        int diffX = 0;
        for (int index = start; index < size; index++) {
            item = this.get(index);
            width = item.getMinimumWidth();
            height = item.getMinimumHeight();
            diffX = this.formTypeItemIndexDx.getDx(index, item, dx, dy);
            if (this.rectangleCollisionUtil.isInside(diffX, dy - this.halfBorder, diffX + width + this.border, dy + height + this.halfBorder + 1, point.getX(), point.getY())) {
                stringBuffer.delete(0, stringBuffer.length());
                stringBuffer.append(commonLabels.ITEM_LABEL);
                stringBuffer.append(item.getLabel());
                stringBuffer.append(CommonSeps.getInstance().SPACE);
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.appendint(index);
                this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX);
                return index;
            }
            if (this.formType == formTypeFactory.HORIZONTAL_FORM) {
                dx = dx + width + this.border;
                if (dx > this.rectangle.getMaxX()) {
                    break;
                }
            } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
                dy = dy + height + this.border;
                if (dy > this.rectangle.getMaxY()) {
                    break;
                }
            } else if (this.formType == formTypeFactory.NULL_FORM_TYPE) {
            } else {
                throw JException('Exception', formTypeFactory.UNK);
            }
        }
        return -1;
    }
    

    int processInputKey(int gameKeyCode) {
        final FormTypeFactory formTypeFactory = FormTypeFactory.getInstance();
        if (this.size() == 0) {
            return -1;
        }
        int index = this.getSelectedIndex();
        if (this.formType == formTypeFactory.HORIZONTAL_FORM || this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM) {
            if (gameKeyCode == Canvas.RIGHT) {
                index++;
            } else if (gameKeyCode == Canvas.LEFT) {
                index--;
            }
        } else if (this.formType == formTypeFactory.VERTICAL_CENTER_FORM) {
            if (gameKeyCode == Canvas.DOWN) {
                index++;
            } else if (gameKeyCode == Canvas.UP) {
                index--;
            }
        } else if (this.formType == formTypeFactory.NULL_FORM_TYPE) {
        } else {
            throw JException('Exception', formTypeFactory.UNK);
        }
        final int max = this.size() - 1;
        if (index < 0) {
            this.setSelectedIndex(0);
        } else if (index > max) {
            this.setSelectedIndex(max);
        } else {
            this.setSelectedIndex(index);
        }
        return -1;
    }
    

    bool isInForm(GPoint point) {
        if (this.rectangleCollisionUtil.isInside(this.x, this.y - this.halfBorder, this.rectangle.getMaxX() + this.border, this.rectangle.getMaxY() + this.border, point.getX(), point.getY())) {
            this.logUtil.putF(StringMaker().append(StringUtil.getInstance().toString1(point)).append(ScrollSelectionForm.INSIDE_FORM).toString(), this, ScrollSelectionForm.IS_IN_FORM);
            return true;
        }
        return false;
    }
    

    int paintItem(Graphics graphics, int index, ABCustomItem item, int x, int y) {
        item.paintXY(graphics, x, y);
        final int width = item.getMinimumWidth();
        final int height = item.getMinimumHeight();
        graphics.setColor(this.getButtonBasicColor().intValue());
        final int adjustedBorder = 3;
        graphics.drawRect(x - this.halfBorder - adjustedBorder, y - this.halfBorder - adjustedBorder, width + this.border + this.adjustedExtraBorder, height + this.border + this.adjustedExtraBorder);
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    int paintUnselectedItem(Graphics graphics, int index, ABCustomItem item, int x, int y) {
        graphics.setColor(this.getButtonBasicColor().intValue());
        item.paintUnselected(graphics, x, y);
        return this.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y);
    }
    

    int getDiffX(ABCustomItem item) {
        return 0;
    }
    

    int getDx() {
        return this.x;
    }
    

    int getDy() {
        return this.y;
    }
    

    void setButtonBasicColor(BasicColor buttonBasicColor) {
        this.buttonBasicColor = buttonBasicColor;
    }
    

    BasicColor getButtonBasicColor() {
        return this.buttonBasicColor;
    }
}

