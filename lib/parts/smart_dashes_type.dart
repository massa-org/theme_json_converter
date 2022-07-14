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
  String? toJson(SmartDashesType? object) {
    if (object == null) return null;

    switch (object) {
      case SmartDashesType.disabled:
        return 'disabled';
      case SmartDashesType.enabled:
        return 'enabled';
    }
  }
}

class SmartDashesTypeConverter extends JsonConverter<SmartDashesType, String> {
  const SmartDashesTypeConverter();

  @override
  SmartDashesType fromJson(String json) {
    return const NullableSmartDashesTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(SmartDashesType object) {
    return const NullableSmartDashesTypeConverter().toJson(object)!;
  }
}
