part of theme_json_converter;

class NullableLocaleConverter
    extends JsonConverter<Locale?, Map<String, dynamic>?> {
  const NullableLocaleConverter();

  @override
  Locale? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return Locale(
      json['languageCode'],
      json['countryCode'],
    );
  }

  @override
  Map<String, dynamic>? toJson(Locale? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'countryCode': value.countryCode,
      'languageCode': value.languageCode,
    };

    throw 'Json_Unsuported_Value';
  }
}

class LocaleConverter extends JsonConverter<Locale, Map<String, dynamic>> {
  const LocaleConverter();

  @override
  Locale fromJson(Map<String, dynamic> json) {
    return const NullableLocaleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Locale value) {
    return const NullableLocaleConverter().toJson(value)!;
  }
}
