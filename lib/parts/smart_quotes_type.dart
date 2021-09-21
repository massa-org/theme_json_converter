part of theme_json_converter;

class NullableSmartQuotesTypeConverter
    extends JsonConverter<SmartQuotesType?, String?> {
  const NullableSmartQuotesTypeConverter();

  @override
  SmartQuotesType? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'disabled':
        return SmartQuotesType.disabled;

      case 'enabled':
        return SmartQuotesType.enabled;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(SmartQuotesType? value) {
    if (value == null) return null;

    switch (value) {
      case SmartQuotesType.disabled:
        return 'disabled';
        break;
      case SmartQuotesType.enabled:
        return 'enabled';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class SmartQuotesTypeConverter extends JsonConverter<SmartQuotesType, String> {
  const SmartQuotesTypeConverter();

  @override
  SmartQuotesType fromJson(String json) {
    return const NullableSmartQuotesTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(SmartQuotesType value) {
    return const NullableSmartQuotesTypeConverter().toJson(value)!;
  }
}
