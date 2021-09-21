part of theme_json_converter;

class NullableAlignmentConverter extends JsonConverter<Alignment?, String?> {
  const NullableAlignmentConverter();

  @override
  Alignment? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'bottomCenter':
        return Alignment.bottomCenter;

      case 'bottomLeft':
        return Alignment.bottomLeft;

      case 'bottomRight':
        return Alignment.bottomRight;

      case 'center':
        return Alignment.center;

      case 'centerLeft':
        return Alignment.centerLeft;

      case 'centerRight':
        return Alignment.centerRight;

      case 'topCenter':
        return Alignment.topCenter;

      case 'topLeft':
        return Alignment.topLeft;

      case 'topRight':
        return Alignment.topRight;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(Alignment? value) {
    if (value == null) return null;

    if (value.x == Alignment.bottomCenter.x &&
        value.y == Alignment.bottomCenter.y) {
      return 'bottomCenter';
    }
    if (value.x == Alignment.bottomLeft.x &&
        value.y == Alignment.bottomLeft.y) {
      return 'bottomLeft';
    }
    if (value.x == Alignment.bottomRight.x &&
        value.y == Alignment.bottomRight.y) {
      return 'bottomRight';
    }

    if (value.x == Alignment.center.x && value.y == Alignment.center.y) {
      return 'center';
    }
    if (value.x == Alignment.centerLeft.x &&
        value.y == Alignment.centerLeft.y) {
      return 'centerLeft';
    }
    if (value.x == Alignment.centerRight.x &&
        value.y == Alignment.centerRight.y) {
      return 'centerRight';
    }

    if (value.x == Alignment.topCenter.x && value.y == Alignment.topCenter.y) {
      return 'topCenter';
    }
    if (value.x == Alignment.topLeft.x && value.y == Alignment.topLeft.y) {
      return 'topLeft';
    }
    if (value.x == Alignment.topRight.x && value.y == Alignment.topRight.y) {
      return 'topRight';
    }

    throw 'Json_Unsuported_Value';
  }
}

class AlignmentConverter extends JsonConverter<Alignment, String> {
  const AlignmentConverter();

  @override
  Alignment fromJson(String json) {
    return const NullableAlignmentConverter().fromJson(json)!;
  }

  @override
  String toJson(Alignment value) {
    return const NullableAlignmentConverter().toJson(value)!;
  }
}
