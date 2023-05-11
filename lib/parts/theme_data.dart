// ignore_for_file: deprecated_member_use

part of theme_json_converter;

class NullableThemeDataConverter
    extends JsonConverter<ThemeData?, Map<String, dynamic>?> {
  const NullableThemeDataConverter();

  @override
  ThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ThemeData(
      appBarTheme: const NullableAppBarThemeConverter().fromJson(
        json['appBarTheme'],
      ),
      applyElevationOverlayColor: json['applyElevationOverlayColor'] == null
          ? null
          : (json['applyElevationOverlayColor'] as bool),
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      bannerTheme: const NullableMaterialBannerThemeDataConverter().fromJson(
        json['bannerTheme'],
      ),
      bottomAppBarColor: const NullableColorConverter().fromJson(
        json['bottomAppBarColor'],
      ),
      bottomAppBarTheme: const NullableBottomAppBarThemeConverter().fromJson(
        json['bottomAppBarTheme'],
      ),
      bottomNavigationBarTheme:
          const NullableBottomNavigationBarThemeDataConverter().fromJson(
        json['bottomNavigationBarTheme'],
      ),
      bottomSheetTheme: const NullableBottomSheetThemeDataConverter().fromJson(
        json['bottomSheetTheme'],
      ),
      brightness: const NullableBrightnessConverter().fromJson(
        json['brightness'],
      ),
      buttonBarTheme: const NullableButtonBarThemeDataConverter().fromJson(
        json['buttonBarTheme'],
      ),
      buttonTheme: const NullableButtonThemeDataConverter().fromJson(
        json['buttonTheme'],
      ),
      canvasColor: const NullableColorConverter().fromJson(
        json['canvasColor'],
      ),
      cardColor: const NullableColorConverter().fromJson(
        json['cardColor'],
      ),
      cardTheme: const NullableCardThemeConverter().fromJson(
        json['cardTheme'],
      ),
      checkboxTheme: const NullableCheckboxThemeDataConverter().fromJson(
        json['checkboxTheme'],
      ),
      chipTheme: const NullableChipThemeDataConverter().fromJson(
        json['chipTheme'],
      ),
      colorScheme: const NullableColorSchemeConverter().fromJson(
        json['colorScheme'],
      ),
      cupertinoOverrideTheme:
          const NullableCupertinoThemeDataConverter().fromJson(
        json['cupertinoOverrideTheme'],
      ),
      dataTableTheme: const NullableDataTableThemeDataConverter().fromJson(
        json['dataTableTheme'],
      ),
      dialogBackgroundColor: const NullableColorConverter().fromJson(
        json['dialogBackgroundColor'],
      ),
      dialogTheme: const NullableDialogThemeConverter().fromJson(
        json['dialogTheme'],
      ),
      disabledColor: const NullableColorConverter().fromJson(
        json['disabledColor'],
      ),
      dividerColor: const NullableColorConverter().fromJson(
        json['dividerColor'],
      ),
      dividerTheme: const NullableDividerThemeDataConverter().fromJson(
        json['dividerTheme'],
      ),
      elevatedButtonTheme:
          const NullableElevatedButtonThemeDataConverter().fromJson(
        json['elevatedButtonTheme'],
      ),
      errorColor: const NullableColorConverter().fromJson(
        json['errorColor'],
      ),
      fixTextFieldOutlineLabel: json['fixTextFieldOutlineLabel'] == null
          ? null
          : (json['fixTextFieldOutlineLabel'] as bool),
      floatingActionButtonTheme:
          const NullableFloatingActionButtonThemeDataConverter().fromJson(
        json['floatingActionButtonTheme'],
      ),
      focusColor: const NullableColorConverter().fromJson(
        json['focusColor'],
      ),
      fontFamily: json['fontFamily'],
      highlightColor: const NullableColorConverter().fromJson(
        json['highlightColor'],
      ),
      hintColor: const NullableColorConverter().fromJson(
        json['hintColor'],
      ),
      hoverColor: const NullableColorConverter().fromJson(
        json['hoverColor'],
      ),
      iconTheme: const NullableIconThemeDataConverter().fromJson(
        json['iconTheme'],
      ),
      indicatorColor: const NullableColorConverter().fromJson(
        json['indicatorColor'],
      ),
      inputDecorationTheme:
          const NullableInputDecorationThemeConverter().fromJson(
        json['inputDecorationTheme'],
      ),
      materialTapTargetSize:
          const NullableMaterialTapTargetSizeConverter().fromJson(
        json['materialTapTargetSize'],
      ),
      navigationRailTheme:
          const NullableNavigationRailThemeDataConverter().fromJson(
        json['navigationRailTheme'],
      ),
      outlinedButtonTheme:
          const NullableOutlinedButtonThemeDataConverter().fromJson(
        json['outlinedButtonTheme'],
      ),
      pageTransitionsTheme:
          const NullablePageTransitionsThemeConverter().fromJson(
        json['pageTransitionsTheme'],
      ),
      platform: const NullableTargetPlatformConverter().fromJson(
        json['platform'],
      ),
      popupMenuTheme: const NullablePopupMenuThemeDataConverter().fromJson(
        json['popupMenuTheme'],
      ),
      primaryColor: const NullableColorConverter().fromJson(
        json['primaryColor'],
      ),
      primaryColorBrightness: const NullableBrightnessConverter().fromJson(
        json['primaryColorBrightness'],
      ),
      primaryColorDark: const NullableColorConverter().fromJson(
        json['primaryColorDark'],
      ),
      primaryColorLight: const NullableColorConverter().fromJson(
        json['primaryColorLight'],
      ),
      primaryIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['primaryIconTheme'],
      ),
      primarySwatch: const NullableMaterialColorConverter().fromJson(
        json['primarySwatch'],
      ),
      primaryTextTheme: const NullableTextThemeConverter().fromJson(
        json['primaryTextTheme'],
      ),
      radioTheme: const NullableRadioThemeDataConverter().fromJson(
        json['radioTheme'],
      ),
      scaffoldBackgroundColor: const NullableColorConverter().fromJson(
        json['scaffoldBackgroundColor'],
      ),
      scrollbarTheme: const NullableScrollbarThemeDataConverter().fromJson(
        json['scrollbarTheme'],
      ),
      secondaryHeaderColor: const NullableColorConverter().fromJson(
        json['secondaryHeaderColor'],
      ),
      selectedRowColor: const NullableColorConverter().fromJson(
        json['selectedRowColor'],
      ),
      shadowColor: const NullableColorConverter().fromJson(
        json['shadowColor'],
      ),
      sliderTheme: const NullableSliderThemeDataConverter().fromJson(
        json['sliderTheme'],
      ),
      snackBarTheme: const NullableSnackBarThemeDataConverter().fromJson(
        json['snackBarTheme'],
      ),
      splashColor: const NullableColorConverter().fromJson(
        json['splashColor'],
      ),
      splashFactory:
          const NullableInteractiveInkFeatureFactoryConverter().fromJson(
        json['splashFactory'],
      ),
      switchTheme: const NullableSwitchThemeDataConverter().fromJson(
        json['switchTheme'],
      ),
      tabBarTheme: const NullableTabBarThemeConverter().fromJson(
        json['tabBarTheme'],
      ),
      textButtonTheme: const NullableTextButtonThemeDataConverter().fromJson(
        json['textButtonTheme'],
      ),
      // @deprecated
      // textSelectionColor

      // @deprecated
      // textSelectionHandleColor
      textSelectionTheme:
          const NullableTextSelectionThemeDataConverter().fromJson(
        json['textSelectionTheme'],
      ),
      textTheme: const NullableTextThemeConverter().fromJson(
        json['textTheme'],
      ),
      timePickerTheme: const NullableTimePickerThemeDataConverter().fromJson(
        json['timePickerThemeData'],
      ),
      toggleButtonsTheme:
          const NullableToggleButtonsThemeDataConverter().fromJson(
        json['toggleButtonsTheme'],
      ),
      toggleableActiveColor: const NullableColorConverter().fromJson(
        json['toggleableActiveColor'],
      ),
      tooltipTheme: const NullableTooltipThemeDataConverter().fromJson(
        json['tooltipTheme'],
      ),
      typography: const NullableTypographyConverter().fromJson(
        json['typography'],
      ),
      unselectedWidgetColor: const NullableColorConverter().fromJson(
        json['unselectedWidgetColor'],
      ),
      // @deprecated
      // useTextSelectionTheme
      visualDensity: const NullableVisualDensityConverter().fromJson(
        json['visualDensity'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(ThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'appBarTheme':
          const NullableAppBarThemeConverter().toJson(object.appBarTheme),
      'applyElevationOverlayColor': object.applyElevationOverlayColor,
      'bannerTheme': const NullableMaterialBannerThemeDataConverter()
          .toJson(object.bannerTheme),
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'bottomAppBarColor':
          const NullableColorConverter().toJson(object.bottomAppBarColor),
      'bottomAppBarTheme': const NullableBottomAppBarThemeConverter()
          .toJson(object.bottomAppBarTheme),
      'bottomNavigationBarTheme':
          const NullableBottomNavigationBarThemeDataConverter().toJson(
        object.bottomNavigationBarTheme,
      ),
      'bottomSheetTheme': const NullableBottomSheetThemeDataConverter()
          .toJson(object.bottomSheetTheme),
      'brightness':
          const NullableBrightnessConverter().toJson(object.brightness),
      'buttonBarTheme': const NullableButtonBarThemeDataConverter()
          .toJson(object.buttonBarTheme),
      'buttonTheme':
          const NullableButtonThemeDataConverter().toJson(object.buttonTheme),
      'canvasColor': const NullableColorConverter().toJson(object.canvasColor),
      'cardColor': const NullableColorConverter().toJson(object.cardColor),
      'cardTheme': const NullableCardThemeConverter().toJson(object.cardTheme),
      'chipTheme':
          const NullableChipThemeDataConverter().toJson(object.chipTheme),
      'colorScheme':
          const NullableColorSchemeConverter().toJson(object.colorScheme),
      'cupertinoOverrideTheme': const NullableCupertinoThemeDataConverter()
          .toJson(object.cupertinoOverrideTheme as CupertinoThemeData?),
      'dataTableTheme': const NullableDataTableThemeDataConverter()
          .toJson(object.dataTableTheme),
      'dialogBackgroundColor':
          const NullableColorConverter().toJson(object.dialogBackgroundColor),
      'dialogTheme':
          const NullableDialogThemeConverter().toJson(object.dialogTheme),
      'disabledColor':
          const NullableColorConverter().toJson(object.disabledColor),
      'dividerColor':
          const NullableColorConverter().toJson(object.dividerColor),
      'dividerTheme':
          const NullableDividerThemeDataConverter().toJson(object.dividerTheme),
      'elevatedButtonTheme':
          const NullableElevatedButtonThemeDataConverter().toJson(
        object.elevatedButtonTheme,
      ),
      'errorColor': const NullableColorConverter().toJson(object.errorColor),
      'fixTextFieldOutlineLabel': object.fixTextFieldOutlineLabel,
      'floatingActionButtonTheme':
          const NullableFloatingActionButtonThemeDataConverter().toJson(
        object.floatingActionButtonTheme,
      ),
      'focusColor': const NullableColorConverter().toJson(object.focusColor),
      'highlightColor':
          const NullableColorConverter().toJson(object.highlightColor),
      'hintColor': const NullableColorConverter().toJson(object.hintColor),
      'hoverColor': const NullableColorConverter().toJson(object.hoverColor),
      'iconTheme':
          const NullableIconThemeDataConverter().toJson(object.iconTheme),
      'indicatorColor':
          const NullableColorConverter().toJson(object.indicatorColor),
      'inputDecorationTheme':
          const NullableInputDecorationThemeConverter().toJson(
        object.inputDecorationTheme,
      ),
      'materialTapTargetSize':
          const NullableMaterialTapTargetSizeConverter().toJson(
        object.materialTapTargetSize,
      ),
      'navigationRailTheme':
          const NullableNavigationRailThemeDataConverter().toJson(
        object.navigationRailTheme,
      ),
      'outlinedButtonTheme':
          const NullableOutlinedButtonThemeDataConverter().toJson(
        object.outlinedButtonTheme,
      ),
      'platform':
          const NullableTargetPlatformConverter().toJson(object.platform),
      'popupMenuTheme': const NullablePopupMenuThemeDataConverter()
          .toJson(object.popupMenuTheme),
      'primaryColor':
          const NullableColorConverter().toJson(object.primaryColor),
      'primaryColorBrightness': const NullableBrightnessConverter().toJson(
        object.primaryColorBrightness,
      ),
      'primaryColorDark':
          const NullableColorConverter().toJson(object.primaryColorDark),
      'primaryColorLight':
          const NullableColorConverter().toJson(object.primaryColorLight),
      'primaryIconTheme': const NullableIconThemeDataConverter()
          .toJson(object.primaryIconTheme),
      'primaryTextTheme':
          const NullableTextThemeConverter().toJson(object.primaryTextTheme),
      'scaffoldBackgroundColor':
          const NullableColorConverter().toJson(object.scaffoldBackgroundColor),
      'secondaryHeaderColor':
          const NullableColorConverter().toJson(object.secondaryHeaderColor),
      'selectedRowColor':
          const NullableColorConverter().toJson(object.selectedRowColor),
      'shadowColor': const NullableColorConverter().toJson(object.shadowColor),
      'sliderTheme':
          const NullableSliderThemeDataConverter().toJson(object.sliderTheme),
      'snackBarTheme': const NullableSnackBarThemeDataConverter()
          .toJson(object.snackBarTheme),
      'splashColor': const NullableColorConverter().toJson(object.splashColor),
      'splashFactory': const NullableInteractiveInkFeatureFactoryConverter()
          .toJson(object.splashFactory),
      'tabBarTheme':
          const NullableTabBarThemeConverter().toJson(object.tabBarTheme),
      'textButtonTheme': const NullableTextButtonThemeDataConverter()
          .toJson(object.textButtonTheme),
      'textSelectionTheme':
          const NullableTextSelectionThemeDataConverter().toJson(
        object.textSelectionTheme,
      ),
      'textTheme': const NullableTextThemeConverter().toJson(object.textTheme),
      'toggleButtonsTheme':
          const NullableToggleButtonsThemeDataConverter().toJson(
        object.toggleButtonsTheme,
      ),
      'toggleableActiveColor':
          const NullableColorConverter().toJson(object.toggleableActiveColor),
      'tooltipTheme':
          const NullableTooltipThemeDataConverter().toJson(object.tooltipTheme),
      'typography':
          const NullableTypographyConverter().toJson(object.typography),
      'unselectedWidgetColor':
          const NullableColorConverter().toJson(object.unselectedWidgetColor),
      'visualDensity':
          const NullableVisualDensityConverter().toJson(object.visualDensity),
    };
  }
}

class ThemeDataConverter
    extends JsonConverter<ThemeData, Map<String, dynamic>> {
  const ThemeDataConverter();

  @override
  ThemeData fromJson(Map<String, dynamic> json) {
    return const NullableThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ThemeData object) {
    return const NullableThemeDataConverter().toJson(object)!;
  }
}
