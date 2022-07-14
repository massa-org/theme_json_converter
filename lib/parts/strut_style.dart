part of theme_json_converter;

class NullableStrutStyleConverter
    extends JsonConverter<StrutStyle?, Map<String, dynamic>?> {
  const NullableStrutStyleConverter();

  @override
  StrutStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return StrutStyle(
      fontFamily: json['fontFamily'],
      fontFamilyFallback: _decodeStringList(
        json['fontFamilyFallback'],
        (json) => json,
      ),
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      fontStyle: const NullableFontStyleConverter().fromJson(
        json['fontStyle'],
      ),
      fontWeight: const NullableFontWeightConverter().fromJson(
        json['fontWeight'],
      ),
      forceStrutHeight: json['forceStrutHeight'] == null
          ? null
          : (json['forceStrutHeight'] as bool),
      height: (json['height'] as num?)?.toDouble(),
      leading: (json['leading'] as num?)?.toDouble(),
      package: json['package'],
    );
  }

  @override
  Map<String, dynamic>? toJson(StrutStyle? object) {
    if (object == null) return null;

    return {
      'fontFamily': object.fontFamily,
      'fontFamilyFallback': object.fontFamilyFallback,
      'fontSize': object.fontSize,
      'fontStyle': const NullableFontStyleConverter().toJson(object.fontStyle),
      'fontWeight':
          const NullableFontWeightConverter().toJson(object.fontWeight),
      'forceStrutHeight': object.forceStrutHeight,
      'height': object.height,
      'leading': object.leading,
    };
  }
}

class StrutStyleConverter
    extends JsonConverter<StrutStyle, Map<String, dynamic>> {
  const StrutStyleConverter();

  @override
  StrutStyle fromJson(Map<String, dynamic> json) {
    return const NullableStrutStyleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(StrutStyle object) {
    return const NullableStrutStyleConverter().toJson(object)!;
  }
}
