part of theme_json_converter;

class NullablePageTransitionsBuilderConverter
    extends JsonConverter<PageTransitionsBuilder?, String?> {
  const NullablePageTransitionsBuilderConverter();

  @override
  PageTransitionsBuilder? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'cupertino':
        return const CupertinoPageTransitionsBuilder();

      case 'fadeUpwards':
        return const FadeUpwardsPageTransitionsBuilder();

      case 'openUpwards':
        return const OpenUpwardsPageTransitionsBuilder();

      case 'zoom':
        return const ZoomPageTransitionsBuilder();
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(PageTransitionsBuilder? value) {
    if (value == null) return null;

    String? result;

    if (value is CupertinoPageTransitionsBuilder) {
      return 'cupertino';
    } else if (value is FadeUpwardsPageTransitionsBuilder) {
      return 'fadeUpwards';
    } else if (value is OpenUpwardsPageTransitionsBuilder) {
      return 'openUpwards';
    } else if (value is ZoomPageTransitionsBuilder) {
      return 'zoom';
    }

    throw 'Json_Unsuported_Value';
  }
}

class PageTransitionsBuilderConverter
    extends JsonConverter<PageTransitionsBuilder, String> {
  const PageTransitionsBuilderConverter();

  @override
  PageTransitionsBuilder fromJson(String json) {
    return const NullablePageTransitionsBuilderConverter().fromJson(json)!;
  }

  @override
  String toJson(PageTransitionsBuilder value) {
    return const NullablePageTransitionsBuilderConverter().toJson(value)!;
  }
}
