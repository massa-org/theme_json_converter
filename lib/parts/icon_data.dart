part of theme_json_converter;

class NullableIconDataConverter extends JsonConverter<IconData?, dynamic> {
  const NullableIconDataConverter();

  @override
  IconData? fromJson(json) => const TypedNullableIconDataConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableIconDataConverter().toJson(object);
}

class TypedNullableIconDataConverter
    extends JsonConverter<IconData?, Map<String, dynamic>?> {
  const TypedNullableIconDataConverter();
  @override
  IconData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return IconData(
      (json['codePoint'] as num).toInt(),
      fontFamily: json['fontFamily'],
      fontPackage: json['fontPackage'],
      matchTextDirection: (json['matchTextDirection'] as bool),
    );
  }

  @override
  Map<String, dynamic>? toJson(IconData? value) {
    if (value == null) return null;

    return {
      'codePoint': value.codePoint,
      'fontFamily': value.fontFamily,
      'fontPackage': value.fontPackage,
      'matchTextDirection': value.matchTextDirection,
    };

    throw 'Json_Unsuported_Value';
  }
}

class IconDataConverter extends JsonConverter<IconData, dynamic> {
  const IconDataConverter();

  @override
  IconData fromJson(json) =>
      const TypedIconDataConverter().fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedIconDataConverter().toJson(object);
}

class TypedIconDataConverter
    extends JsonConverter<IconData, Map<String, dynamic>> {
  const TypedIconDataConverter();
  @override
  IconData fromJson(Map<String, dynamic> json) {
    return const NullableIconDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(IconData value) {
    return const NullableIconDataConverter().toJson(value)!;
  }
}
