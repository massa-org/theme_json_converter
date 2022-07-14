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
  String? toJson(TabBarIndicatorSize? object) {
    if (object == null) return null;

    switch (object) {
      case TabBarIndicatorSize.label:
        return 'label';

      case TabBarIndicatorSize.tab:
        return 'tab';
    }
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
  String toJson(TabBarIndicatorSize object) {
    return const NullableTabBarIndicatorSizeConverter().toJson(object)!;
  }
}
