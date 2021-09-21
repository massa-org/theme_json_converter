part of theme_json_converter;

class NullableElevatedButtonThemeDataConverter
    extends JsonConverter<ElevatedButtonThemeData?, Map<String, dynamic>?> {
  const NullableElevatedButtonThemeDataConverter();

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
    extends JsonConverter<ElevatedButtonThemeData, Map<String, dynamic>> {
  const ElevatedButtonThemeDataConverter();

  @override
  ElevatedButtonThemeData fromJson(Map<String, dynamic> json) {
    return const NullableElevatedButtonThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ElevatedButtonThemeData value) {
    return const NullableElevatedButtonThemeDataConverter().toJson(value)!;
  }
}
