part of theme_json_converter;

class NullableBoxShapeConverter extends JsonConverter<BoxShape?, String?> {
  const NullableBoxShapeConverter();

  @override
  BoxShape? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'circle':
        return BoxShape.circle;

      case 'rectangle':
        return BoxShape.rectangle;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(BoxShape? value) {
    if (value == null) return null;

    switch (value) {
      case BoxShape.circle:
        return 'circle';
        break;

      case BoxShape.rectangle:
        return 'rectangle';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class BoxShapeConverter extends JsonConverter<BoxShape, String> {
  const BoxShapeConverter();

  @override
  BoxShape fromJson(String json) {
    return const NullableBoxShapeConverter().fromJson(json)!;
  }

  @override
  String toJson(BoxShape value) {
    return const NullableBoxShapeConverter().toJson(value)!;
  }
}
