part of theme_json_converter;

class NullableLocaleConverter extends JsonConverter<Locale?, dynamic> {
  const NullableLocaleConverter();

  @override
  Locale? fromJson(json) => const TypedNullableLocaleConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) => const TypedNullableLocaleConverter().toJson(object);
}

class TypedNullableLocaleConverter
    extends JsonConverter<Locale?, Map<String, dynamic>?> {
  const TypedNullableLocaleConverter();
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

class LocaleConverter extends JsonConverter<Locale, dynamic> {
  const LocaleConverter();

  @override
  Locale fromJson(json) =>
      const TypedLocaleConverter().fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedLocaleConverter().toJson(object);
}

class TypedLocaleConverter extends JsonConverter<Locale, Map<String, dynamic>> {
  const TypedLocaleConverter();
  @override
  Locale fromJson(Map<String, dynamic> json) {
    return const NullableLocaleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Locale value) {
    return const NullableLocaleConverter().toJson(value)!;
  }
}
