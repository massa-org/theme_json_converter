part of theme_json_converter;

class NullableIconThemeDataConverter
    extends JsonConverter<IconThemeData?, dynamic> {
  const NullableIconThemeDataConverter();

  @override
  IconThemeData? fromJson(json) => const TypedNullableIconThemeDataConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableIconThemeDataConverter().toJson(object);
}

class TypedNullableIconThemeDataConverter
    extends JsonConverter<IconThemeData?, Map<String, dynamic>?> {
  const TypedNullableIconThemeDataConverter();
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

class IconThemeDataConverter extends JsonConverter<IconThemeData, dynamic> {
  const IconThemeDataConverter();

  @override
  IconThemeData fromJson(json) => const TypedIconThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedIconThemeDataConverter().toJson(object);
}

class TypedIconThemeDataConverter
    extends JsonConverter<IconThemeData, Map<String, dynamic>> {
  const TypedIconThemeDataConverter();
  @override
  IconThemeData fromJson(Map<String, dynamic> json) {
    return const NullableIconThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(IconThemeData value) {
    return const NullableIconThemeDataConverter().toJson(value)!;
  }
}
