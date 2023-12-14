part of theme_json_converter;

class NullableOutlinedButtonThemeDataConverter
    extends JsonConverter<OutlinedButtonThemeData?, dynamic> {
  const NullableOutlinedButtonThemeDataConverter();

  @override
  OutlinedButtonThemeData? fromJson(json) =>
      const TypedNullableOutlinedButtonThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableOutlinedButtonThemeDataConverter().toJson(object);
}

class TypedNullableOutlinedButtonThemeDataConverter
    extends JsonConverter<OutlinedButtonThemeData?, Map<String, dynamic>?> {
  const TypedNullableOutlinedButtonThemeDataConverter();
  @override
  OutlinedButtonThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return OutlinedButtonThemeData(
      style: const NullableButtonStyleConverter().fromJson(
        json['style'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(OutlinedButtonThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'style': const NullableButtonStyleConverter().toJson(value.style),
    };

    throw 'Json_Unsuported_Value';
  }
}

class OutlinedButtonThemeDataConverter
    extends JsonConverter<OutlinedButtonThemeData, dynamic> {
  const OutlinedButtonThemeDataConverter();

  @override
  OutlinedButtonThemeData fromJson(json) =>
      const TypedOutlinedButtonThemeDataConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedOutlinedButtonThemeDataConverter().toJson(object);
}

class TypedOutlinedButtonThemeDataConverter
    extends JsonConverter<OutlinedButtonThemeData, Map<String, dynamic>> {
  const TypedOutlinedButtonThemeDataConverter();
  @override
  OutlinedButtonThemeData fromJson(Map<String, dynamic> json) {
    return const NullableOutlinedButtonThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(OutlinedButtonThemeData value) {
    return const NullableOutlinedButtonThemeDataConverter().toJson(value)!;
  }
}
