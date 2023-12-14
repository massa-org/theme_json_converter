part of theme_json_converter;

class NullableShapeBorderConverter
    extends JsonConverter<ShapeBorder?, dynamic> {
  const NullableShapeBorderConverter();

  @override
  ShapeBorder? fromJson(json) => const TypedNullableShapeBorderConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableShapeBorderConverter().toJson(object);
}

class TypedNullableShapeBorderConverter
    extends JsonConverter<ShapeBorder?, Map<String, dynamic>?> {
  const TypedNullableShapeBorderConverter();
  @override
  ShapeBorder? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];

    switch (type) {
      case 'circle':
        return CircleBorder(
          side: const NullableBorderSideConverter().fromJson(
                json['side'],
              ) ??
              BorderSide.none,
        );

      case 'rectangle':
        return ContinuousRectangleBorder(
          borderRadius: const NullableBorderRadiusConverter().fromJson(
                json['borderRadius'],
              ) ??
              BorderRadius.zero,
          side: const NullableBorderSideConverter().fromJson(
                json['side'],
              ) ??
              BorderSide.none,
        );

      case 'rounded':
        return RoundedRectangleBorder(
          borderRadius: const NullableBorderRadiusConverter().fromJson(
                json['borderRadius'],
              ) ??
              BorderRadius.zero,
          side: const NullableBorderSideConverter().fromJson(
                json['side'],
              ) ??
              BorderSide.none,
        );

      case 'stadium':
        return StadiumBorder(
          side: const NullableBorderSideConverter().fromJson(
                json['side'],
              ) ??
              BorderSide.none,
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(ShapeBorder? value) {
    if (value == null) return null;

    if (value is CircleBorder) {
      return <String, dynamic>{
        'side': const NullableBorderSideConverter().toJson(value.side),
        'type': 'circle',
      };
    } else if (value is ContinuousRectangleBorder) {
      return <String, dynamic>{
        'borderRadius': const NullableBorderRadiusConverter()
            .toJson(value.borderRadius as BorderRadius?),
        'side': const NullableBorderSideConverter().toJson(value.side),
        'type': 'rectangle',
      };
    } else if (value is RoundedRectangleBorder) {
      return <String, dynamic>{
        'borderRadius': const NullableBorderRadiusConverter()
            .toJson(value.borderRadius as BorderRadius?),
        'side': const NullableBorderSideConverter().toJson(value.side),
        'type': 'rounded',
      };
    } else if (value is StadiumBorder) {
      return <String, dynamic>{
        'side': const NullableBorderSideConverter().toJson(value.side),
        'type': 'stadium',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class ShapeBorderConverter extends JsonConverter<ShapeBorder, dynamic> {
  const ShapeBorderConverter();

  @override
  ShapeBorder fromJson(json) => const TypedShapeBorderConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedShapeBorderConverter().toJson(object);
}

class TypedShapeBorderConverter
    extends JsonConverter<ShapeBorder, Map<String, dynamic>> {
  const TypedShapeBorderConverter();
  @override
  ShapeBorder fromJson(Map<String, dynamic> json) {
    return const NullableShapeBorderConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ShapeBorder value) {
    return const NullableShapeBorderConverter().toJson(value)!;
  }
}
