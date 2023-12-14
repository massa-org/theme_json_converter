part of theme_json_converter;

class NullablePageTransitionsThemeConverter
    extends JsonConverter<PageTransitionsTheme?, dynamic> {
  const NullablePageTransitionsThemeConverter();

  @override
  PageTransitionsTheme? fromJson(json) =>
      const TypedNullablePageTransitionsThemeConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullablePageTransitionsThemeConverter().toJson(object);
}

class TypedNullablePageTransitionsThemeConverter
    extends JsonConverter<PageTransitionsTheme?, Map<String, dynamic>?> {
  const TypedNullablePageTransitionsThemeConverter();
  @override
  PageTransitionsTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    var builders = <TargetPlatform, PageTransitionsBuilder>{};
    json['builders']?.forEach(
      (key, json) =>
          builders[const NullableTargetPlatformConverter().fromJson(key)!] =
              const PageTransitionsBuilderConverter().fromJson(json),
    );

    return PageTransitionsTheme(
      builders: builders,
    );
  }

  @override
  Map<String, dynamic>? toJson(PageTransitionsTheme? value) {
    if (value == null) return null;

    var builders = <String?, String?>{};
    value.builders.forEach(
      (key, value) =>
          builders[const NullableTargetPlatformConverter().toJson(key)] =
              const PageTransitionsBuilderConverter().toJson(
        value,
      ),
    );

    return {
      'builders': builders,
    };
  }
}

class PageTransitionsThemeConverter
    extends JsonConverter<PageTransitionsTheme, dynamic> {
  const PageTransitionsThemeConverter();

  @override
  PageTransitionsTheme fromJson(json) =>
      const TypedPageTransitionsThemeConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedPageTransitionsThemeConverter().toJson(object);
}

class TypedPageTransitionsThemeConverter
    extends JsonConverter<PageTransitionsTheme, Map<String, dynamic>> {
  const TypedPageTransitionsThemeConverter();
  @override
  PageTransitionsTheme fromJson(Map<String, dynamic> json) {
    return const NullablePageTransitionsThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(PageTransitionsTheme value) {
    return const NullablePageTransitionsThemeConverter().toJson(value)!;
  }
}
