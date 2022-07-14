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
  String? toJson(PageTransitionsBuilder? object) {
    if (object == null) return null;

    if (object is CupertinoPageTransitionsBuilder) {
      return 'cupertino';
    } else if (object is FadeUpwardsPageTransitionsBuilder) {
      return 'fadeUpwards';
    } else if (object is OpenUpwardsPageTransitionsBuilder) {
      return 'openUpwards';
    } else if (object is ZoomPageTransitionsBuilder) {
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
  String toJson(PageTransitionsBuilder object) {
    return const NullablePageTransitionsBuilderConverter().toJson(object)!;
  }
}
