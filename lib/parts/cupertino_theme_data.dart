part of theme_json_converter;

class NullableCupertinoThemeDataConverter
    extends JsonConverter<CupertinoThemeData?, Map<String, dynamic>?> {
  const NullableCupertinoThemeDataConverter();

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
  Map<String, dynamic>? toJson(CupertinoThemeData? object) {
    if (object == null) return null;

    var runtimeTypeStr = object.runtimeType.toString();
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
            const NullableColorConverter().toJson(object.barBackgroundColor),
        'brightness':
            const NullableBrightnessConverter().toJson(object.brightness),
        'primaryColor':
            const NullableColorConverter().toJson(object.primaryColor),
        'primaryContrastingColor': const NullableColorConverter()
            .toJson(object.primaryContrastingColor),
        'scaffoldBackgroundColor': const NullableColorConverter()
            .toJson(object.scaffoldBackgroundColor),
        'textTheme': const NullableCupertinoTextThemeDataConverter()
            .toJson(object.textTheme),
      };
    } else {
      throw Exception(
        'Unknown type passed in to [const NullableCupertinoThemeDataConverter().toJson]: [$runtimeTypeStr]',
      );
    }
  }
}

class CupertinoThemeDataConverter
    extends JsonConverter<CupertinoThemeData, Map<String, dynamic>> {
  const CupertinoThemeDataConverter();

  @override
  CupertinoThemeData fromJson(Map<String, dynamic> json) {
    return const NullableCupertinoThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(CupertinoThemeData object) {
    return const NullableCupertinoThemeDataConverter().toJson(object)!;
  }
}
