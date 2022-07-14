part of theme_json_converter;

class NullableNotchedShapeConverter
    extends JsonConverter<NotchedShape?, String?> {
  const NullableNotchedShapeConverter();

  @override
  NotchedShape? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'circular':
        return const CircularNotchedRectangle();
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(NotchedShape? object) {
    if (object == null) return null;

    return 'circular';
  }
}

class NotchedShapeConverter extends JsonConverter<NotchedShape, String> {
  const NotchedShapeConverter();

  @override
  NotchedShape fromJson(String json) {
    return const NullableNotchedShapeConverter().fromJson(json)!;
  }

  @override
  String toJson(NotchedShape object) {
    return const NullableNotchedShapeConverter().toJson(object)!;
  }
}
