const Map<String, String> typeConverterMapping = {
  'Alignment': 'AlignmentConverter',
  'AppBarTheme': 'AppBarThemeConverter',
  'AutovalidateMode': 'AutovalidateModeConverter',
  'Axis': 'AxisConverter',
  'BlendMode': 'BlendModeConverter',
  'BorderRadius': 'BorderRadiusConverter',
  'BorderSide': 'BorderSideConverter',
  'BorderStyle': 'BorderStyleConverter',
  'BottomAppBarTheme': 'BottomAppBarThemeConverter',
  'BottomNavigationBarThemeData': 'BottomNavigationBarThemeDataConverter',
  'BottomNavigationBarType': 'BottomNavigationBarTypeConverter',
  'BottomSheetThemeData': 'BottomSheetThemeDataConverter',
  'BoxBorder': 'BoxBorderConverter',
  'BoxConstraints': 'BoxConstraintsConverter',
  'BoxDecoration': 'BoxDecorationConverter',
  'BoxFit': 'BoxFitConverter',
  'BoxShadow': 'BoxShadowConverter',
  'BoxShape': 'BoxShapeConverter',
  'Brightness': 'BrightnessConverter',
  'ButtonBarLayoutBehavior': 'ButtonBarLayoutBehaviorConverter',
  'ButtonBarThemeData': 'ButtonBarThemeDataConverter',
  'ButtonStyle': 'ButtonStyleConverter',
  'ButtonTextTheme': 'ButtonTextThemeConverter',
  'ButtonThemeData': 'ButtonThemeDataConverter',
  'CardTheme': 'CardThemeConverter',
  'CheckboxThemeData': 'CheckboxThemeDataConverter',
  'ChipThemeData': 'ChipThemeDataConverter',
  'Clip': 'ClipConverter',
  'Color': 'ColorConverter',
  'ColorScheme': 'ColorSchemeConverter',
  'CrossAxisAlignment': 'CrossAxisAlignmentConverter',
  'CrossFadeState': 'CrossFadeStateConverter',
  'CupertinoTextThemeData': 'CupertinoTextThemeDataConverter',
  'CupertinoThemeData': 'CupertinoThemeDataConverter',
  'DataTableThemeData': 'DataTableThemeDataConverter',
  'DecorationImage': 'DecorationImageConverter',
  'DecorationPosition': 'DecorationPositionConverter',
  'DialogTheme': 'DialogThemeConverter',
  'DividerThemeData': 'DividerThemeDataConverter',
  'DragStartBehavior': 'DragStartBehaviorConverter',
  'EdgeInsetsGeometry': 'EdgeInsetsGeometryConverter',
  'ElevatedButtonThemeData': 'ElevatedButtonThemeDataConverter',
  'FilterQuality': 'FilterQualityConverter',
  'FlexFit': 'FlexFitConverter',
  'FloatingActionButtonAnimator': 'FloatingActionButtonAnimatorConverter',
  'FloatingActionButtonLocation': 'FloatingActionButtonLocationConverter',
  'FloatingActionButtonThemeData': 'FloatingActionButtonThemeDataConverter',
  'FloatingLabelBehavior': 'FloatingLabelBehaviorConverter',
  'FontFeature': 'FontFeatureConverter',
  'FontStyle': 'FontStyleConverter',
  'FontWeight': 'FontWeightConverter',
  'Gradient': 'GradientConverter',
  'GradientTransform': 'GradientTransformConverter',
  'HitTestBehavior': 'HitTestBehaviorConverter',
  'IconData': 'IconDataConverter',
  'IconThemeData': 'IconThemeDataConverter',
  'ImageProvider': 'ImageProviderConverter',
  'ImageRepeat': 'ImageRepeatConverter',
  'InputBorder': 'InputBorderConverter',
  'InputDecorationTheme': 'InputDecorationThemeConverter',
  'InteractiveInkFeatureFactory': 'InteractiveInkFeatureFactoryConverter',
  'Locale': 'LocaleConverter',
  'MainAxisAlignment': 'MainAxisAlignmentConverter',
  'MainAxisSize': 'MainAxisSizeConverter',
  'MaterialBannerThemeData': 'MaterialBannerThemeDataConverter',
  'MaterialColor': 'MaterialColorConverter',
  'MaterialStatePropertyBorderSide':
      'MaterialStateProperty<BorderSide?>Converter',
  'MaterialStatePropertyColor': 'MaterialStateProperty<Color?>Converter',
  'MaterialStatePropertyDouble': 'MaterialStateProperty<double?>Converter',
  'MaterialStatePropertyEdgeInsetsGeometry':
      'MaterialStateProperty<EdgeInsetsGeometry?>Converter',
  'MaterialStatePropertyMouseCursor':
      'MaterialStateProperty<MouseCursor?>Converter',
  'MaterialStatePropertyOutlinedBorder':
      'MaterialStateProperty<OutlinedBorder?>Converter',
  'MaterialStatePropertySize': 'MaterialStateProperty<Size?>Converter',
  'MaterialStatePropertyTextStyle':
      'MaterialStateProperty<TextStyle?>Converter',
  'MaterialTapTargetSize': 'MaterialTapTargetSizeConverter',
  'MaterialType': 'MaterialTypeConverter',
  'MaxLengthEnforcement': 'MaxLengthEnforcementConverter',
  'MouseCursor': 'MouseCursorConverter',
  'NavigationRailLabelType': 'NavigationRailLabelTypeConverter',
  'NavigationRailThemeData': 'NavigationRailThemeDataConverter',
  'NotchedShape': 'NotchedShapeConverter',
  'Offset': 'OffsetConverter',
  'OrdinalSortKey': 'OrdinalSortKeyConverter',
  'OutlinedBorder': 'OutlinedBorderConverter',
  'OutlinedButtonThemeData': 'OutlinedButtonThemeDataConverter',
  'PageTransitionsBuilder': 'PageTransitionsBuilderConverter',
  'PageTransitionsTheme': 'PageTransitionsThemeConverter',
  'PopupMenuThemeData': 'PopupMenuThemeDataConverter',
  'RadioThemeData': 'RadioThemeDataConverter',
  'Radius': 'RadiusConverter',
  'RangeSliderThumbShape': 'RangeSliderThumbShapeConverter',
  'RangeSliderTickMarkShape': 'RangeSliderTickMarkShapeConverter',
  'RangeSliderTrackShape': 'RangeSliderTrackShapeConverter',
  'RangeSliderValueIndicatorShape': 'RangeSliderValueIndicatorShapeConverter',
  'Rect': 'RectConverter',
  'ScrollPhysics': 'ScrollPhysicsConverter',
  'ScrollViewKeyboardDismissBehavior':
      'ScrollViewKeyboardDismissBehaviorConverter',
  'ScrollbarThemeData': 'ScrollbarThemeDataConverter',
  'SemanticsTag': 'SemanticsTagConverter',
  'Shadow': 'ShadowConverter',
  'ShapeBorder': 'ShapeBorderConverter',
  'ShowValueIndicator': 'ShowValueIndicatorConverter',
  'Size': 'SizeConverter',
  'SliderComponentShape': 'SliderComponentShapeConverter',
  'SliderThemeData': 'SliderThemeDataConverter',
  'SliderTickMarkShape': 'SliderTickMarkShapeConverter',
  'SliderTrackShape': 'SliderTrackShapeConverter',
  'SmartDashesType': 'SmartDashesTypeConverter',
  'SmartQuotesType': 'SmartQuotesTypeConverter',
  'SnackBarBehavior': 'SnackBarBehaviorConverter',
  'SnackBarThemeData': 'SnackBarThemeDataConverter',
  'StackFit': 'StackFitConverter',
  'StrutStyle': 'StrutStyleConverter',
  'SwitchThemeData': 'SwitchThemeDataConverter',
  'SystemUiOverlayStyle': 'SystemUiOverlayStyleConverter',
  'TabBarIndicatorSize': 'TabBarIndicatorSizeConverter',
  'TabBarTheme': 'TabBarThemeConverter',
  'TargetPlatform': 'TargetPlatformConverter',
  'TextAlign': 'TextAlignConverter',
  'TextAlignVertical': 'TextAlignVerticalConverter',
  'TextBaseline': 'TextBaselineConverter',
  'TextButtonThemeData': 'TextButtonThemeDataConverter',
  'TextCapitalization': 'TextCapitalizationConverter',
  'TextDecoration': 'TextDecorationConverter',
  'TextDecorationStyle': 'TextDecorationStyleConverter',
  'TextDirection': 'TextDirectionConverter',
  'TextHeightBehavior': 'TextHeightBehaviorConverter',
  'TextInputAction': 'TextInputActionConverter',
  'TextInputType': 'TextInputTypeConverter',
  'TextOverflow': 'TextOverflowConverter',
  'TextSelectionThemeData': 'TextSelectionThemeDataConverter',
  'TextStyle': 'TextStyleConverter',
  'TextTheme': 'TextThemeConverter',
  'TextWidthBasis': 'TextWidthBasisConverter',
  'ThemeData': 'ThemeDataConverter',
  'TileMode': 'TileModeConverter',
  'TimePickerThemeData': 'TimePickerThemeDataConverter',
  'ToggleButtonsThemeData': 'ToggleButtonsThemeDataConverter',
  'ToolbarOptions': 'ToolbarOptionsConverter',
  'TooltipThemeData': 'TooltipThemeDataConverter',
  'Typography': 'TypographyConverter',
  'VerticalDirection': 'VerticalDirectionConverter',
  'VisualDensity': 'VisualDensityConverter',
  'Alignment?': 'NullableAlignmentConverter',
  'AppBarTheme?': 'NullableAppBarThemeConverter',
  'AutovalidateMode?': 'NullableAutovalidateModeConverter',
  'Axis?': 'NullableAxisConverter',
  'BlendMode?': 'NullableBlendModeConverter',
  'BorderRadius?': 'NullableBorderRadiusConverter',
  'BorderSide?': 'NullableBorderSideConverter',
  'BorderStyle?': 'NullableBorderStyleConverter',
  'BottomAppBarTheme?': 'NullableBottomAppBarThemeConverter',
  'BottomNavigationBarThemeData?':
      'NullableBottomNavigationBarThemeDataConverter',
  'BottomNavigationBarType?': 'NullableBottomNavigationBarTypeConverter',
  'BottomSheetThemeData?': 'NullableBottomSheetThemeDataConverter',
  'BoxBorder?': 'NullableBoxBorderConverter',
  'BoxConstraints?': 'NullableBoxConstraintsConverter',
  'BoxDecoration?': 'NullableBoxDecorationConverter',
  'BoxFit?': 'NullableBoxFitConverter',
  'BoxShadow?': 'NullableBoxShadowConverter',
  'BoxShape?': 'NullableBoxShapeConverter',
  'Brightness?': 'NullableBrightnessConverter',
  'ButtonBarLayoutBehavior?': 'NullableButtonBarLayoutBehaviorConverter',
  'ButtonBarThemeData?': 'NullableButtonBarThemeDataConverter',
  'ButtonStyle?': 'NullableButtonStyleConverter',
  'ButtonTextTheme?': 'NullableButtonTextThemeConverter',
  'ButtonThemeData?': 'NullableButtonThemeDataConverter',
  'CardTheme?': 'NullableCardThemeConverter',
  'CheckboxThemeData?': 'NullableCheckboxThemeDataConverter',
  'ChipThemeData?': 'NullableChipThemeDataConverter',
  'Clip?': 'NullableClipConverter',
  'Color?': 'NullableColorConverter',
  'ColorScheme?': 'NullableColorSchemeConverter',
  'CrossAxisAlignment?': 'NullableCrossAxisAlignmentConverter',
  'CrossFadeState?': 'NullableCrossFadeStateConverter',
  'CupertinoTextThemeData?': 'NullableCupertinoTextThemeDataConverter',
  'CupertinoThemeData?': 'NullableCupertinoThemeDataConverter',
  'DataTableThemeData?': 'NullableDataTableThemeDataConverter',
  'DecorationImage?': 'NullableDecorationImageConverter',
  'DecorationPosition?': 'NullableDecorationPositionConverter',
  'DialogTheme?': 'NullableDialogThemeConverter',
  'DividerThemeData?': 'NullableDividerThemeDataConverter',
  'DragStartBehavior?': 'NullableDragStartBehaviorConverter',
  'EdgeInsetsGeometry?': 'NullableEdgeInsetsGeometryConverter',
  'ElevatedButtonThemeData?': 'NullableElevatedButtonThemeDataConverter',
  'FilterQuality?': 'NullableFilterQualityConverter',
  'FlexFit?': 'NullableFlexFitConverter',
  'FloatingActionButtonAnimator?':
      'NullableFloatingActionButtonAnimatorConverter',
  'FloatingActionButtonLocation?':
      'NullableFloatingActionButtonLocationConverter',
  'FloatingActionButtonThemeData?':
      'NullableFloatingActionButtonThemeDataConverter',
  'FloatingLabelBehavior?': 'NullableFloatingLabelBehaviorConverter',
  'FontFeature?': 'NullableFontFeatureConverter',
  'FontStyle?': 'NullableFontStyleConverter',
  'FontWeight?': 'NullableFontWeightConverter',
  'Gradient?': 'NullableGradientConverter',
  'GradientTransform?': 'NullableGradientTransformConverter',
  'HitTestBehavior?': 'NullableHitTestBehaviorConverter',
  'IconData?': 'NullableIconDataConverter',
  'IconThemeData?': 'NullableIconThemeDataConverter',
  'ImageProvider?': 'NullableImageProviderConverter',
  'ImageRepeat?': 'NullableImageRepeatConverter',
  'InputBorder?': 'NullableInputBorderConverter',
  'InputDecorationTheme?': 'NullableInputDecorationThemeConverter',
  'InteractiveInkFeatureFactory?':
      'NullableInteractiveInkFeatureFactoryConverter',
  'Locale?': 'NullableLocaleConverter',
  'MainAxisAlignment?': 'NullableMainAxisAlignmentConverter',
  'MainAxisSize?': 'NullableMainAxisSizeConverter',
  'MaterialBannerThemeData?': 'NullableMaterialBannerThemeDataConverter',
  'MaterialColor?': 'NullableMaterialColorConverter',
  'MaterialStatePropertyBorderSide?':
      'NullableMaterialStateProperty<BorderSide?>Converter',
  'MaterialStatePropertyColor?':
      'NullableMaterialStateProperty<Color?>Converter',
  'MaterialStatePropertyDouble?':
      'NullableMaterialStateProperty<double?>Converter',
  'MaterialStatePropertyEdgeInsetsGeometry?':
      'NullableMaterialStateProperty<EdgeInsetsGeometry?>Converter',
  'MaterialStatePropertyMouseCursor?':
      'NullableMaterialStateProperty<MouseCursor?>Converter',
  'MaterialStatePropertyOutlinedBorder?':
      'NullableMaterialStateProperty<OutlinedBorder?>Converter',
  'MaterialStatePropertySize?': 'NullableMaterialStateProperty<Size?>Converter',
  'MaterialStatePropertyTextStyle?':
      'NullableMaterialStateProperty<TextStyle?>Converter',
  'MaterialTapTargetSize?': 'NullableMaterialTapTargetSizeConverter',
  'MaterialType?': 'NullableMaterialTypeConverter',
  'MaxLengthEnforcement?': 'NullableMaxLengthEnforcementConverter',
  'MouseCursor?': 'NullableMouseCursorConverter',
  'NavigationRailLabelType?': 'NullableNavigationRailLabelTypeConverter',
  'NavigationRailThemeData?': 'NullableNavigationRailThemeDataConverter',
  'NotchedShape?': 'NullableNotchedShapeConverter',
  'Offset?': 'NullableOffsetConverter',
  'OrdinalSortKey?': 'NullableOrdinalSortKeyConverter',
  'OutlinedBorder?': 'NullableOutlinedBorderConverter',
  'OutlinedButtonThemeData?': 'NullableOutlinedButtonThemeDataConverter',
  'PageTransitionsBuilder?': 'NullablePageTransitionsBuilderConverter',
  'PageTransitionsTheme?': 'NullablePageTransitionsThemeConverter',
  'PopupMenuThemeData?': 'NullablePopupMenuThemeDataConverter',
  'RadioThemeData?': 'NullableRadioThemeDataConverter',
  'Radius?': 'NullableRadiusConverter',
  'RangeSliderThumbShape?': 'NullableRangeSliderThumbShapeConverter',
  'RangeSliderTickMarkShape?': 'NullableRangeSliderTickMarkShapeConverter',
  'RangeSliderTrackShape?': 'NullableRangeSliderTrackShapeConverter',
  'RangeSliderValueIndicatorShape?':
      'NullableRangeSliderValueIndicatorShapeConverter',
  'Rect?': 'NullableRectConverter',
  'ScrollPhysics?': 'NullableScrollPhysicsConverter',
  'ScrollViewKeyboardDismissBehavior?':
      'NullableScrollViewKeyboardDismissBehaviorConverter',
  'ScrollbarThemeData?': 'NullableScrollbarThemeDataConverter',
  'SemanticsTag?': 'NullableSemanticsTagConverter',
  'Shadow?': 'NullableShadowConverter',
  'ShapeBorder?': 'NullableShapeBorderConverter',
  'ShowValueIndicator?': 'NullableShowValueIndicatorConverter',
  'Size?': 'NullableSizeConverter',
  'SliderComponentShape?': 'NullableSliderComponentShapeConverter',
  'SliderThemeData?': 'NullableSliderThemeDataConverter',
  'SliderTickMarkShape?': 'NullableSliderTickMarkShapeConverter',
  'SliderTrackShape?': 'NullableSliderTrackShapeConverter',
  'SmartDashesType?': 'NullableSmartDashesTypeConverter',
  'SmartQuotesType?': 'NullableSmartQuotesTypeConverter',
  'SnackBarBehavior?': 'NullableSnackBarBehaviorConverter',
  'SnackBarThemeData?': 'NullableSnackBarThemeDataConverter',
  'StackFit?': 'NullableStackFitConverter',
  'StrutStyle?': 'NullableStrutStyleConverter',
  'SwitchThemeData?': 'NullableSwitchThemeDataConverter',
  'SystemUiOverlayStyle?': 'NullableSystemUiOverlayStyleConverter',
  'TabBarIndicatorSize?': 'NullableTabBarIndicatorSizeConverter',
  'TabBarTheme?': 'NullableTabBarThemeConverter',
  'TargetPlatform?': 'NullableTargetPlatformConverter',
  'TextAlign?': 'NullableTextAlignConverter',
  'TextAlignVertical?': 'NullableTextAlignVerticalConverter',
  'TextBaseline?': 'NullableTextBaselineConverter',
  'TextButtonThemeData?': 'NullableTextButtonThemeDataConverter',
  'TextCapitalization?': 'NullableTextCapitalizationConverter',
  'TextDecoration?': 'NullableTextDecorationConverter',
  'TextDecorationStyle?': 'NullableTextDecorationStyleConverter',
  'TextDirection?': 'NullableTextDirectionConverter',
  'TextHeightBehavior?': 'NullableTextHeightBehaviorConverter',
  'TextInputAction?': 'NullableTextInputActionConverter',
  'TextInputType?': 'NullableTextInputTypeConverter',
  'TextOverflow?': 'NullableTextOverflowConverter',
  'TextSelectionThemeData?': 'NullableTextSelectionThemeDataConverter',
  'TextStyle?': 'NullableTextStyleConverter',
  'TextTheme?': 'NullableTextThemeConverter',
  'TextWidthBasis?': 'NullableTextWidthBasisConverter',
  'ThemeData?': 'NullableThemeDataConverter',
  'TileMode?': 'NullableTileModeConverter',
  'TimePickerThemeData?': 'NullableTimePickerThemeDataConverter',
  'ToggleButtonsThemeData?': 'NullableToggleButtonsThemeDataConverter',
  'ToolbarOptions?': 'NullableToolbarOptionsConverter',
  'TooltipThemeData?': 'NullableTooltipThemeDataConverter',
  'Typography?': 'NullableTypographyConverter',
  'VerticalDirection?': 'NullableVerticalDirectionConverter',
  'VisualDensity?': 'NullableVisualDensityConverter',
};
