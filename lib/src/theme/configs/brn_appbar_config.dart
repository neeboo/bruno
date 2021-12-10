import 'package:bruno/bruno.dart';
import 'package:bruno/src/components/navbar/brn_appbar_theme.dart';
import 'package:bruno/src/constants/brn_strings_constants.dart';
import 'package:bruno/src/theme/brn_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef BrnWidgetBuilder = Widget Function();

/// Appbar主题配置
class BrnAppBarConfig extends BrnBaseConfig {
  /// AppBar的背景色
  late Color backgroundColor;

  /// AppBar的高度
  late double appBarHeight;

  /// 返回按钮的child widget，一般为Image
  late BrnWidgetBuilder leadIconBuilder;

  /// 标题样式，仅当直接title设置为String生效，[注意]：`fontSize`必须传大小，否则报错
  late BrnTextStyle titleStyle;

  /// 右侧文字按钮样式，仅当直接actions里面元素为BrnTextAction类型生效[注意]：`fontSize`必须传大小，否则报错
  /// default value is TextStyle(color: AppBarBrightness(brightness).textColor,fontSize: BrnAppBarTheme.actionFontSize,fontWeight: FontWeight.w600)
  late BrnTextStyle actionsStyle;

  /// AppBar title的最大字符数 8
  late int titleMaxLength;

  /// 左右边距
  late double leftAndRightPadding;

  /// 元素间间距
  late double itemSpacing;

  /// title的padding
  late EdgeInsets titlePadding;

  /// leadIcon 宽高，需要相同
  /// default value is 20
  late double iconSize;

  ///[AppBar]中flexibleSpace
  late Widget flexibleSpace;

  /// statusBar 样式
  /// default value is SystemUiOverlayStyle.dark
  late SystemUiOverlayStyle systemUiOverlayStyle;

  /// BrnAppBar 主题配置，遵循外部主题配置，Bruno默认配置[BrnDefaultConfigUtils.defaultAppBarConfig]
  BrnAppBarConfig(
      {

      /// AppBar的背景色
      Color? backgroundColor,

      /// AppBar的高度
      double? appBarHeight,

      /// 返回按钮的child widget，一般为Image
      BrnWidgetBuilder? leadIconBuilder,

      /// 标题样式，仅当直接title设置为String生效，[注意]：`fontSize`必须传大小，否则报错
      BrnTextStyle? titleStyle,

      /// 右侧文字按钮样式，仅当直接actions里面元素为BrnTextAction类型生效[注意]：`fontSize`必须传大小，否则报错
      /// default value is TextStyle(color: AppBarBrightness(brightness).textColor,fontSize: BrnAppBarTheme.actionFontSize,fontWeight: FontWeight.w600)
      BrnTextStyle? actionsStyle,

      /// AppBar title的最大字符数 8
      int? titleMaxLength,

      /// 左右边距
      double? leftAndRightPadding,

      /// 元素间间距
      double? itemSpacing,

      /// title的padding
      EdgeInsets? titlePadding,

      /// leadIcon 宽高，需要相同
      /// default value is 20
      double? iconSize,

      ///[AppBar]中flexibleSpace
      Widget? flexibleSpace,

      /// statusBar 样式
      /// default value is SystemUiOverlayStyle.dark
      SystemUiOverlayStyle? systemUiOverlayStyle,
      String configId: BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.backgroundColor = backgroundColor ?? Colors.white;
    this.appBarHeight = appBarHeight ?? BrnAppBarTheme.appBarHeight;
    this.leadIconBuilder = leadIconBuilder ??
        () => Image.asset(
              BrnAsset.ICON_BACK_BLACK,
              package: BrnStrings.flutterPackageName,
              width: BrnAppBarTheme.iconSize,
              height: BrnAppBarTheme.iconSize,
              fit: BoxFit.fitHeight,
            );
    this.titleStyle = titleStyle ??
        BrnTextStyle(
            fontSize: BrnAppBarTheme.titleFontSize,
            fontWeight: FontWeight.w600,
            color: BrnAppBarTheme.lightTextColor);
    this.actionsStyle = actionsStyle ??
        BrnTextStyle(
            color: BrnAppBarTheme.lightTextColor,
            fontSize: BrnAppBarTheme.actionFontSize,
            fontWeight: FontWeight.w600);
    this.titleMaxLength = titleMaxLength ?? BrnAppBarTheme.maxLength;
    this.leftAndRightPadding = leftAndRightPadding ?? 20;
    this.itemSpacing = itemSpacing ?? BrnAppBarTheme.iconMargin;
    this.titlePadding = titlePadding ?? EdgeInsets.zero;
    this.iconSize = iconSize ?? BrnAppBarTheme.iconSize;
    this.configId = configId;
    this.systemUiOverlayStyle = systemUiOverlayStyle ?? SystemUiOverlayStyle.dark;
  }

  BrnAppBarConfig.dark(
      {

      /// AppBar的背景色
      Color? backgroundColor,

      /// AppBar的高度
      double? appBarHeight,

      /// 返回按钮的child widget，一般为Image
      BrnWidgetBuilder? leadIconBuilder,

      /// 标题样式，仅当直接title设置为String生效，[注意]：`fontSize`必须传大小，否则报错
      BrnTextStyle? titleStyle,

      /// 右侧文字按钮样式，仅当直接actions里面元素为BrnTextAction类型生效[注意]：`fontSize`必须传大小，否则报错
      /// default value is TextStyle(color: AppBarBrightness(brightness).textColor,fontSize: BrnAppBarTheme.actionFontSize,fontWeight: FontWeight.w600)
      BrnTextStyle? actionsStyle,

      /// AppBar title的最大字符数 8
      int? titleMaxLength,

      /// 左右边距
      double? leftAndRightPadding,

      /// 元素间间距
      double? itemSpacing,

      /// title的padding
      EdgeInsets? titlePadding,

      /// leadIcon 宽高，需要相同
      /// default value is 20
      double? iconSize,

      ///[AppBar]中flexibleSpace
      Widget? flexibleSpace,

      /// statusBar 样式
      /// default value is SystemUiOverlayStyle.dark
      SystemUiOverlayStyle? systemUiOverlayStyle,
      String configId: BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.systemUiOverlayStyle = SystemUiOverlayStyle.light;
    this.backgroundColor = Color(0xff2E313B);
    this.leadIconBuilder = () => Image.asset(
          BrnAsset.ICON_BACK_WHITE,
          package: BrnStrings.flutterPackageName,
          width: BrnAppBarTheme.iconSize,
          height: BrnAppBarTheme.iconSize,
          fit: BoxFit.fitHeight,
        );
    this.titleStyle = BrnTextStyle(
        fontSize: BrnAppBarTheme.titleFontSize,
        fontWeight: FontWeight.w600,
        color: BrnAppBarTheme.darkTextColor);
    this.actionsStyle = BrnTextStyle(
        color: BrnAppBarTheme.darkTextColor,
        fontSize: BrnAppBarTheme.actionFontSize,
        fontWeight: FontWeight.w600);
  }

  BrnAppBarConfig.light(
      {

      /// AppBar的背景色
      Color? backgroundColor,

      /// AppBar的高度
      double? appBarHeight,

      /// 返回按钮的child widget，一般为Image
      BrnWidgetBuilder? leadIconBuilder,

      /// 标题样式，仅当直接title设置为String生效，[注意]：`fontSize`必须传大小，否则报错
      BrnTextStyle? titleStyle,

      /// 右侧文字按钮样式，仅当直接actions里面元素为BrnTextAction类型生效[注意]：`fontSize`必须传大小，否则报错
      /// default value is TextStyle(color: AppBarBrightness(brightness).textColor,fontSize: BrnAppBarTheme.actionFontSize,fontWeight: FontWeight.w600)
      BrnTextStyle? actionsStyle,

      /// AppBar title的最大字符数 8
      int? titleMaxLength,

      /// 左右边距
      double? leftAndRightPadding,

      /// 元素间间距
      double? itemSpacing,

      /// title的padding
      EdgeInsets? titlePadding,

      /// leadIcon 宽高，需要相同
      /// default value is 20
      double? iconSize,

      ///[AppBar]中flexibleSpace
      Widget? flexibleSpace,

      /// statusBar 样式
      /// default value is SystemUiOverlayStyle.dark
      SystemUiOverlayStyle? systemUiOverlayStyle,
      String configId: BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.systemUiOverlayStyle = SystemUiOverlayStyle.dark;
    this.backgroundColor = Colors.white;
    this.leadIconBuilder = () => Image.asset(
          BrnAsset.ICON_BACK_BLACK,
          package: BrnStrings.flutterPackageName,
          width: BrnAppBarTheme.iconSize,
          height: BrnAppBarTheme.iconSize,
          fit: BoxFit.fitHeight,
        );
    this.titleStyle = BrnTextStyle(
        fontSize: BrnAppBarTheme.titleFontSize,
        fontWeight: FontWeight.w600,
        color: BrnAppBarTheme.lightTextColor);
    this.actionsStyle = BrnTextStyle(
        color: BrnAppBarTheme.lightTextColor,
        fontSize: BrnAppBarTheme.actionFontSize,
        fontWeight: FontWeight.w600);
  }

  @override
  void initThemeConfig(String configId, {BrnCommonConfig? currentLevelCommonConfig}) {
    super.initThemeConfig(configId, currentLevelCommonConfig: currentLevelCommonConfig);

    /// 用户全局组件配置
    BrnAppBarConfig appbarConfig =
        BrnThemeConfigurator.instance.getConfig(configId: configId).appBarConfig;

    this.backgroundColor = appbarConfig.backgroundColor;
    this.appBarHeight = appbarConfig.appBarHeight;
    this.leadIconBuilder = appbarConfig.leadIconBuilder;
    this.titleStyle = appbarConfig.titleStyle.merge(titleStyle);
    this.actionsStyle = appbarConfig.actionsStyle.merge(actionsStyle);
    this.titleMaxLength = appbarConfig.titleMaxLength;
    this.leftAndRightPadding = appbarConfig.leftAndRightPadding;
    this.itemSpacing = appbarConfig.itemSpacing;
    this.titlePadding = appbarConfig.titlePadding;
    this.iconSize = appbarConfig.iconSize;
    this.flexibleSpace = appbarConfig.flexibleSpace;
    this.systemUiOverlayStyle = appbarConfig.systemUiOverlayStyle;
  }

  BrnAppBarConfig copyWith({
    Color? backgroundColor,
    double? appBarHeight,
    BrnWidgetBuilder? leadIconBuilder,
    BrnTextStyle? titleStyle,
    BrnTextStyle? actionsStyle,
    int? titleMaxLength,
    double? leftAndRightPadding,
    double? itemSpacing,
    EdgeInsets? titlePading,
    double? iconSize,
    Widget? flexibleSpace,
    SystemUiOverlayStyle? systemUiOverlayStyle,
  }) {
    return BrnAppBarConfig(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        appBarHeight: appBarHeight ?? this.appBarHeight,
        leadIconBuilder: leadIconBuilder ?? this.leadIconBuilder,
        titleStyle: titleStyle ?? this.titleStyle,
        actionsStyle: actionsStyle ?? this.actionsStyle,
        titleMaxLength: titleMaxLength ?? this.titleMaxLength,
        leftAndRightPadding: leftAndRightPadding ?? this.leftAndRightPadding,
        itemSpacing: itemSpacing ?? this.itemSpacing,
        titlePadding: titlePading ?? this.titlePadding,
        iconSize: iconSize ?? this.iconSize,
        flexibleSpace: flexibleSpace ?? this.flexibleSpace,
        systemUiOverlayStyle: systemUiOverlayStyle ?? this.systemUiOverlayStyle);
  }

  BrnAppBarConfig merge(BrnAppBarConfig? other) {
    if (other == null) return this;
    return copyWith(
        backgroundColor: other.backgroundColor,
        appBarHeight: other.appBarHeight,
        leadIconBuilder: other.leadIconBuilder,
        titleStyle: this.titleStyle.merge(other.titleStyle) ?? other.titleStyle,
        actionsStyle: this.actionsStyle.merge(other.actionsStyle) ?? other.actionsStyle,
        titleMaxLength: other.titleMaxLength,
        leftAndRightPadding: other.leftAndRightPadding,
        itemSpacing: other.itemSpacing,
        titlePading: other.titlePadding,
        iconSize: other.iconSize,
        flexibleSpace: other.flexibleSpace,
        systemUiOverlayStyle: other.systemUiOverlayStyle);
  }
}
