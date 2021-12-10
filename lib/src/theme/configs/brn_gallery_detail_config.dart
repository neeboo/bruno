import 'dart:ui';

import 'package:bruno/src/components/navbar/brn_appbar_theme.dart';
import 'package:bruno/src/theme/base/brn_base_config.dart';
import 'package:bruno/src/theme/base/brn_default_config_utils.dart';
import 'package:bruno/src/theme/base/brn_text_style.dart';
import 'package:bruno/src/theme/brn_theme_configurator.dart';
import 'package:bruno/src/theme/configs/brn_common_config.dart';
import 'package:flutter/material.dart';

/// 查看大图配置
class BrnGalleryDetailConfig extends BrnBaseConfig {
  /// appbar   brightness待定

  /// appbar 标题样式
  /// default value is TextStyle(color: [BrnCommonConfig.colorTextBaseInverse],fontSize: [BrnCommonConfig.fontSizeHead],fontWeight: FontWeight.w600)
  late BrnTextStyle appbarTitleStyle;

  /// 右侧操作区域文案样式
  /// default value is TextStyle(color: AppBarBrightness(brightness).textColor,fontSize: BrnAppBarTheme.actionFontSize,fontWeight: FontWeight.w600)
  late BrnTextStyle appbarActionStyle;

  /// appBar 背景色
  /// default value is Colors.black
  late Color appbarBackgroundColor;

  /// appbar brightness
  /// default value is [Brightness.dark]
  late Brightness appbarBrightness;

  /// tabBar 标题普通样式
  /// default value is TextStyle(fontSize: [BrnCommonConfig.fontSizeSubHead], color: Colors.red)
  late BrnTextStyle tabBarUnSelectedLabelStyle;

  /// tabBar 标题选中样式
  /// default value is  TextStyle(fontSize: [BrnCommonConfig.fontSizeSubHead],fontWeight: FontWeight.w600,color: [BrnCommonConfig.colorTextBaseInverse])
  late BrnTextStyle tabBarLabelStyle;

  /// tabBar 背景色
  /// default value is Colors.black
  late Color tabBarBackgroundColor;

  /// 页面 背景色
  /// default value is Colors.black
  late Color pageBackgroundColor;

  /// 底部内容区域的背景色
  /// default value is  Color(0X88000000)
  late Color bottomBackgroundColor;

  /// 标题文案样式  TextStyle(color: [BrnCommonConfig.colorTextBaseInverse],fontSize: [BrnCommonConfig.fontSizeHead],fontWeight: FontWeight.w600)
  /// default value is
  late BrnTextStyle titleStyle;

  /// 内容文案样式
  /// default value is TextStyle(color: Color(0xFFCCCCCC), fontSize: [BrnCommonConfig.fontSizeBase])
  late BrnTextStyle contentStyle;

  /// 右侧展开收起样式
  /// default value is TextStyle(color: [BrnCommonConfig.colorTextBaseInverse],fontSize: [BrnCommonConfig.fontSizeBase],)
  late BrnTextStyle actionStyle;

  /// icon 颜色
  /// default value is Colors.white
  late Color iconColor;

  BrnGalleryDetailConfig(
      {BrnTextStyle? appbarTitleStyle,
      BrnTextStyle? appbarActionStyle,
      Color? appbarBackgroundColor,
      Brightness? appbarBrightness,
      BrnTextStyle? tabBarUnSelectedLabelStyle,
      BrnTextStyle? tabBarLabelStyle,
      Color? tabBarBackgroundColor,
      Color? pageBackgroundColor,
      Color? bottomBackgroundColor,
      BrnTextStyle? titleStyle,
      BrnTextStyle? contentStyle,
      BrnTextStyle? actionStyle,
      Color? iconColor,
      String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.appbarTitleStyle = appbarTitleStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBaseInverse,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
          fontWeight: FontWeight.w600,
        );
    this.appbarActionStyle = appbarActionStyle ??
        BrnTextStyle(
            color: BrnAppBarTheme.lightTextColor,
            fontSize: BrnAppBarTheme.actionFontSize,
            fontWeight: FontWeight.w600);
    this.appbarBackgroundColor = appbarBackgroundColor ?? Colors.black;
    this.appbarBrightness = appbarBrightness ?? Brightness.dark;
    this.tabBarUnSelectedLabelStyle =
        tabBarUnSelectedLabelStyle ?? BrnTextStyle(fontSize: 16, color: Color(0XFFCCCCCC));
    this.tabBarLabelStyle = tabBarLabelStyle ??
        BrnTextStyle(
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
            fontWeight: FontWeight.w600,
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBaseInverse);
    this.tabBarBackgroundColor = tabBarBackgroundColor ?? Colors.black;
    this.pageBackgroundColor = pageBackgroundColor ?? Colors.black;
    this.bottomBackgroundColor = bottomBackgroundColor ?? Color(0X88000000);
    this.titleStyle = titleStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBaseInverse,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeHead,
            fontWeight: FontWeight.w600);
    this.contentStyle = contentStyle ??
        BrnTextStyle(
            color: Color(0xFFCCCCCC),
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
    this.actionStyle = actionStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBaseInverse,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
    this.iconColor = iconColor ?? Colors.white;
  }

  /// 黑色主题
  BrnGalleryDetailConfig.dark(
      {BrnTextStyle? appbarTitleStyle,
      BrnTextStyle? appbarActionStyle,
      Color? appbarBackgroundColor,
      Brightness? appbarBrightness,
      BrnTextStyle? tabBarUnSelectedLabelStyle,
      BrnTextStyle? tabBarLabelStyle,
      Color? tabBarBackgroundColor,
      Color? pageBackgroundColor,
      Color? bottomBackgroundColor,
      BrnTextStyle? titleStyle,
      BrnTextStyle? contentStyle,
      BrnTextStyle? actionStyle,
      Color? iconColor,
      String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.appbarTitleStyle = BrnTextStyle(color: commonConfig.colorTextBaseInverse);
    this.appbarActionStyle = BrnTextStyle(color: BrnAppBarTheme.lightTextColor);
    this.appbarBackgroundColor = Colors.black;
    this.appbarBrightness = Brightness.dark;
    this.tabBarUnSelectedLabelStyle = BrnTextStyle(color: Color(0XFFCCCCCC));
    this.tabBarLabelStyle = BrnTextStyle(color: commonConfig.colorTextBaseInverse);
    this.tabBarBackgroundColor = Colors.black;
    this.pageBackgroundColor = Colors.black;
    this.bottomBackgroundColor = Color(0X88000000);
    this.titleStyle = BrnTextStyle(color: commonConfig.colorTextBaseInverse);
    this.contentStyle = BrnTextStyle(color: Color(0xFFCCCCCC));
    this.actionStyle = BrnTextStyle(color: commonConfig.colorTextBaseInverse);
    this.iconColor = Colors.white;
  }

  /// 白色主题
  BrnGalleryDetailConfig.light(
      {BrnTextStyle? appbarTitleStyle,
      BrnTextStyle? appbarActionStyle,
      Color? appbarBackgroundColor,
      Brightness? appbarBrightness,
      BrnTextStyle? tabBarUnSelectedLabelStyle,
      BrnTextStyle? tabBarLabelStyle,
      Color? tabBarBackgroundColor,
      Color? pageBackgroundColor,
      Color? bottomBackgroundColor,
      BrnTextStyle? titleStyle,
      BrnTextStyle? contentStyle,
      BrnTextStyle? actionStyle,
      Color? iconColor,
      String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.appbarTitleStyle = BrnTextStyle(color: commonConfig.colorTextBase);
    this.appbarActionStyle = BrnTextStyle(color: commonConfig.colorTextBase);
    this.appbarBackgroundColor = commonConfig.fillBody;
    this.appbarBrightness = Brightness.light;
    this.tabBarUnSelectedLabelStyle = BrnTextStyle(color: commonConfig.colorTextBase);
    this.tabBarLabelStyle = BrnTextStyle(color: commonConfig.brandPrimary);
    this.tabBarBackgroundColor = commonConfig.fillBody;
    this.pageBackgroundColor = commonConfig.fillBody;
    this.bottomBackgroundColor = commonConfig.fillBody.withOpacity(0.85);
    this.titleStyle = BrnTextStyle(color: commonConfig.colorTextBase);
    this.contentStyle = BrnTextStyle(color: commonConfig.colorTextBase);
    this.actionStyle = BrnTextStyle(color: commonConfig.colorTextSecondary);
    this.iconColor = commonConfig.colorTextSecondary;
  }

  @override
  void initThemeConfig(String configId, {BrnCommonConfig? currentLevelCommonConfig}) {
    super.initThemeConfig(configId, currentLevelCommonConfig: currentLevelCommonConfig);

    /// 用户全局组件配置
    BrnGalleryDetailConfig galleryDetailConfig =
        BrnThemeConfigurator.instance.getConfig(configId: configId).galleryDetailConfig;

    this.appbarTitleStyle = galleryDetailConfig.appbarTitleStyle.merge(BrnTextStyle(
            color: commonConfig.colorTextBaseInverse, fontSize: commonConfig.fontSizeSubHead)
        .merge(this.appbarTitleStyle));

    this.appbarActionStyle = galleryDetailConfig.appbarActionStyle.merge(this.appbarActionStyle);

    this.appbarBrightness = galleryDetailConfig.appbarBrightness;

    this.appbarBackgroundColor = galleryDetailConfig.appbarBackgroundColor;

    this.tabBarUnSelectedLabelStyle = galleryDetailConfig.tabBarUnSelectedLabelStyle
        .merge(BrnTextStyle(fontSize: commonConfig.fontSizeSubHead))
        .merge(this.tabBarUnSelectedLabelStyle);

    this.tabBarLabelStyle = galleryDetailConfig.tabBarLabelStyle
        .merge(BrnTextStyle(
            color: commonConfig.colorTextBaseInverse, fontSize: commonConfig.fontSizeSubHead))
        .merge(this.tabBarLabelStyle);

    this.tabBarBackgroundColor = galleryDetailConfig.tabBarBackgroundColor;

    this.pageBackgroundColor = galleryDetailConfig.pageBackgroundColor;

    this.bottomBackgroundColor = galleryDetailConfig.bottomBackgroundColor;

    this.titleStyle = galleryDetailConfig.titleStyle
        .merge(BrnTextStyle(
            color: commonConfig.colorTextBaseInverse, fontSize: commonConfig.fontSizeHead))
        .merge(this.titleStyle);

    this.contentStyle = galleryDetailConfig.contentStyle
        .merge(BrnTextStyle(fontSize: commonConfig.fontSizeBase))
        .merge(this.contentStyle);

    this.actionStyle = galleryDetailConfig.actionStyle
        .merge(BrnTextStyle(
            color: commonConfig.colorTextBaseInverse, fontSize: commonConfig.fontSizeBase))
        .merge(this.actionStyle);

    this.iconColor = galleryDetailConfig.iconColor;
  }

  BrnGalleryDetailConfig copyWith({
    BrnTextStyle? appbarTitleStyle,
    BrnTextStyle? appbarActionStyle,
    Color? appbarBackgroundColor,
    Brightness? appbarBrightness,
    BrnTextStyle? tabBarUnSelectedLabelStyle,
    Color? tabBarUnselectedLabelColor,
    BrnTextStyle? tabBarLabelStyle,
    Color? tabBarLabelColor,
    Color? tabBarBackgroundColor,
    Color? indicatorColor,
    Color? pageBackgroundColor,
    Color? bottomBackgroundColor,
    BrnTextStyle? titleStyle,
    BrnTextStyle? contentStyle,
    BrnTextStyle? actionStyle,
    Color? iconColor,
  }) {
    return BrnGalleryDetailConfig(
      appbarTitleStyle: appbarTitleStyle ?? this.appbarTitleStyle,
      appbarActionStyle: appbarActionStyle ?? this.appbarActionStyle,
      appbarBackgroundColor: appbarBackgroundColor ?? this.appbarBackgroundColor,
      appbarBrightness: appbarBrightness ?? this.appbarBrightness,
      tabBarUnSelectedLabelStyle: tabBarUnSelectedLabelStyle ?? this.tabBarUnSelectedLabelStyle,
      tabBarLabelStyle: tabBarLabelStyle ?? this.tabBarLabelStyle,
      tabBarBackgroundColor: tabBarBackgroundColor ?? this.tabBarBackgroundColor,
      pageBackgroundColor: pageBackgroundColor ?? this.pageBackgroundColor,
      bottomBackgroundColor: bottomBackgroundColor ?? this.bottomBackgroundColor,
      titleStyle: titleStyle ?? this.titleStyle,
      contentStyle: contentStyle ?? this.contentStyle,
      actionStyle: actionStyle ?? this.actionStyle,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  BrnGalleryDetailConfig merge(BrnGalleryDetailConfig? other) {
    if (other == null) return this;
    return copyWith(
      appbarTitleStyle: appbarTitleStyle.merge(other.appbarTitleStyle) ?? other.appbarTitleStyle,
      appbarActionStyle:
          appbarActionStyle.merge(other.appbarActionStyle) ?? other.appbarActionStyle,
      appbarBackgroundColor: other.appbarBackgroundColor,
      appbarBrightness: other.appbarBrightness,
      tabBarUnSelectedLabelStyle:
          tabBarUnSelectedLabelStyle.merge(other.tabBarUnSelectedLabelStyle) ??
              other.tabBarUnSelectedLabelStyle,
      tabBarLabelStyle: tabBarLabelStyle.merge(other.tabBarLabelStyle) ?? other.tabBarLabelStyle,
      tabBarBackgroundColor: other.tabBarBackgroundColor,
      pageBackgroundColor: other.pageBackgroundColor,
      bottomBackgroundColor: other.bottomBackgroundColor,
      titleStyle: titleStyle.merge(other.titleStyle) ?? other.titleStyle,
      contentStyle: contentStyle.merge(other.contentStyle) ?? other.contentStyle,
      actionStyle: actionStyle.merge(other.actionStyle) ?? other.actionStyle,
      iconColor: other.iconColor,
    );
  }
}
