part of theme_json_converter;

class NullableThemeDataConverter extends JsonConverter<ThemeData?, dynamic> {
  const NullableThemeDataConverter();

  @override
  ThemeData? fromJson(json) => const TypedNullableThemeDataConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableThemeDataConverter().toJson(object);
}

class TypedNullableThemeDataConverter
    extends JsonConverter<ThemeData?, Map<String, dynamic>?> {
  const TypedNullableThemeDataConverter();
  @override
  ThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ThemeData(
      accentColor: const NullableColorConverter().fromJson(
        json['accentColor'],
      ),
      accentColorBrightness: const NullableBrightnessConverter().fromJson(
        json['accentColorBrightness'],
      ),
      accentIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['accentIconTheme'],
      ),
      accentTextTheme: const NullableTextThemeConverter().fromJson(
        json['accentTextTheme'],
      ),
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
      buttonColor: const NullableColorConverter().fromJson(
        json['buttonColor'],
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
      // @deprecated
      // cursorColor
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
  Map<String, dynamic>? toJson(ThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'accentColor': const NullableColorConverter().toJson(value.accentColor),
      'accentColorBrightness': const NullableBrightnessConverter()
          .toJson(value.accentColorBrightness),
      'accentIconTheme':
          const NullableIconThemeDataConverter().toJson(value.accentIconTheme),
      'accentTextTheme':
          const NullableTextThemeConverter().toJson(value.accentTextTheme),
      'appBarTheme':
          const NullableAppBarThemeConverter().toJson(value.appBarTheme),
      'applyElevationOverlayColor': value.applyElevationOverlayColor,
      'bannerTheme': const NullableMaterialBannerThemeDataConverter()
          .toJson(value.bannerTheme),
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'bottomAppBarColor':
          const NullableColorConverter().toJson(value.bottomAppBarColor),
      'bottomAppBarTheme': const NullableBottomAppBarThemeConverter()
          .toJson(value.bottomAppBarTheme),
      'bottomNavigationBarTheme':
          const NullableBottomNavigationBarThemeDataConverter().toJson(
        value.bottomNavigationBarTheme,
      ),
      'bottomSheetTheme': const NullableBottomSheetThemeDataConverter()
          .toJson(value.bottomSheetTheme),
      'brightness':
          const NullableBrightnessConverter().toJson(value.brightness),
      'buttonColor': const NullableColorConverter().toJson(value.buttonColor),
      'buttonBarTheme': const NullableButtonBarThemeDataConverter()
          .toJson(value.buttonBarTheme),
      'buttonTheme':
          const NullableButtonThemeDataConverter().toJson(value.buttonTheme),
      'canvasColor': const NullableColorConverter().toJson(value.canvasColor),
      'cardColor': const NullableColorConverter().toJson(value.cardColor),
      'cardTheme': const NullableCardThemeConverter().toJson(value.cardTheme),
      'chipTheme':
          const NullableChipThemeDataConverter().toJson(value.chipTheme),
      'colorScheme':
          const NullableColorSchemeConverter().toJson(value.colorScheme),
      'cupertinoOverrideTheme': const NullableCupertinoThemeDataConverter()
          .toJson(value.cupertinoOverrideTheme as CupertinoThemeData?),
      'dataTableTheme': const NullableDataTableThemeDataConverter()
          .toJson(value.dataTableTheme),
      'dialogBackgroundColor':
          const NullableColorConverter().toJson(value.dialogBackgroundColor),
      'dialogTheme':
          const NullableDialogThemeConverter().toJson(value.dialogTheme),
      'disabledColor':
          const NullableColorConverter().toJson(value.disabledColor),
      'dividerColor': const NullableColorConverter().toJson(value.dividerColor),
      'dividerTheme':
          const NullableDividerThemeDataConverter().toJson(value.dividerTheme),
      'elevatedButtonTheme':
          const NullableElevatedButtonThemeDataConverter().toJson(
        value.elevatedButtonTheme,
      ),
      'errorColor': const NullableColorConverter().toJson(value.errorColor),
      'fixTextFieldOutlineLabel': value.fixTextFieldOutlineLabel,
      'floatingActionButtonTheme':
          const NullableFloatingActionButtonThemeDataConverter().toJson(
        value.floatingActionButtonTheme,
      ),
      'focusColor': const NullableColorConverter().toJson(value.focusColor),
      'highlightColor':
          const NullableColorConverter().toJson(value.highlightColor),
      'hintColor': const NullableColorConverter().toJson(value.hintColor),
      'hoverColor': const NullableColorConverter().toJson(value.hoverColor),
      'iconTheme':
          const NullableIconThemeDataConverter().toJson(value.iconTheme),
      'indicatorColor':
          const NullableColorConverter().toJson(value.indicatorColor),
      'inputDecorationTheme':
          const NullableInputDecorationThemeConverter().toJson(
        value.inputDecorationTheme,
      ),
      'materialTapTargetSize':
          const NullableMaterialTapTargetSizeConverter().toJson(
        value.materialTapTargetSize,
      ),
      'navigationRailTheme':
          const NullableNavigationRailThemeDataConverter().toJson(
        value.navigationRailTheme,
      ),
      'outlinedButtonTheme':
          const NullableOutlinedButtonThemeDataConverter().toJson(
        value.outlinedButtonTheme,
      ),
      'platform':
          const NullableTargetPlatformConverter().toJson(value.platform),
      'popupMenuTheme': const NullablePopupMenuThemeDataConverter()
          .toJson(value.popupMenuTheme),
      'primaryColor': const NullableColorConverter().toJson(value.primaryColor),
      'primaryColorBrightness': const NullableBrightnessConverter().toJson(
        value.primaryColorBrightness,
      ),
      'primaryColorDark':
          const NullableColorConverter().toJson(value.primaryColorDark),
      'primaryColorLight':
          const NullableColorConverter().toJson(value.primaryColorLight),
      'primaryIconTheme':
          const NullableIconThemeDataConverter().toJson(value.primaryIconTheme),
      'primaryTextTheme':
          const NullableTextThemeConverter().toJson(value.primaryTextTheme),
      'scaffoldBackgroundColor':
          const NullableColorConverter().toJson(value.scaffoldBackgroundColor),
      'secondaryHeaderColor':
          const NullableColorConverter().toJson(value.secondaryHeaderColor),
      'selectedRowColor':
          const NullableColorConverter().toJson(value.selectedRowColor),
      'shadowColor': const NullableColorConverter().toJson(value.shadowColor),
      'sliderTheme':
          const NullableSliderThemeDataConverter().toJson(value.sliderTheme),
      'snackBarTheme': const NullableSnackBarThemeDataConverter()
          .toJson(value.snackBarTheme),
      'splashColor': const NullableColorConverter().toJson(value.splashColor),
      'splashFactory': const NullableInteractiveInkFeatureFactoryConverter()
          .toJson(value.splashFactory),
      'tabBarTheme':
          const NullableTabBarThemeConverter().toJson(value.tabBarTheme),
      'textButtonTheme': const NullableTextButtonThemeDataConverter()
          .toJson(value.textButtonTheme),
      'textSelectionTheme':
          const NullableTextSelectionThemeDataConverter().toJson(
        value.textSelectionTheme,
      ),
      'textTheme': const NullableTextThemeConverter().toJson(value.textTheme),
      'toggleButtonsTheme':
          const NullableToggleButtonsThemeDataConverter().toJson(
        value.toggleButtonsTheme,
      ),
      'toggleableActiveColor':
          const NullableColorConverter().toJson(value.toggleableActiveColor),
      'tooltipTheme':
          const NullableTooltipThemeDataConverter().toJson(value.tooltipTheme),
      'typography':
          const NullableTypographyConverter().toJson(value.typography),
      'unselectedWidgetColor':
          const NullableColorConverter().toJson(value.unselectedWidgetColor),
      'visualDensity':
          const NullableVisualDensityConverter().toJson(value.visualDensity),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ThemeDataConverter extends JsonConverter<ThemeData, dynamic> {
  const ThemeDataConverter();

  @override
  ThemeData fromJson(json) => const TypedThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedThemeDataConverter().toJson(object);
}

class TypedThemeDataConverter
    extends JsonConverter<ThemeData, Map<String, dynamic>> {
  const TypedThemeDataConverter();
  @override
  ThemeData fromJson(Map<String, dynamic> json) {
    return const NullableThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ThemeData value) {
    return const NullableThemeDataConverter().toJson(value)!;
  }
}
