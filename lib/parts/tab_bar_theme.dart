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
  Map<String, dynamic>? toJson(TabBarTheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'indicatorSize': const NullableTabBarIndicatorSizeConverter()
          .toJson(value.indicatorSize),
      'labelPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.labelPadding as EdgeInsets?),
      'labelColor': const NullableColorConverter().toJson(value.labelColor),
      'labelStyle': const NullableTextStyleConverter().toJson(value.labelStyle),
      'unselectedLabelColor':
          const NullableColorConverter().toJson(value.unselectedLabelColor),
      'unselectedLabelStyle':
          const NullableTextStyleConverter().toJson(value.unselectedLabelStyle),
    };

    throw 'Json_Unsuported_Value';
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
  Map<String, dynamic> toJson(TabBarTheme value) {
    return const NullableTabBarThemeConverter().toJson(value)!;
  }
}
