part of theme_json_converter;

class NullablePageTransitionsThemeConverter
    extends JsonConverter<PageTransitionsTheme?, Map<String, dynamic>?> {
  const NullablePageTransitionsThemeConverter();

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
  Map<String, dynamic>? toJson(PageTransitionsTheme? object) {
    if (object == null) return null;

    var builders = <String?, String?>{};
    object.builders.forEach(
      (key, object) =>
          builders[const NullableTargetPlatformConverter().toJson(key)] =
              const PageTransitionsBuilderConverter().toJson(
        object,
      ),
    );

    return {
      'builders': builders,
    };
  }
}

class PageTransitionsThemeConverter
    extends JsonConverter<PageTransitionsTheme, Map<String, dynamic>> {
  const PageTransitionsThemeConverter();

  @override
  PageTransitionsTheme fromJson(Map<String, dynamic> json) {
    return const NullablePageTransitionsThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(PageTransitionsTheme object) {
    return const NullablePageTransitionsThemeConverter().toJson(object)!;
  }
}
