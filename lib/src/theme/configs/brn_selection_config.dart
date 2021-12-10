import 'dart:ui';

import 'package:bruno/src/theme/base/brn_base_config.dart';
import 'package:bruno/src/theme/base/brn_default_config_utils.dart';
import 'package:bruno/src/theme/base/brn_text_style.dart';
import 'package:bruno/src/theme/brn_theme_configurator.dart';
import 'package:bruno/src/theme/configs/brn_common_config.dart';
import 'package:flutter/material.dart';

/// 筛选项 配置类

class BrnSelectionConfig extends BrnBaseConfig {
  /// menu 正常文本样式
  /// TextStyle(fontWeight: FontWeight.normal ,fontSize: [BrnCommonConfig.fontSizeBase],color: [BrnCommonConfig.colorTextBase])
  late BrnTextStyle menuNormalTextStyle;

  /// menu 选中文本样式
  /// TextStyle(fontWeight: FontWeight.w600,fontSize: [BrnCommonConfig.fontSizeBase],color: [BrnCommonConfig.brandPrimary])
  late BrnTextStyle menuSelectedTextStyle;

  /// tag 正常文本样式
  /// TextStyle(fontWeight: FontWeight.w400,fontSize: [BrnCommonConfig.fontSizeCaption],color: [BrnCommonConfig.colorTextBase])
  late BrnTextStyle tagNormalTextStyle;

  /// tag 选中文本样式
  /// TextStyle(fontWeight: FontWeight.w600,fontSize: [BrnCommonConfig.fontSizeCaption],color: [BrnCommonConfig.brandPrimary])
  late BrnTextStyle tagSelectedTextStyle;

  /// tag圆角
  /// default value is [BrnCommonConfig.radiusSm]
  late double tagRadius;

  /// tag 正常背景色
  /// default value is [BrnCommonConfig.fillBody]
  late Color tagNormalBackgroundColor;

  /// tag 选中背景色
  /// [BrnCommonConfig.brandPrimary].withOpacity(0.12)
  late Color tagSelectedBackgroundColor;

  /// 输入选项标题文本样式
  /// TextStyle(fontWeight : FontWeight.w600,fontSize: [BrnCommonConfig.fontSizeSubHead], color: [BrnCommonConfig.colorTextBase])
  late BrnTextStyle rangeTitleTextStyle;

  /// 输入提示文本样式
  /// TextStyle(fontSize: [BrnCommonConfig.fontSizeBase], color: [BrnCommonConfig.colorTextHint])
  late BrnTextStyle hintTextStyle;

  /// 输入框默认文本样式
  /// TextStyle(fontSize: [BrnCommonConfig.fontSizeBase], color: [BrnCommonConfig.colorTextBase])
  late BrnTextStyle inputTextStyle;

  /// item 正常字体样式
  /// TextStyle(fontSize: [BrnCommonConfig.fontSizeBase],color: [BrnCommonConfig.colorTextBase])
  late BrnTextStyle itemNormalTextStyle;

  /// item 选中文本样式
  /// TextStyle(fontSize: [BrnCommonConfig.fontSizeBase],fontWeight: FontWeight.w600,color: [BrnCommonConfig.brandPrimary])
  late BrnTextStyle itemSelectedTextStyle;

  /// item 仅加粗样式
  /// TextStyle(fontSize: [BrnCommonConfig.fontSizeBase],fontWeight: FontWeight.w600,color: [BrnCommonConfig.colorTextBase])
  late BrnTextStyle itemBoldTextStyle;

  /// 三级item 背景色
  /// Color(0xFFF0F0F0)
  late Color deepNormalBgColor;

  /// 三级item 选中背景色
  /// Color(0xFFF8F8F8)
  late Color deepSelectBgColor;

  /// 二级item 背景色
  /// Color(0xFFF8F8F8)
  late Color middleNormalBgColor;

  /// 二级item 选中背景色
  /// Colors.white
  late Color middleSelectBgColor;

  /// 一级item 背景色
  /// Colors.white
  late Color lightNormalBgColor;

  /// 一级item 选中背景色
  /// Colors.white
  late Color lightSelectBgColor;

  /// 重置按钮颜色
  /// TextStyle(color: [BrnCommonConfig.colorTextImportant],fontSize: [BrnCommonConfig.fontSizeCaption])
  late BrnTextStyle resetTextStyle;

  /// 更多筛选-标题文本样式
  /// TextStyle(color: [BrnCommonConfig.colorTextBase],fontSize: [BrnCommonConfig.fontSizeBase],fontWeight: FontWeight.w600)
  late BrnTextStyle titleForMoreTextStyle;

  /// 选项-显示文本
  /// TextStyle(color: [BrnCommonConfig.brandPrimary],fontSize: [BrnCommonConfig.fontSizeBase])
  late BrnTextStyle optionTextStyle;

  /// 更多文本样式
  /// TextStyle(color: [BrnCommonConfig.colorTextSecondary],fontSize: [BrnCommonConfig.fontSizeCaption]）
  late BrnTextStyle moreTextStyle;

  /// 跳转二级页-正常文本样式
  /// TextStyle(color: [BrnCommonConfig.colorTextBase],fontSize: [BrnCommonConfig.fontSizeSubHead],fontWeight: FontWeight.normal)
  late BrnTextStyle flayNormalTextStyle;

  /// 跳转二级页-选中文本样式
  /// TextStyle(color: [BrnCommonConfig.brandPrimary],fontSize: [BrnCommonConfig.fontSizeSubHead],fontWeight: FontWeight.w600)
  late BrnTextStyle flatSelectedTextStyle;

  /// 跳转二级页-加粗文本样式
  /// TextStyle(color: [BrnCommonConfig.colorTextBase],fontSize: [BrnCommonConfig.fontSizeSubHead],fontWeight: FontWeight.w600)
  late BrnTextStyle flatBoldTextStyle;

  BrnSelectionConfig(
      {BrnTextStyle? menuNormalTextStyle,
      BrnTextStyle? menuSelectedTextStyle,
      BrnTextStyle? tagNormalTextStyle,
      BrnTextStyle? tagSelectedTextStyle,
      double? tagRadius,
      Color? tagNormalBackgroundColor,
      Color? tagSelectedBackgroundColor,
      BrnTextStyle? rangeTitleTextStyle,
      BrnTextStyle? hintTextStyle,
      BrnTextStyle? inputTextStyle,
      BrnTextStyle? itemNormalTextStyle,
      BrnTextStyle? itemSelectedTextStyle,
      BrnTextStyle? itemBoldTextStyle,
      Color? deepNormalBgColor,
      Color? deepSelectBgColor,
      Color? middleNormalBgColor,
      Color? middleSelectBgColor,
      Color? lightNormalBgColor,
      Color? lightSelectBgColor,
      BrnTextStyle? resetTextStyle,
      BrnTextStyle? titleForMoreTextStyle,
      BrnTextStyle? optionTextStyle,
      BrnTextStyle? moreTextStyle,
      BrnTextStyle? flayNormalTextStyle,
      BrnTextStyle? flatSelectedTextStyle,
      BrnTextStyle? flatBoldTextStyle,
      String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.menuNormalTextStyle = menuNormalTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
    this.menuSelectedTextStyle = menuSelectedTextStyle ??
        BrnTextStyle(
            fontWeight: FontWeight.w600,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
            color: BrnDefaultConfigUtils.defaultCommonConfig.brandPrimary);
    this.tagNormalTextStyle = tagNormalTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeCaption);
    this.tagSelectedTextStyle = tagSelectedTextStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.brandPrimary,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeCaption,
          fontWeight: FontWeight.w600,
        );
    this.tagRadius = tagRadius ?? BrnDefaultConfigUtils.defaultCommonConfig.radiusSm;
    this.tagNormalBackgroundColor =
        tagNormalBackgroundColor ?? BrnDefaultConfigUtils.defaultCommonConfig.fillBody;
    this.tagSelectedBackgroundColor = tagSelectedBackgroundColor ??
        BrnDefaultConfigUtils.defaultCommonConfig.brandPrimary.withOpacity(0.12);
    this.rangeTitleTextStyle = rangeTitleTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
            fontWeight: FontWeight.w600);
    this.hintTextStyle = hintTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextHint,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
    this.inputTextStyle = inputTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
    this.itemNormalTextStyle = itemNormalTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
    this.itemSelectedTextStyle = itemSelectedTextStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.brandPrimary,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
          fontWeight: FontWeight.w600,
        );
    this.itemBoldTextStyle = itemBoldTextStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
          fontWeight: FontWeight.w600,
        );
    this.lightSelectBgColor = lightSelectBgColor ?? Colors.white;
    this.lightNormalBgColor = lightNormalBgColor ?? Colors.white;
    this.middleSelectBgColor = middleSelectBgColor ?? Colors.white;
    this.middleNormalBgColor = middleNormalBgColor ?? Color(0xFFF8F8F8);
    this.deepSelectBgColor = deepSelectBgColor ?? Color(0xFFF8F8F8);
    this.deepNormalBgColor = deepNormalBgColor ?? Color(0xFFF0F0F0);
    this.resetTextStyle = resetTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextImportant,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeCaption);
    this.titleForMoreTextStyle = titleForMoreTextStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
          fontWeight: FontWeight.w600,
        );
    this.optionTextStyle = optionTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.brandPrimary,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
    this.moreTextStyle = moreTextStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeCaption,
        );
    this.flayNormalTextStyle = flayNormalTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead);
    this.flatSelectedTextStyle = flatSelectedTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.brandPrimary,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
            fontWeight: FontWeight.w600);
    this.flatBoldTextStyle = flatBoldTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
            fontWeight: FontWeight.w600);
  }

  @override
  void initThemeConfig(String configId, {BrnCommonConfig? currentLevelCommonConfig}) {
    super.initThemeConfig(configId, currentLevelCommonConfig: currentLevelCommonConfig);

    /// 用户全局筛选配置
    BrnSelectionConfig selectionConfig =
        BrnThemeConfigurator.instance.getConfig(configId: configId).selectionConfig;

    lightSelectBgColor = selectionConfig.lightSelectBgColor;

    lightNormalBgColor = selectionConfig.lightNormalBgColor;

    middleSelectBgColor = selectionConfig.middleSelectBgColor;

    middleNormalBgColor = selectionConfig.middleNormalBgColor;

    deepSelectBgColor = selectionConfig.deepSelectBgColor;

    deepNormalBgColor = selectionConfig.deepNormalBgColor;

    tagSelectedBackgroundColor = commonConfig.brandPrimary.withOpacity(0.12);

    tagNormalBackgroundColor = commonConfig.fillBody;

    tagRadius = commonConfig.radiusSm;

    this.flatBoldTextStyle = selectionConfig.flatBoldTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.flatBoldTextStyle));

    this.flatSelectedTextStyle = selectionConfig.flatSelectedTextStyle.merge(
        BrnTextStyle(color: commonConfig.brandPrimary, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.flatSelectedTextStyle));

    this.flayNormalTextStyle = selectionConfig.flayNormalTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.flayNormalTextStyle));

    this.moreTextStyle = selectionConfig.moreTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextSecondary, fontSize: commonConfig.fontSizeCaption)
            .merge(this.moreTextStyle));

    this.optionTextStyle = selectionConfig.optionTextStyle.merge(
        BrnTextStyle(color: commonConfig.brandPrimary, fontSize: commonConfig.fontSizeBase)
            .merge(this.optionTextStyle));

    this.titleForMoreTextStyle = selectionConfig.titleForMoreTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeBase)
            .merge(this.titleForMoreTextStyle));

    this.resetTextStyle = selectionConfig.resetTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextImportant, fontSize: commonConfig.fontSizeCaption)
            .merge(this.resetTextStyle));

    this.itemBoldTextStyle = selectionConfig.itemBoldTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeBase)
            .merge(this.itemBoldTextStyle));

    this.itemSelectedTextStyle = selectionConfig.itemSelectedTextStyle.merge(
        BrnTextStyle(color: commonConfig.brandPrimary, fontSize: commonConfig.fontSizeBase)
            .merge(this.itemSelectedTextStyle));

    this.itemNormalTextStyle = selectionConfig.itemNormalTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeBase)
            .merge(this.itemNormalTextStyle));

    this.inputTextStyle = selectionConfig.inputTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeBase)
            .merge(this.inputTextStyle));

    this.hintTextStyle = selectionConfig.hintTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextHint, fontSize: commonConfig.fontSizeBase)
            .merge(this.hintTextStyle));

    this.rangeTitleTextStyle = selectionConfig.rangeTitleTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.rangeTitleTextStyle));

    this.tagSelectedTextStyle = selectionConfig.tagSelectedTextStyle.merge(
        BrnTextStyle(color: commonConfig.brandPrimary, fontSize: commonConfig.fontSizeCaption)
            .merge(this.tagSelectedTextStyle));

    this.tagNormalTextStyle = selectionConfig.tagNormalTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeCaption)
            .merge(this.tagNormalTextStyle));

    this.menuNormalTextStyle = selectionConfig.menuNormalTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeBase)
            .merge(this.menuNormalTextStyle));

    this.menuSelectedTextStyle = selectionConfig.menuSelectedTextStyle.merge(
        BrnTextStyle(color: commonConfig.brandPrimary, fontSize: commonConfig.fontSizeBase)
            .merge(this.menuSelectedTextStyle));
  }

  BrnSelectionConfig copyWith({
    BrnTextStyle? menuNormalTextStyle,
    BrnTextStyle? menuSelectedTextStyle,
    BrnTextStyle? tagTextStyle,
    BrnTextStyle? tagSelectedTextStyle,
    double? tagRadius,
    Color? tagBackgroundColor,
    Color? tagSelectedBackgroundColor,
    BrnTextStyle? hintTextStyle,
    BrnTextStyle? rangeTitleTextStyle,
    BrnTextStyle? inputTextStyle,
    BrnTextStyle? itemNormalTextStyle,
    BrnTextStyle? itemSelectedTextStyle,
    BrnTextStyle? itemBoldTextStyle,
    Color? deepNormalBgColor,
    Color? deepSelectBgColor,
    Color? middleNormalBgColor,
    Color? middleSelectBgColor,
    Color? lightNormalBgColor,
    Color? lightSelectBgColor,
    BrnTextStyle? resetTextStyle,
    BrnTextStyle? titleForMoreTextStyle,
    BrnTextStyle? optionTextStyle,
    BrnTextStyle? moreTextStyle,
    BrnTextStyle? flayNormalTextStyle,
    BrnTextStyle? flatSelectedTextStyle,
    BrnTextStyle? flatBoldTextStyle,
  }) {
    return BrnSelectionConfig(
        menuNormalTextStyle: menuNormalTextStyle ?? this.menuNormalTextStyle,
        menuSelectedTextStyle: menuSelectedTextStyle ?? this.menuSelectedTextStyle,
        tagNormalTextStyle: tagTextStyle ?? this.tagNormalTextStyle,
        tagSelectedTextStyle: tagSelectedTextStyle ?? this.tagSelectedTextStyle,
        tagRadius: tagRadius ?? this.tagRadius,
        tagNormalBackgroundColor: tagBackgroundColor ?? this.tagNormalBackgroundColor,
        tagSelectedBackgroundColor: tagSelectedBackgroundColor ?? this.tagSelectedBackgroundColor,
        hintTextStyle: hintTextStyle ?? this.hintTextStyle,
        rangeTitleTextStyle: rangeTitleTextStyle ?? this.rangeTitleTextStyle,
        inputTextStyle: inputTextStyle ?? this.inputTextStyle,
        itemNormalTextStyle: itemNormalTextStyle ?? this.itemNormalTextStyle,
        itemSelectedTextStyle: itemSelectedTextStyle ?? this.itemSelectedTextStyle,
        itemBoldTextStyle: itemBoldTextStyle ?? this.itemBoldTextStyle,
        deepNormalBgColor: deepNormalBgColor ?? this.deepNormalBgColor,
        deepSelectBgColor: deepSelectBgColor ?? this.deepSelectBgColor,
        middleNormalBgColor: middleNormalBgColor ?? this.middleNormalBgColor,
        middleSelectBgColor: middleSelectBgColor ?? this.middleSelectBgColor,
        lightNormalBgColor: lightNormalBgColor ?? this.lightNormalBgColor,
        lightSelectBgColor: lightSelectBgColor ?? this.lightSelectBgColor,
        resetTextStyle: resetTextStyle ?? this.resetTextStyle,
        titleForMoreTextStyle: titleForMoreTextStyle ?? this.titleForMoreTextStyle,
        optionTextStyle: optionTextStyle ?? this.optionTextStyle,
        moreTextStyle: moreTextStyle ?? this.moreTextStyle,
        flayNormalTextStyle: flayNormalTextStyle ?? this.flayNormalTextStyle,
        flatSelectedTextStyle: flatSelectedTextStyle ?? this.flatSelectedTextStyle,
        flatBoldTextStyle: flatBoldTextStyle ?? this.flatBoldTextStyle);
  }

  BrnSelectionConfig merge(BrnSelectionConfig other) {
    return copyWith(
        menuNormalTextStyle:
            this.menuNormalTextStyle.merge(other.menuNormalTextStyle) ?? other.menuNormalTextStyle,
        menuSelectedTextStyle: this.menuSelectedTextStyle.merge(other.menuSelectedTextStyle) ??
            other.menuSelectedTextStyle,
        tagTextStyle:
            this.tagNormalTextStyle.merge(other.tagNormalTextStyle) ?? other.tagNormalTextStyle,
        tagSelectedTextStyle: this.tagSelectedTextStyle.merge(other.tagSelectedTextStyle) ??
            other.tagSelectedTextStyle,
        tagRadius: other.tagRadius,
        tagBackgroundColor: other.tagNormalBackgroundColor,
        tagSelectedBackgroundColor: other.tagSelectedBackgroundColor,
        hintTextStyle: this.hintTextStyle.merge(other.hintTextStyle) ?? other.hintTextStyle,
        rangeTitleTextStyle:
            this.rangeTitleTextStyle.merge(other.rangeTitleTextStyle) ?? other.rangeTitleTextStyle,
        inputTextStyle: this.inputTextStyle.merge(other.inputTextStyle) ?? other.inputTextStyle,
        itemNormalTextStyle:
            this.itemNormalTextStyle.merge(other.itemNormalTextStyle) ?? other.itemNormalTextStyle,
        itemSelectedTextStyle: this.itemSelectedTextStyle.merge(other.itemSelectedTextStyle) ??
            other.itemSelectedTextStyle,
        itemBoldTextStyle:
            this.itemBoldTextStyle.merge(other.itemBoldTextStyle) ?? other.itemBoldTextStyle,
        deepNormalBgColor: other.deepNormalBgColor,
        deepSelectBgColor: other.deepSelectBgColor,
        middleNormalBgColor: other.middleNormalBgColor,
        middleSelectBgColor: other.middleSelectBgColor,
        lightNormalBgColor: other.lightNormalBgColor,
        lightSelectBgColor: other.lightSelectBgColor,
        resetTextStyle: this.resetTextStyle.merge(other.resetTextStyle) ?? other.resetTextStyle,
        titleForMoreTextStyle: this.titleForMoreTextStyle.merge(other.titleForMoreTextStyle) ??
            other.titleForMoreTextStyle,
        optionTextStyle: this.optionTextStyle.merge(other.optionTextStyle) ?? other.optionTextStyle,
        moreTextStyle: this.moreTextStyle.merge(other.moreTextStyle) ?? other.moreTextStyle,
        flayNormalTextStyle:
            this.flayNormalTextStyle.merge(other.flayNormalTextStyle) ?? other.flayNormalTextStyle,
        flatSelectedTextStyle: this.flatSelectedTextStyle.merge(other.flatSelectedTextStyle) ??
            other.flatSelectedTextStyle,
        flatBoldTextStyle:
            this.flatBoldTextStyle.merge(other.flatBoldTextStyle) ?? other.flatBoldTextStyle);
  }
}
