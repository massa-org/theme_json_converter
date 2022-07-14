part of theme_json_converter;

class NullableTextButtonThemeDataConverter
    extends JsonConverter<TextButtonThemeData?, Map<String, dynamic>?> {
  const NullableTextButtonThemeDataConverter();

  @override
  TextButtonThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TextButtonThemeData(
      style: const NullableButtonStyleConverter().fromJson(
        json['style'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(TextButtonThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'style': const NullableButtonStyleConverter().toJson(object.style),
    };
  }
}

class TextButtonThemeDataConverter
    extends JsonConverter<TextButtonThemeData, Map<String, dynamic>> {
  const TextButtonThemeDataConverter();

  @override
  TextButtonThemeData fromJson(Map<String, dynamic> json) {
    return const NullableTextButtonThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TextButtonThemeData object) {
    return const NullableTextButtonThemeDataConverter().toJson(object)!;
  }
}
