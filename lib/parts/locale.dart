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
  Map<String, dynamic>? toJson(Locale? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'countryCode': object.countryCode,
      'languageCode': object.languageCode,
    };
  }
}

class LocaleConverter extends JsonConverter<Locale, Map<String, dynamic>> {
  const LocaleConverter();

  @override
  Locale fromJson(Map<String, dynamic> json) {
    return const NullableLocaleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Locale object) {
    return const NullableLocaleConverter().toJson(object)!;
  }
}
