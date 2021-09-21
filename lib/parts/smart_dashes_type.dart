part of theme_json_converter;

class NullableSmartDashesTypeConverter
    extends JsonConverter<SmartDashesType?, String?> {
  const NullableSmartDashesTypeConverter();

  @override
  SmartDashesType? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'disabled':
        return SmartDashesType.disabled;

      case 'enabled':
        return SmartDashesType.enabled;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(SmartDashesType? value) {
    if (value == null) return null;

    switch (value) {
      case SmartDashesType.disabled:
        return 'disabled';
        break;
      case SmartDashesType.enabled:
        return 'enabled';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class SmartDashesTypeConverter extends JsonConverter<SmartDashesType, String> {
  const SmartDashesTypeConverter();

  @override
  SmartDashesType fromJson(String json) {
    return const NullableSmartDashesTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(SmartDashesType value) {
    return const NullableSmartDashesTypeConverter().toJson(value)!;
  }
}
