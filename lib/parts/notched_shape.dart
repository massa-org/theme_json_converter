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
  String? toJson(NotchedShape? value) {
    if (value == null) return null;

    return 'circular';

    throw 'Json_Unsuported_Value';
  }
}

class NotchedShapeConverter extends JsonConverter<NotchedShape, String> {
  const NotchedShapeConverter();

  @override
  NotchedShape fromJson(String json) {
    return const NullableNotchedShapeConverter().fromJson(json)!;
  }

  @override
  String toJson(NotchedShape value) {
    return const NullableNotchedShapeConverter().toJson(value)!;
  }
}
