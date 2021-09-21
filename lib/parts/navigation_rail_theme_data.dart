part of theme_json_converter;

class NullableNavigationRailThemeDataConverter
    extends JsonConverter<NavigationRailThemeData?, Map<String, dynamic>?> {
  const NullableNavigationRailThemeDataConverter();

  @override
  NavigationRailThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return NavigationRailThemeData(
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      groupAlignment: (json['groupAlignment'] as num?)?.toDouble(),
      labelType: const NullableNavigationRailLabelTypeConverter().fromJson(
        json['labelType'],
      ),
      selectedIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['selectedIconTheme'],
      ),
      selectedLabelTextStyle: const NullableTextStyleConverter().fromJson(
        json['selectedLabelTextStyle'],
      ),
      unselectedIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['unselectedIconTheme'],
      ),
      unselectedLabelTextStyle: const NullableTextStyleConverter().fromJson(
        json['unselectedLabelTextStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(NavigationRailThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'elevation': value.elevation,
      'groupAlignment': value.groupAlignment,
      'labelType': const NullableNavigationRailLabelTypeConverter()
          .toJson(value.labelType),
      'selectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(value.selectedIconTheme),
      'selectedLabelTextStyle': const NullableTextStyleConverter().toJson(
        value.selectedLabelTextStyle,
      ),
      'unselectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(value.unselectedIconTheme),
      'unselectedLabelTextStyle': const NullableTextStyleConverter().toJson(
        value.unselectedLabelTextStyle,
      ),
    };

    throw 'Json_Unsuported_Value';
  }
}

class NavigationRailThemeDataConverter
    extends JsonConverter<NavigationRailThemeData, Map<String, dynamic>> {
  const NavigationRailThemeDataConverter();

  @override
  NavigationRailThemeData fromJson(Map<String, dynamic> json) {
    return const NullableNavigationRailThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(NavigationRailThemeData value) {
    return const NullableNavigationRailThemeDataConverter().toJson(value)!;
  }
}
