part of theme_json_converter;

class NullableIconDataConverter
    extends JsonConverter<IconData?, Map<String, dynamic>?> {
  const NullableIconDataConverter();

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

class IconDataConverter extends JsonConverter<IconData, Map<String, dynamic>> {
  const IconDataConverter();

  @override
  IconData fromJson(Map<String, dynamic> json) {
    return const NullableIconDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(IconData value) {
    return const NullableIconDataConverter().toJson(value)!;
  }
}
