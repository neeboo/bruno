import 'package:bruno/src/theme/brn_theme.dart';

/// 按钮基础配置
class BrnButtonConfig extends BrnBaseConfig {
  /// default value is 6
  late double bigButtonRadius;

  /// default value is 48
  late double bigButtonHeight;

  /// default value is 16
  late double bigButtonFontSize;

  /// default value is 4
  late double smallButtonRadius;

  /// default value is 32
  late double smallButtonHeight;

  /// default value is 14
  late double smallButtonFontSize;

  ///遵循外部主题配置，Bruno默认配置[BrnDefaultConfigUtils.defaultButtonConfig]
  BrnButtonConfig({
    /// default value is 6
    double? bigButtonRadius,

    /// default value is 48
    double? bigButtonHeight,

    /// default value is 16
    double? bigButtonFontSize,

    /// default value is 4
    double? smallButtonRadius,

    /// default value is 32
    double? smallButtonHeight,

    /// default value is 14
    double? smallButtonFontSize,
    String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID,
  }) : super(configId: configId) {
    this.bigButtonRadius = bigButtonRadius ?? 6;
    this.bigButtonHeight = bigButtonHeight ?? 48;
    this.bigButtonFontSize = bigButtonFontSize ?? 16;
    this.smallButtonRadius = smallButtonRadius ?? 4;
    this.smallButtonHeight = smallButtonHeight ?? 32;
    this.smallButtonFontSize = smallButtonFontSize ?? 14;
  }

  @override
  void initThemeConfig(String configId, {BrnCommonConfig? currentLevelCommonConfig}) {
    super.initThemeConfig(configId, currentLevelCommonConfig: currentLevelCommonConfig);

    BrnButtonConfig userConfig =
        BrnThemeConfigurator.instance.getConfig(configId: configId).buttonConfig;

    this.bigButtonRadius = userConfig.bigButtonRadius;
    this.bigButtonHeight = userConfig.bigButtonHeight;
    this.bigButtonFontSize = userConfig.bigButtonFontSize;
    this.smallButtonRadius = userConfig.smallButtonRadius;
    this.smallButtonHeight = userConfig.smallButtonHeight;
    this.smallButtonFontSize = userConfig.smallButtonFontSize;
  }

  BrnButtonConfig copyWith(
      {double? bigButtonRadius,
      double? bigButtonHeight,
      double? bigButtonFontSize,
      double? smallButtonRadius,
      double? smallButtonHeight,
      double? smallButtonFontSize}) {
    return BrnButtonConfig(
      bigButtonRadius: bigButtonRadius ?? this.bigButtonRadius,
      bigButtonHeight: bigButtonHeight ?? this.bigButtonHeight,
      bigButtonFontSize: bigButtonFontSize ?? this.bigButtonFontSize,
      smallButtonRadius: smallButtonRadius ?? this.smallButtonRadius,
      smallButtonHeight: smallButtonHeight ?? this.smallButtonHeight,
      smallButtonFontSize: smallButtonFontSize ?? this.smallButtonFontSize,
    );
  }

  BrnButtonConfig merge(BrnButtonConfig other) {
    if (other == null) return this;
    return copyWith(
        bigButtonRadius: other.bigButtonRadius,
        bigButtonHeight: other.bigButtonHeight,
        bigButtonFontSize: other.bigButtonFontSize,
        smallButtonRadius: other.smallButtonRadius,
        smallButtonHeight: other.smallButtonHeight,
        smallButtonFontSize: other.smallButtonFontSize);
  }
}
