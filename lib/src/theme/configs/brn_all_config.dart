import 'package:bruno/src/theme/brn_theme.dart';
import 'package:bruno/src/theme/configs/brn_abnormal_state_config.dart';

/// 描述: 全局配置
///
/// 当用户使用时对单个组件自定义配置，优先走单个组件特定配置（作用范围档次使用）
/// 当用户配置组件通用配置时如[BrnDialogConfig]优先使用该配置
/// 若没有配置组件通用配置，走[BrnCommonConfig]全局配置
/// 如果以上都没有配置走Bruno默认配置即[BrnDefaultConfigUtils]中配置
/// 当没有配置组件的特定属性时使用上一级特定配置
///
class BrnAllThemeConfig {
  late final BrnCommonConfig commonConfig;
  late final BrnAppBarConfig appBarConfig;
  late final BrnButtonConfig buttonConfig;
  late final BrnDialogConfig dialogConfig;
  late final BrnCardTitleConfig cardTitleConfig;
  late final BrnAbnormalStateConfig abnormalStateConfig;
  late final BrnTagConfig tagConfig;
  late final BrnPairInfoTableConfig pairInfoTableConfig;
  late final BrnPairRichInfoGridConfig pairRichInfoGridConfig;
  late final BrnActionSheetConfig actionSheetConfig;
  late final BrnPickerConfig pickerConfig;
  late final BrnEnhanceNumberCardConfig enhanceNumberCardConfig;
  late final BrnTabBarConfig tabBarConfig;
  late final BrnFormItemConfig formItemConfig;
  late final BrnSelectionConfig selectionConfig;
  late final BrnGalleryDetailConfig galleryDetailConfig;

  BrnAllThemeConfig(
      {BrnCommonConfig? commonConfig,
      BrnAppBarConfig? appBarConfig,
      BrnButtonConfig? buttonConfig,
      BrnDialogConfig? dialogConfig,
      BrnCardTitleConfig? cardTitleConfig,
      BrnAbnormalStateConfig? abnormalStateConfig,
      BrnTagConfig? tagConfig,
      BrnPairInfoTableConfig? pairInfoTableConfig,
      BrnPairRichInfoGridConfig? pairRichInfoGridConfig,
      BrnActionSheetConfig? actionSheetConfig,
      BrnPickerConfig? pickerConfig,
      BrnEnhanceNumberCardConfig? enhanceNumberCardConfig,
      BrnTabBarConfig? tabBarConfig,
      BrnFormItemConfig? formItemConfig,
      BrnSelectionConfig? selectionConfig,
      BrnGalleryDetailConfig? galleryDetailConfig,
      String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID}) {
    this.commonConfig = commonConfig ?? BrnCommonConfig();
    this.appBarConfig = appBarConfig ?? BrnAppBarConfig();
    this.buttonConfig = buttonConfig ?? BrnButtonConfig();
    this.dialogConfig = dialogConfig ?? BrnDialogConfig();
    this.formItemConfig = formItemConfig ?? BrnFormItemConfig();
    this.cardTitleConfig = cardTitleConfig ?? BrnCardTitleConfig();
    this.abnormalStateConfig = abnormalStateConfig ?? BrnAbnormalStateConfig();
    this.tagConfig = tagConfig ?? BrnTagConfig();
    this.appBarConfig = appBarConfig ?? BrnAppBarConfig();
    this.pairInfoTableConfig = pairInfoTableConfig ?? BrnPairInfoTableConfig();
    this.pairRichInfoGridConfig = pairRichInfoGridConfig ?? BrnPairRichInfoGridConfig();
    this.actionSheetConfig = actionSheetConfig ?? BrnActionSheetConfig();
    this.pickerConfig = pickerConfig ?? BrnPickerConfig();
    this.enhanceNumberCardConfig = enhanceNumberCardConfig ?? BrnEnhanceNumberCardConfig();
    this.tabBarConfig = tabBarConfig ?? BrnTabBarConfig();
    this.selectionConfig = selectionConfig ?? BrnSelectionConfig();
    this.galleryDetailConfig = galleryDetailConfig ?? BrnGalleryDetailConfig();
  }

  void initThemeConfig(String configId) {
    this.commonConfig = BrnCommonConfig();
    this.appBarConfig = BrnAppBarConfig();
    this.buttonConfig = BrnButtonConfig();
    this.dialogConfig = BrnDialogConfig();
    this.formItemConfig = BrnFormItemConfig();
    this.cardTitleConfig = BrnCardTitleConfig();
    this.abnormalStateConfig = BrnAbnormalStateConfig();
    this.tagConfig = BrnTagConfig();
    this.appBarConfig = BrnAppBarConfig();
    this.pairInfoTableConfig = BrnPairInfoTableConfig();
    this.pairRichInfoGridConfig = BrnPairRichInfoGridConfig();
    this.actionSheetConfig = BrnActionSheetConfig();
    this.pickerConfig = BrnPickerConfig();
    this.enhanceNumberCardConfig = BrnEnhanceNumberCardConfig();
    this.tabBarConfig = BrnTabBarConfig();
    this.selectionConfig = BrnSelectionConfig();
    this.galleryDetailConfig = BrnGalleryDetailConfig();

    commonConfig.initThemeConfig(configId);
    appBarConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    buttonConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    dialogConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    formItemConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    cardTitleConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    abnormalStateConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    tagConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    pairInfoTableConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    pairRichInfoGridConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    selectionConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    actionSheetConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    pickerConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    enhanceNumberCardConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    tabBarConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
    galleryDetailConfig.initThemeConfig(configId, currentLevelCommonConfig: commonConfig);
  }
}
