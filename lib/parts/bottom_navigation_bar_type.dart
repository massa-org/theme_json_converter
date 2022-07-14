part of theme_json_converter;

class NullableBottomNavigationBarTypeConverter
    extends JsonConverter<BottomNavigationBarType?, String?> {
  const NullableBottomNavigationBarTypeConverter();

  @override
  BottomNavigationBarType? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'fixed':
        return BottomNavigationBarType.fixed;

      case 'shifting':
        return BottomNavigationBarType.shifting;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(BottomNavigationBarType? object) {
    if (object == null) return null;

    switch (object) {
      case BottomNavigationBarType.fixed:
        return 'fixed';
      case BottomNavigationBarType.shifting:
        return 'shifting';
    }
  }
}

class BottomNavigationBarTypeConverter
    extends JsonConverter<BottomNavigationBarType, String> {
  const BottomNavigationBarTypeConverter();

  @override
  BottomNavigationBarType fromJson(String json) {
    return const NullableBottomNavigationBarTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(BottomNavigationBarType object) {
    return const NullableBottomNavigationBarTypeConverter().toJson(object)!;
  }
}
