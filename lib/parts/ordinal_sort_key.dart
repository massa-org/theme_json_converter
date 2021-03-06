part of theme_json_converter;

class NullableOrdinalSortKeyConverter
    extends JsonConverter<OrdinalSortKey?, Map<String, dynamic>?> {
  const NullableOrdinalSortKeyConverter();

  @override
  OrdinalSortKey? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return OrdinalSortKey(
      (json['order'] as num).toDouble(),
      name: json['name'],
    );
  }

  @override
  Map<String, dynamic>? toJson(OrdinalSortKey? object) {
    if (object == null) return null;

    return {
      'name': object.name,
      'order': object.order,
    };
  }
}

class OrdinalSortKeyConverter
    extends JsonConverter<OrdinalSortKey, Map<String, dynamic>> {
  const OrdinalSortKeyConverter();

  @override
  OrdinalSortKey fromJson(Map<String, dynamic> json) {
    return const NullableOrdinalSortKeyConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(OrdinalSortKey object) {
    return const NullableOrdinalSortKeyConverter().toJson(object)!;
  }
}
