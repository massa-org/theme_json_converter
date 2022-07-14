part of theme_json_converter;

class NullableTabBarThemeConverter
    extends JsonConverter<TabBarTheme?, Map<String, dynamic>?> {
  const NullableTabBarThemeConverter();

  @override
  TabBarTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TabBarTheme(
      // @unencodable
      // indicator
      indicatorSize: const NullableTabBarIndicatorSizeConverter().fromJson(
        json['indicatorSize'],
      ),
      labelPadding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['labelPadding'],
      ),
      labelColor: const NullableColorConverter().fromJson(
        json['labelColor'],
      ),
      labelStyle: const NullableTextStyleConverter().fromJson(
        json['labelStyle'],
      ),
      unselectedLabelColor: const NullableColorConverter().fromJson(
        json['unselectedLabelColor'],
      ),
      unselectedLabelStyle: const NullableTextStyleConverter().fromJson(
        json['unselectedLabelStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(TabBarTheme? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'indicatorSize': const NullableTabBarIndicatorSizeConverter()
          .toJson(object.indicatorSize),
      'labelPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.labelPadding as EdgeInsets?),
      'labelColor': const NullableColorConverter().toJson(object.labelColor),
      'labelStyle':
          const NullableTextStyleConverter().toJson(object.labelStyle),
      'unselectedLabelColor':
          const NullableColorConverter().toJson(object.unselectedLabelColor),
      'unselectedLabelStyle': const NullableTextStyleConverter()
          .toJson(object.unselectedLabelStyle),
    };
  }
}

class TabBarThemeConverter
    extends JsonConverter<TabBarTheme, Map<String, dynamic>> {
  const TabBarThemeConverter();

  @override
  TabBarTheme fromJson(Map<String, dynamic> json) {
    return const NullableTabBarThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TabBarTheme object) {
    return const NullableTabBarThemeConverter().toJson(object)!;
  }
}
