part of theme_json_converter;

class NullableTextButtonThemeDataConverter
    extends JsonConverter<TextButtonThemeData?, dynamic> {
  const NullableTextButtonThemeDataConverter();

  @override
  TextButtonThemeData? fromJson(json) =>
      const TypedNullableTextButtonThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableTextButtonThemeDataConverter().toJson(object);
}

class TypedNullableTextButtonThemeDataConverter
    extends JsonConverter<TextButtonThemeData?, Map<String, dynamic>?> {
  const TypedNullableTextButtonThemeDataConverter();
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
  Map<String, dynamic>? toJson(TextButtonThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'style': const NullableButtonStyleConverter().toJson(value.style),
    };

    throw 'Json_Unsuported_Value';
  }
}

class TextButtonThemeDataConverter
    extends JsonConverter<TextButtonThemeData, dynamic> {
  const TextButtonThemeDataConverter();

  @override
  TextButtonThemeData fromJson(json) =>
      const TypedTextButtonThemeDataConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedTextButtonThemeDataConverter().toJson(object);
}

class TypedTextButtonThemeDataConverter
    extends JsonConverter<TextButtonThemeData, Map<String, dynamic>> {
  const TypedTextButtonThemeDataConverter();
  @override
  TextButtonThemeData fromJson(Map<String, dynamic> json) {
    return const NullableTextButtonThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TextButtonThemeData value) {
    return const NullableTextButtonThemeDataConverter().toJson(value)!;
  }
}
