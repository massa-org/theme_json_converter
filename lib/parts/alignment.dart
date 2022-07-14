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
  String? toJson(Alignment? object) {
    if (object == null) return null;

    if (object.x == Alignment.bottomCenter.x &&
        object.y == Alignment.bottomCenter.y) {
      return 'bottomCenter';
    }
    if (object.x == Alignment.bottomLeft.x &&
        object.y == Alignment.bottomLeft.y) {
      return 'bottomLeft';
    }
    if (object.x == Alignment.bottomRight.x &&
        object.y == Alignment.bottomRight.y) {
      return 'bottomRight';
    }

    if (object.x == Alignment.center.x && object.y == Alignment.center.y) {
      return 'center';
    }
    if (object.x == Alignment.centerLeft.x &&
        object.y == Alignment.centerLeft.y) {
      return 'centerLeft';
    }
    if (object.x == Alignment.centerRight.x &&
        object.y == Alignment.centerRight.y) {
      return 'centerRight';
    }

    if (object.x == Alignment.topCenter.x &&
        object.y == Alignment.topCenter.y) {
      return 'topCenter';
    }
    if (object.x == Alignment.topLeft.x && object.y == Alignment.topLeft.y) {
      return 'topLeft';
    }
    if (object.x == Alignment.topRight.x && object.y == Alignment.topRight.y) {
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
  String toJson(Alignment object) {
    return const NullableAlignmentConverter().toJson(object)!;
  }
}
