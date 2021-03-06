part of theme_json_converter;

class NullableAxisConverter extends JsonConverter<Axis?, String?> {
  const NullableAxisConverter();

  @override
  Axis? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'horizontal':
        return Axis.horizontal;

      case 'vertical':
        return Axis.vertical;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(Axis? object) {
    if (object == null) return null;

    switch (object) {
      case Axis.horizontal:
        return 'horizontal';

      case Axis.vertical:
        return 'vertical';
    }
  }
}

class AxisConverter extends JsonConverter<Axis, String> {
  const AxisConverter();

  @override
  Axis fromJson(String json) {
    return const NullableAxisConverter().fromJson(json)!;
  }

  @override
  String toJson(Axis object) {
    return const NullableAxisConverter().toJson(object)!;
  }
}
