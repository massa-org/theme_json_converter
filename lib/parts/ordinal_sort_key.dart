part of theme_json_converter;

class NullableOrdinalSortKeyConverter
    extends JsonConverter<OrdinalSortKey?, dynamic> {
  const NullableOrdinalSortKeyConverter();

  @override
  OrdinalSortKey? fromJson(json) => const TypedNullableOrdinalSortKeyConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableOrdinalSortKeyConverter().toJson(object);
}

class TypedNullableOrdinalSortKeyConverter
    extends JsonConverter<OrdinalSortKey?, Map<String, dynamic>?> {
  const TypedNullableOrdinalSortKeyConverter();
  @override
  OrdinalSortKey? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return OrdinalSortKey(
      (json['order'] as num).toDouble(),
      name: json['name'],
    );
  }

  @override
  Map<String, dynamic>? toJson(OrdinalSortKey? value) {
    if (value == null) return null;

    return {
      'name': value.name,
      'order': value.order,
    };

    throw 'Json_Unsuported_Value';
  }
}

class OrdinalSortKeyConverter extends JsonConverter<OrdinalSortKey, dynamic> {
  const OrdinalSortKeyConverter();

  @override
  OrdinalSortKey fromJson(json) => const TypedOrdinalSortKeyConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedOrdinalSortKeyConverter().toJson(object);
}

class TypedOrdinalSortKeyConverter
    extends JsonConverter<OrdinalSortKey, Map<String, dynamic>> {
  const TypedOrdinalSortKeyConverter();
  @override
  OrdinalSortKey fromJson(Map<String, dynamic> json) {
    return const NullableOrdinalSortKeyConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(OrdinalSortKey value) {
    return const NullableOrdinalSortKeyConverter().toJson(value)!;
  }
}
