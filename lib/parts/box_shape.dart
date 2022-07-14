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
  String? toJson(BoxShape? object) {
    if (object == null) return null;

    switch (object) {
      case BoxShape.circle:
        return 'circle';

      case BoxShape.rectangle:
        return 'rectangle';
    }
  }
}

class BoxShapeConverter extends JsonConverter<BoxShape, String> {
  const BoxShapeConverter();

  @override
  BoxShape fromJson(String json) {
    return const NullableBoxShapeConverter().fromJson(json)!;
  }

  @override
  String toJson(BoxShape object) {
    return const NullableBoxShapeConverter().toJson(object)!;
  }
}
