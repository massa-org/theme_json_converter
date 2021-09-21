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
  String? toJson(NavigationRailLabelType? value) {
    if (value == null) return null;

    switch (value) {
      case NavigationRailLabelType.all:
        return 'all';
        break;

      case NavigationRailLabelType.none:
        return 'none';
        break;

      case NavigationRailLabelType.selected:
        return 'selected';
        break;
    }

    throw 'Json_Unsuported_Value';
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
  String toJson(NavigationRailLabelType value) {
    return const NullableNavigationRailLabelTypeConverter().toJson(value)!;
  }
}
