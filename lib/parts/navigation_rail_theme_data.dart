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
  Map<String, dynamic>? toJson(NavigationRailThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'elevation': object.elevation,
      'groupAlignment': object.groupAlignment,
      'labelType': const NullableNavigationRailLabelTypeConverter()
          .toJson(object.labelType),
      'selectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(object.selectedIconTheme),
      'selectedLabelTextStyle': const NullableTextStyleConverter().toJson(
        object.selectedLabelTextStyle,
      ),
      'unselectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(object.unselectedIconTheme),
      'unselectedLabelTextStyle': const NullableTextStyleConverter().toJson(
        object.unselectedLabelTextStyle,
      ),
    };
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
  Map<String, dynamic> toJson(NavigationRailThemeData object) {
    return const NullableNavigationRailThemeDataConverter().toJson(object)!;
  }
}
