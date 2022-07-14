part of theme_json_converter;

class NullableBottomNavigationBarThemeDataConverter extends JsonConverter<
    BottomNavigationBarThemeData?, Map<String, dynamic>?> {
  const NullableBottomNavigationBarThemeDataConverter();

  @override
  BottomNavigationBarThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BottomNavigationBarThemeData(
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      selectedIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['selectedIconTheme'],
      ),
      selectedItemColor: const NullableColorConverter().fromJson(
        json['selectedItemColor'],
      ),
      selectedLabelStyle: const NullableTextStyleConverter().fromJson(
        json['selectedLabelStyle'],
      ),
      showSelectedLabels: json['showSelectedLabels'] == null
          ? null
          : (json['showSelectedLabels'] as bool),
      showUnselectedLabels: json['showUnselectedLabels'] == null
          ? null
          : (json['showUnselectedLabels'] as bool),
      type: const NullableBottomNavigationBarTypeConverter().fromJson(
        json['type'],
      ),
      unselectedIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['unselectedIconTheme'],
      ),
      unselectedItemColor: const NullableColorConverter().fromJson(
        json['unselectedItemColor'],
      ),
      unselectedLabelStyle: const NullableTextStyleConverter().fromJson(
        json['unselectedLabelStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(BottomNavigationBarThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'elevation': object.elevation,
      'selectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(object.selectedIconTheme),
      'selectedItemColor':
          const NullableColorConverter().toJson(object.selectedItemColor),
      'selectedLabelStyle':
          const NullableTextStyleConverter().toJson(object.selectedLabelStyle),
      'showSelectedLabels': object.showSelectedLabels,
      'showUnselectedLabels': object.showUnselectedLabels,
      'type':
          const NullableBottomNavigationBarTypeConverter().toJson(object.type),
      'unselectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(object.unselectedIconTheme),
      'unselectedItemColor':
          const NullableColorConverter().toJson(object.unselectedItemColor),
      'unselectedLabelStyle': const NullableTextStyleConverter()
          .toJson(object.unselectedLabelStyle),
    };
  }
}

class BottomNavigationBarThemeDataConverter
    extends JsonConverter<BottomNavigationBarThemeData, Map<String, dynamic>> {
  const BottomNavigationBarThemeDataConverter();

  @override
  BottomNavigationBarThemeData fromJson(Map<String, dynamic> json) {
    return const NullableBottomNavigationBarThemeDataConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BottomNavigationBarThemeData object) {
    return const NullableBottomNavigationBarThemeDataConverter()
        .toJson(object)!;
  }
}
