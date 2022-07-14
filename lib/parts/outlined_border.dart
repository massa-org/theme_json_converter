part of theme_json_converter;

class NullableOutlinedBorderConverter
    extends JsonConverter<OutlinedBorder?, Map<String, dynamic>?> {
  const NullableOutlinedBorderConverter();

  @override
  OutlinedBorder? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];

    switch (type) {
      case 'beveled':
        return BeveledRectangleBorder(
          borderRadius: const NullableBorderRadiusConverter().fromJson(
                json['borderRadius'],
              ) ??
              BorderRadius.zero,
          side: const NullableBorderSideConverter().fromJson(
                json['side'],
              ) ??
              BorderSide.none,
        );

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
  Map<String, dynamic>? toJson(OutlinedBorder? object) {
    if (object == null) return null;

    if (object is BeveledRectangleBorder) {
      return <String, dynamic>{
        'borderRadius': const NullableBorderRadiusConverter()
            .toJson(object.borderRadius as BorderRadius?),
        'side': const NullableBorderSideConverter().toJson(object.side),
        'type': 'beveled',
      };
    } else if (object is CircleBorder) {
      return <String, dynamic>{
        'side': const NullableBorderSideConverter().toJson(object.side),
        'type': 'circle',
      };
    } else if (object is ContinuousRectangleBorder) {
      return <String, dynamic>{
        'borderRadius': const NullableBorderRadiusConverter()
            .toJson(object.borderRadius as BorderRadius?),
        'side': const NullableBorderSideConverter().toJson(object.side),
        'type': 'rectangle',
      };
    } else if (object is RoundedRectangleBorder) {
      return <String, dynamic>{
        'borderRadius': const NullableBorderRadiusConverter()
            .toJson(object.borderRadius as BorderRadius?),
        'side': const NullableBorderSideConverter().toJson(object.side),
        'type': 'rounded',
      };
    } else if (object is StadiumBorder) {
      return <String, dynamic>{
        'side': const NullableBorderSideConverter().toJson(object.side),
        'type': 'stadium',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class OutlinedBorderConverter
    extends JsonConverter<OutlinedBorder, Map<String, dynamic>> {
  const OutlinedBorderConverter();

  @override
  OutlinedBorder fromJson(Map<String, dynamic> json) {
    return const NullableOutlinedBorderConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(OutlinedBorder object) {
    return const NullableOutlinedBorderConverter().toJson(object)!;
  }
}
