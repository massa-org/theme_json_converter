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
  Map<String, dynamic>? toJson(StrutStyle? value) {
    if (value == null) return null;

    return {
      'fontFamily': value.fontFamily,
      'fontFamilyFallback': value.fontFamilyFallback,
      'fontSize': value.fontSize,
      'fontStyle': const NullableFontStyleConverter().toJson(value.fontStyle),
      'fontWeight':
          const NullableFontWeightConverter().toJson(value.fontWeight),
      'forceStrutHeight': value.forceStrutHeight,
      'height': value.height,
      'leading': value.leading,
    };

    throw 'Json_Unsuported_Value';
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
  Map<String, dynamic> toJson(StrutStyle value) {
    return const NullableStrutStyleConverter().toJson(value)!;
  }
}
