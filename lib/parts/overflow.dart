part of theme_json_converter;

class NullableOverflowConverter extends JsonConverter<Overflow?, String?> {
  const NullableOverflowConverter();

  @override
  Overflow? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'clip':
        // ignore: deprecated_member_use
        return Overflow.clip;

      case 'visible':
        // ignore: deprecated_member_use
        return Overflow.visible;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(Overflow? value) {
    if (value == null) return null;

    switch (value) {
      // ignore: deprecated_member_use
      case Overflow.clip:
        return 'clip';
        break;

      // ignore: deprecated_member_use
      case Overflow.visible:
        return 'visible';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class OverflowConverter extends JsonConverter<Overflow, String> {
  const OverflowConverter();

  @override
  Overflow fromJson(String json) {
    return const NullableOverflowConverter().fromJson(json)!;
  }

  @override
  String toJson(Overflow value) {
    return const NullableOverflowConverter().toJson(value)!;
  }
}
