import 'package:bruno/src/theme/base/brn_base_config.dart';
import 'package:bruno/src/theme/base/brn_default_config_utils.dart';
import 'package:bruno/src/theme/base/brn_text_style.dart';
import 'package:bruno/src/theme/brn_theme_configurator.dart';
import 'package:bruno/src/theme/configs/brn_common_config.dart';
import 'package:flutter/material.dart';

/// 描述: form 表单项主配置类

class BrnFormItemConfig extends BrnBaseConfig {
  /// 左侧标题文本样式
  /// default BrnTextStyle(color: [BrnCommonConfig.colorTextBase],fontSize: [BrnCommonConfig.fontSizeHead])
  late BrnTextStyle headTitleTextStyle;

  /// 左侧标题文本样式
  /// default BrnTextStyle(color: [BrnCommonConfig.colorTextBase],fontSize: [BrnCommonConfig.fontSizeSubHead])
  late BrnTextStyle titleTextStyle;

  /// 左侧辅助文本样式
  /// default BrnTextStyle(color: [BrnCommonConfig.colorTextSecondary], fontSize: [BrnCommonConfig.fontSizeCaption])
  late BrnTextStyle subTitleTextStyle;

  /// 左侧Error文本样式
  /// default BrnTextStyle(color: [BrnCommonConfig.brandError], fontSize: [BrnCommonConfig.fontSizeCaption])
  late BrnTextStyle errorTextStyle;

  /// 右侧 输入、选择提示文本样式
  /// default BrnTextStyle(color: [BrnCommonConfig.colorTextHint], fontSize: [BrnCommonConfig.fontSizeSubHead]）
  late BrnTextStyle hintTextStyle;

  /// 右侧 主要内容样式
  /// default BrnTextStyle([BrnCommonConfig.colorTextBase]), fontSize: [BrnCommonConfig.fontSizeSubHead])
  late BrnTextStyle contentTextStyle;

  /// 表单项 当有星号标识 上下右边距
  /// default EdgeInsets.only(left: 0, top: [BrnCommonConfig.vSpacingLg], right: [BrnCommonConfig.hSpacingLg], bottom: [BrnCommonConfig.vSpacingLg])
  late EdgeInsets formPadding;

  /// 表单项 当有星号标识 左边距
  /// default EdgeInsets.only(left: 10)
  late EdgeInsets titlePaddingSm;

  /// 表单项 当无星号标识 左右边距
  /// default EdgeInsets.only(left: [BrnCommonConfig.hSpacingLg])
  late EdgeInsets titlePaddingLg;

  /// 选项之间间距 单选 or 多选
  /// default EdgeInsets.only(left: [BrnCommonConfig.hSpacingMd])
  late EdgeInsets optionsMiddlePadding;

  /// 选项普通文本样式
  /// TextStyle(color: [BrnCommonConfig.colorTextBase], height: 1.3, fontSize: [BrnCommonConfig.fontSizeSubHead],)
  late BrnTextStyle optionTextStyle;

  /// 选项选中文本样式
  /// TextStyle(color: [BrnCommonConfig.brandPrimary], height: 1.3, fontSize: [BrnCommonConfig.fontSizeSubHead],)
  late BrnTextStyle optionSelectedTextStyle;

  /// 子标题 左上间距
  /// default EdgeInsets.only(left: [BrnCommonConfig.hSpacingLg], top: [BrnCommonConfig.vSpacingXs])
  late EdgeInsets subTitlePadding;

  /// error提示 左上间距
  /// EdgeInsets.only(left: [BrnCommonConfig.hSpacingLg], top: [BrnCommonConfig.vSpacingXs])
  late EdgeInsets errorPadding;

  /// 不可修改内容展示
  /// BrnTextStyle(color: [BrnCommonConfig.colorTextDisabled],fontSize: [BrnCommonConfig.fontSizeSubHead])
  late BrnTextStyle disableTextStyle;

  /// 提示文本样式
  /// BrnTextStyle(color: [BrnCommonConfig.colorTextSecondary], fontSize: [BrnCommonConfig.fontSizeBase])
  late BrnTextStyle tipsTextStyle;

  BrnFormItemConfig.generatorFromConfigId(String configId) {
    initThemeConfig(configId);
  }

  BrnFormItemConfig(
      {BrnTextStyle? headTitleTextStyle,
      BrnTextStyle? titleTextStyle,
      BrnTextStyle? subTitleTextStyle,
      BrnTextStyle? errorTextStyle,
      BrnTextStyle? hintTextStyle,
      BrnTextStyle? contentTextStyle,
      EdgeInsets? formPadding,
      EdgeInsets? titlePaddingSm,
      EdgeInsets? titlePaddingLg,
      EdgeInsets? optionsMiddlePadding,
      BrnTextStyle? optionTextStyle,
      BrnTextStyle? optionSelectedTextStyle,
      EdgeInsets? subTitlePadding,
      EdgeInsets? errorPadding,
      BrnTextStyle? disableTextStyle,
      BrnTextStyle? tipsTextStyle,
      String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID})
      : super(configId: configId) {
    this.headTitleTextStyle = headTitleTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeHead);
    this.titleTextStyle = titleTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead);
    this.subTitleTextStyle = subTitleTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeCaption);
    this.errorTextStyle = errorTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.brandError,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeCaption);
    this.hintTextStyle = hintTextStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextHint,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
        );
    this.contentTextStyle = contentTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead);
    this.optionsMiddlePadding = optionsMiddlePadding ??
        EdgeInsets.only(left: BrnDefaultConfigUtils.defaultCommonConfig.hSpacingMd);
    this.optionTextStyle = optionTextStyle ??
        BrnTextStyle(
            height: 1.3,
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextBase,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead);
    this.optionSelectedTextStyle = optionSelectedTextStyle ??
        BrnTextStyle(
            height: 1.3,
            color: BrnDefaultConfigUtils.defaultCommonConfig.brandPrimary,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead);
    this.formPadding = formPadding ??
        EdgeInsets.only(
            left: 0,
            top: BrnDefaultConfigUtils.defaultCommonConfig.vSpacingLg,
            right: BrnDefaultConfigUtils.defaultCommonConfig.hSpacingLg,
            bottom: BrnDefaultConfigUtils.defaultCommonConfig.vSpacingLg);
    this.titlePaddingSm = titlePaddingSm ?? EdgeInsets.only(left: 10);
    this.titlePaddingLg = titlePaddingLg ??
        EdgeInsets.only(left: BrnDefaultConfigUtils.defaultCommonConfig.hSpacingLg);
    this.subTitlePadding = subTitlePadding ??
        EdgeInsets.only(
            left: BrnDefaultConfigUtils.defaultCommonConfig.hSpacingLg,
            top: BrnDefaultConfigUtils.defaultCommonConfig.vSpacingXs);
    this.errorPadding = errorPadding ??
        EdgeInsets.only(
            left: BrnDefaultConfigUtils.defaultCommonConfig.hSpacingLg,
            top: BrnDefaultConfigUtils.defaultCommonConfig.vSpacingXs);
    this.disableTextStyle = disableTextStyle ??
        BrnTextStyle(
          color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextDisabled,
          fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeSubHead,
        );
    this.tipsTextStyle = tipsTextStyle ??
        BrnTextStyle(
            color: BrnDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
            fontSize: BrnDefaultConfigUtils.defaultCommonConfig.fontSizeBase);
  }

  /// 举例：
  /// ① 尝试获取最近的配置 [topRadius] 若配不为 null，直接使用该配置.
  /// ② [topRadius] 若为 null，尝试使用 全局配置中的配置 BrnFormItemConfig.
  /// ③ 如果全局配置中的配置同样为 null 则根据 [configId] 取出全局配置。
  /// ④ 如果没有配置 [configId] 的全局配置，则使用 Bruno 默认的配置
  @override
  void initThemeConfig(String configId, {BrnCommonConfig? currentLevelCommonConfig}) {
    super.initThemeConfig(configId, currentLevelCommonConfig: currentLevelCommonConfig);

    /// 用户全局form组件配置
    BrnFormItemConfig formItemThemeData =
        BrnThemeConfigurator.instance.getConfig(configId: configId).formItemConfig;

    this.titlePaddingSm ??= formItemThemeData.titlePaddingSm;

    this.titlePaddingLg ??= formItemThemeData.titlePaddingLg;

    this.optionSelectedTextStyle = formItemThemeData.optionSelectedTextStyle.merge(BrnTextStyle(
      color: commonConfig.brandPrimary,
      fontSize: commonConfig.fontSizeSubHead,
    ).merge(this.optionSelectedTextStyle));

    this.optionTextStyle = formItemThemeData.optionTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.optionTextStyle));

    this.headTitleTextStyle = formItemThemeData.headTitleTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeHead)
            .merge(this.headTitleTextStyle));

    if (this.errorPadding == null) {
      this.errorPadding = EdgeInsets.only(
        left: commonConfig.hSpacingLg,
        right: formItemThemeData.errorPadding.right,
        top: commonConfig.vSpacingXs,
        bottom: formItemThemeData.errorPadding.bottom,
      );
    }

    if (this.subTitlePadding == null) {
      this.subTitlePadding = EdgeInsets.only(
        left: commonConfig.hSpacingLg,
        right: formItemThemeData.subTitlePadding.right,
        top: commonConfig.vSpacingXs,
        bottom: formItemThemeData.subTitlePadding.bottom,
      );
    }

    if (this.formPadding == null) {
      this.formPadding = EdgeInsets.only(
          left: formItemThemeData.formPadding.left,
          right: commonConfig.hSpacingLg,
          top: commonConfig.vSpacingLg,
          bottom: commonConfig.vSpacingLg);
    }

    this.tipsTextStyle = formItemThemeData.tipsTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextSecondary, fontSize: commonConfig.fontSizeBase)
            .merge(this.tipsTextStyle));

    this.disableTextStyle = formItemThemeData.disableTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextDisabled, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.disableTextStyle));

    this.contentTextStyle = formItemThemeData.contentTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.contentTextStyle));

    this.hintTextStyle = formItemThemeData.hintTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextHint, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.hintTextStyle));

    this.titleTextStyle = formItemThemeData.titleTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextBase, fontSize: commonConfig.fontSizeSubHead)
            .merge(this.titleTextStyle));

    this.subTitleTextStyle = formItemThemeData.subTitleTextStyle.merge(
        BrnTextStyle(color: commonConfig.colorTextSecondary, fontSize: commonConfig.fontSizeCaption)
            .merge(this.subTitleTextStyle));

    this.errorTextStyle = formItemThemeData.errorTextStyle.merge(
        BrnTextStyle(color: commonConfig.brandError, fontSize: commonConfig.fontSizeCaption)
            .merge(this.errorTextStyle));

    this.optionsMiddlePadding = formItemThemeData.optionsMiddlePadding;
  }

  BrnFormItemConfig copyWith({
    BrnTextStyle? titleTextStyle,
    BrnTextStyle? subTitleTextStyle,
    BrnTextStyle? errorTextStyle,
    BrnTextStyle? hintTextStyle,
    BrnTextStyle? contentTextStyle,
    EdgeInsets? formPadding,
    EdgeInsets? titlePaddingSm,
    EdgeInsets? titlePaddingLg,
    EdgeInsets? optionsMiddlePadding,
    EdgeInsets? subTitlePadding,
    EdgeInsets? errorPadding,
    BrnTextStyle? disableTextStyle,
    BrnTextStyle? tipsTextStyle,
    BrnTextStyle? headTitleTextStyle,
    BrnTextStyle? optionTextStyle,
    BrnTextStyle? optionSelectedTextStyle,
  }) {
    return BrnFormItemConfig(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      subTitleTextStyle: subTitleTextStyle ?? this.subTitleTextStyle,
      errorTextStyle: errorTextStyle ?? this.errorTextStyle,
      hintTextStyle: hintTextStyle ?? this.hintTextStyle,
      contentTextStyle: contentTextStyle ?? this.contentTextStyle,
      formPadding: formPadding ?? this.formPadding,
      titlePaddingSm: titlePaddingSm ?? this.titlePaddingSm,
      titlePaddingLg: titlePaddingLg ?? this.titlePaddingLg,
      optionsMiddlePadding: optionsMiddlePadding ?? this.optionsMiddlePadding,
      subTitlePadding: subTitlePadding ?? this.subTitlePadding,
      errorPadding: errorPadding ?? this.errorPadding,
      disableTextStyle: disableTextStyle ?? this.disableTextStyle,
      tipsTextStyle: tipsTextStyle ?? this.tipsTextStyle,
      headTitleTextStyle: headTitleTextStyle ?? this.headTitleTextStyle,
      optionTextStyle: optionTextStyle ?? this.optionTextStyle,
      optionSelectedTextStyle: optionSelectedTextStyle ?? this.optionSelectedTextStyle,
    );
  }

  BrnFormItemConfig merge(BrnFormItemConfig? other) {
    if (other == null) return this;
    return copyWith(
        titleTextStyle: titleTextStyle.merge(other.titleTextStyle) ?? other.titleTextStyle,
        subTitleTextStyle:
            subTitleTextStyle.merge(other.subTitleTextStyle) ?? other.subTitleTextStyle,
        errorTextStyle: errorTextStyle.merge(other.errorTextStyle) ?? other.errorTextStyle,
        hintTextStyle: hintTextStyle.merge(other.hintTextStyle) ?? other.hintTextStyle,
        contentTextStyle: contentTextStyle.merge(other.contentTextStyle) ?? other.contentTextStyle,
        formPadding: other.formPadding,
        titlePaddingSm: other.titlePaddingSm,
        titlePaddingLg: other.titlePaddingLg,
        optionsMiddlePadding: other.optionsMiddlePadding,
        subTitlePadding: other.subTitlePadding,
        errorPadding: other.errorPadding,
        disableTextStyle: disableTextStyle.merge(other.disableTextStyle) ?? other.disableTextStyle,
        tipsTextStyle: tipsTextStyle.merge(other.tipsTextStyle) ?? other.tipsTextStyle,
        headTitleTextStyle:
            headTitleTextStyle.merge(other.headTitleTextStyle) ?? other.headTitleTextStyle,
        optionTextStyle: optionTextStyle.merge(other.optionTextStyle) ?? other.optionTextStyle,
        optionSelectedTextStyle: optionSelectedTextStyle.merge(other.optionSelectedTextStyle) ??
            other.optionSelectedTextStyle);
  }
}
