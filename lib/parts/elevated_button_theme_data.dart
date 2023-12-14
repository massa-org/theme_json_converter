part of theme_json_converter;

class NullableElevatedButtonThemeDataConverter
    extends JsonConverter<ElevatedButtonThemeData?, dynamic> {
  const NullableElevatedButtonThemeDataConverter();

  @override
  ElevatedButtonThemeData? fromJson(json) =>
      const TypedNullableElevatedButtonThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableElevatedButtonThemeDataConverter().toJson(object);
}

class TypedNullableElevatedButtonThemeDataConverter
    extends JsonConverter<ElevatedButtonThemeData?, Map<String, dynamic>?> {
  const TypedNullableElevatedButtonThemeDataConverter();
  @override
  ElevatedButtonThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ElevatedButtonThemeData(
      style: const NullableButtonStyleConverter().fromJson(
        json['style'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(ElevatedButtonThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'style': const NullableButtonStyleConverter().toJson(value.style),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ElevatedButtonThemeDataConverter
    extends JsonConverter<ElevatedButtonThemeData, dynamic> {
  const ElevatedButtonThemeDataConverter();

  @override
  ElevatedButtonThemeData fromJson(json) =>
      const TypedElevatedButtonThemeDataConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedElevatedButtonThemeDataConverter().toJson(object);
}

class TypedElevatedButtonThemeDataConverter
    extends JsonConverter<ElevatedButtonThemeData, Map<String, dynamic>> {
  const TypedElevatedButtonThemeDataConverter();
  @override
  ElevatedButtonThemeData fromJson(Map<String, dynamic> json) {
    return const NullableElevatedButtonThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ElevatedButtonThemeData value) {
    return const NullableElevatedButtonThemeDataConverter().toJson(value)!;
  }
}
