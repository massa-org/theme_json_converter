part of theme_json_converter;

class NullableTabBarIndicatorSizeConverter
    extends JsonConverter<TabBarIndicatorSize?, String?> {
  const NullableTabBarIndicatorSizeConverter();

  @override
  TabBarIndicatorSize? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'label':
        return TabBarIndicatorSize.label;

      case 'tab':
        return TabBarIndicatorSize.tab;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(TabBarIndicatorSize? value) {
    if (value == null) return null;

    switch (value) {
      case TabBarIndicatorSize.label:
        return 'label';
        break;

      case TabBarIndicatorSize.tab:
        return 'tab';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class TabBarIndicatorSizeConverter
    extends JsonConverter<TabBarIndicatorSize, String> {
  const TabBarIndicatorSizeConverter();

  @override
  TabBarIndicatorSize fromJson(String json) {
    return const NullableTabBarIndicatorSizeConverter().fromJson(json)!;
  }

  @override
  String toJson(TabBarIndicatorSize value) {
    return const NullableTabBarIndicatorSizeConverter().toJson(value)!;
  }
}
