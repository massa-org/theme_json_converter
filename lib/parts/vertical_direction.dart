part of theme_json_converter;

class NullableVerticalDirectionConverter
    extends JsonConverter<VerticalDirection?, String?> {
  const NullableVerticalDirectionConverter();

  @override
  VerticalDirection? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'down':
        return VerticalDirection.down;

      case 'up':
        return VerticalDirection.up;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(VerticalDirection? value) {
    if (value == null) return null;

    switch (value) {
      case VerticalDirection.down:
        return 'down';
        break;
      case VerticalDirection.up:
        return 'up';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class VerticalDirectionConverter
    extends JsonConverter<VerticalDirection, String> {
  const VerticalDirectionConverter();

  @override
  VerticalDirection fromJson(String json) {
    return const NullableVerticalDirectionConverter().fromJson(json)!;
  }

  @override
  String toJson(VerticalDirection value) {
    return const NullableVerticalDirectionConverter().toJson(value)!;
  }
}
