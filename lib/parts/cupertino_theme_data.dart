part of theme_json_converter;

class NullableCupertinoThemeDataConverter
    extends JsonConverter<CupertinoThemeData?, dynamic> {
  const NullableCupertinoThemeDataConverter();

  @override
  CupertinoThemeData? fromJson(json) =>
      const TypedNullableCupertinoThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableCupertinoThemeDataConverter().toJson(object);
}

class TypedNullableCupertinoThemeDataConverter
    extends JsonConverter<CupertinoThemeData?, Map<String, dynamic>?> {
  const TypedNullableCupertinoThemeDataConverter();
  @override
  CupertinoThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return CupertinoThemeData(
      barBackgroundColor: const NullableColorConverter().fromJson(
        json['barBackgroundColor'],
      ),
      brightness: const NullableBrightnessConverter().fromJson(
        json['brightness'],
      ),
      primaryColor: const NullableColorConverter().fromJson(
        json['primaryColor'],
      ),
      primaryContrastingColor: const NullableColorConverter().fromJson(
        json['primaryContrastingColor'],
      ),
      scaffoldBackgroundColor: const NullableColorConverter().fromJson(
        json['scaffoldBackgroundColor'],
      ),
      textTheme: const NullableCupertinoTextThemeDataConverter().fromJson(
        json['textTheme'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(CupertinoThemeData? value) {
    if (value == null) return null;

    var runtimeTypeStr = value.runtimeType.toString();
    // In Flutter < 1.24, the type is: CupertinoThemeData or _NoDefaultCupertinoThemeData
    // In Flutter >= 1.24, the type is: NoDefaultCupertinoThemeData
    assert(runtimeTypeStr == 'CupertinoThemeData' ||
        runtimeTypeStr == 'NoDefaultCupertinoThemeData' ||
        runtimeTypeStr == '_NoDefaultCupertinoThemeData');

    if (runtimeTypeStr == 'CupertinoThemeData' ||
        runtimeTypeStr == 'NoDefaultCupertinoThemeData' ||
        runtimeTypeStr == '_NoDefaultCupertinoThemeData') {
      return <String, dynamic>{
        'barBackgroundColor':
            const NullableColorConverter().toJson(value.barBackgroundColor),
        'brightness':
            const NullableBrightnessConverter().toJson(value.brightness),
        'primaryColor':
            const NullableColorConverter().toJson(value.primaryColor),
        'primaryContrastingColor': const NullableColorConverter()
            .toJson(value.primaryContrastingColor),
        'scaffoldBackgroundColor': const NullableColorConverter()
            .toJson(value.scaffoldBackgroundColor),
        'textTheme': const NullableCupertinoTextThemeDataConverter()
            .toJson(value.textTheme),
      };
    } else {
      throw Exception(
        'Unknown type passed in to [const NullableCupertinoThemeDataConverter().toJson]: [$runtimeTypeStr]',
      );
    }

    throw 'Json_Unsuported_Value';
  }
}

class CupertinoThemeDataConverter
    extends JsonConverter<CupertinoThemeData, dynamic> {
  const CupertinoThemeDataConverter();

  @override
  CupertinoThemeData fromJson(json) => const TypedCupertinoThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedCupertinoThemeDataConverter().toJson(object);
}

class TypedCupertinoThemeDataConverter
    extends JsonConverter<CupertinoThemeData, Map<String, dynamic>> {
  const TypedCupertinoThemeDataConverter();
  @override
  CupertinoThemeData fromJson(Map<String, dynamic> json) {
    return const NullableCupertinoThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(CupertinoThemeData value) {
    return const NullableCupertinoThemeDataConverter().toJson(value)!;
  }
}
