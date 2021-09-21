part of theme_json_converter;

class NullableIconThemeDataConverter
    extends JsonConverter<IconThemeData?, Map<String, dynamic>?> {
  const NullableIconThemeDataConverter();

  @override
  IconThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return IconThemeData(
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      opacity: (json['opacity'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(IconThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'color': const NullableColorConverter().toJson(value.color),
      'opacity': value.opacity,
      'size': value.size,
    };

    throw 'Json_Unsuported_Value';
  }
}

class IconThemeDataConverter
    extends JsonConverter<IconThemeData, Map<String, dynamic>> {
  const IconThemeDataConverter();

  @override
  IconThemeData fromJson(Map<String, dynamic> json) {
    return const NullableIconThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(IconThemeData value) {
    return const NullableIconThemeDataConverter().toJson(value)!;
  }
}
