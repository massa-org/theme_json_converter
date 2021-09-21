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
  Map<String, dynamic>? toJson(OutlinedBorder? value) {
    if (value == null) return null;

    if (value is BeveledRectangleBorder) {
      return <String, dynamic>{
        'borderRadius': const NullableBorderRadiusConverter()
            .toJson(value.borderRadius as BorderRadius?),
        'side': const NullableBorderSideConverter().toJson(value.side),
        'type': 'beveled',
      };
    } else if (value is CircleBorder) {
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

class OutlinedBorderConverter
    extends JsonConverter<OutlinedBorder, Map<String, dynamic>> {
  const OutlinedBorderConverter();

  @override
  OutlinedBorder fromJson(Map<String, dynamic> json) {
    return const NullableOutlinedBorderConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(OutlinedBorder value) {
    return const NullableOutlinedBorderConverter().toJson(value)!;
  }
}
