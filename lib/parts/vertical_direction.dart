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
  String? toJson(VerticalDirection? object) {
    if (object == null) return null;

    switch (object) {
      case VerticalDirection.down:
        return 'down';
      case VerticalDirection.up:
        return 'up';
    }
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
  String toJson(VerticalDirection object) {
    return const NullableVerticalDirectionConverter().toJson(object)!;
  }
}
