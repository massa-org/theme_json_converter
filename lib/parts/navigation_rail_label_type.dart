part of theme_json_converter;

class NullableNavigationRailLabelTypeConverter
    extends JsonConverter<NavigationRailLabelType?, String?> {
  const NullableNavigationRailLabelTypeConverter();

  @override
  NavigationRailLabelType? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'all':
        return NavigationRailLabelType.all;

      case 'none':
        return NavigationRailLabelType.none;

      case 'selected':
        return NavigationRailLabelType.selected;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(NavigationRailLabelType? object) {
    if (object == null) return null;

    switch (object) {
      case NavigationRailLabelType.all:
        return 'all';

      case NavigationRailLabelType.none:
        return 'none';

      case NavigationRailLabelType.selected:
        return 'selected';
    }
  }
}

class NavigationRailLabelTypeConverter
    extends JsonConverter<NavigationRailLabelType, String> {
  const NavigationRailLabelTypeConverter();

  @override
  NavigationRailLabelType fromJson(String json) {
    return const NullableNavigationRailLabelTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(NavigationRailLabelType object) {
    return const NullableNavigationRailLabelTypeConverter().toJson(object)!;
  }
}
