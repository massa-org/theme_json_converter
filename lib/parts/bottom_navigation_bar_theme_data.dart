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
  Map<String, dynamic>? toJson(BottomNavigationBarThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'elevation': value.elevation,
      'selectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(value.selectedIconTheme),
      'selectedItemColor':
          const NullableColorConverter().toJson(value.selectedItemColor),
      'selectedLabelStyle':
          const NullableTextStyleConverter().toJson(value.selectedLabelStyle),
      'showSelectedLabels': value.showSelectedLabels,
      'showUnselectedLabels': value.showUnselectedLabels,
      'type':
          const NullableBottomNavigationBarTypeConverter().toJson(value.type),
      'unselectedIconTheme': const NullableIconThemeDataConverter()
          .toJson(value.unselectedIconTheme),
      'unselectedItemColor':
          const NullableColorConverter().toJson(value.unselectedItemColor),
      'unselectedLabelStyle':
          const NullableTextStyleConverter().toJson(value.unselectedLabelStyle),
    };

    throw 'Json_Unsuported_Value';
  }
}

class BottomNavigationBarThemeDataConverter
    extends JsonConverter<BottomNavigationBarThemeData, dynamic> {
  const BottomNavigationBarThemeDataConverter();

  @override
  BottomNavigationBarThemeData fromJson(json) =>
      const TypedBottomNavigationBarThemeDataConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedBottomNavigationBarThemeDataConverter().toJson(object);
}

class TypedBottomNavigationBarThemeDataConverter
    extends JsonConverter<BottomNavigationBarThemeData, Map<String, dynamic>> {
  const TypedBottomNavigationBarThemeDataConverter();
  @override
  BottomNavigationBarThemeData fromJson(Map<String, dynamic> json) {
    return const NullableBottomNavigationBarThemeDataConverter()
        .fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BottomNavigationBarThemeData value) {
    return const NullableBottomNavigationBarThemeDataConverter().toJson(value)!;
  }
}
