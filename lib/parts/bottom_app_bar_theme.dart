part of theme_json_converter;

class NullableBottomAppBarThemeConverter
    extends JsonConverter<BottomAppBarTheme?, Map<String, dynamic>?> {
  const NullableBottomAppBarThemeConverter();

  @override
  BottomAppBarTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BottomAppBarTheme(
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      shape: const NullableNotchedShapeConverter().fromJson(
        json['shape'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(BottomAppBarTheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'color': const NullableColorConverter().toJson(value.color),
      'elevation': value.elevation,
      'shape': const NullableNotchedShapeConverter().toJson(value.shape),
    };

    throw 'Json_Unsuported_Value';
  }
}

class BottomAppBarThemeConverter
    extends JsonConverter<BottomAppBarTheme, Map<String, dynamic>> {
  const BottomAppBarThemeConverter();

  @override
  BottomAppBarTheme fromJson(Map<String, dynamic> json) {
    return const NullableBottomAppBarThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BottomAppBarTheme value) {
    return const NullableBottomAppBarThemeConverter().toJson(value)!;
  }
}
