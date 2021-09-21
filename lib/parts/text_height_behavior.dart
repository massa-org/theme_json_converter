part of theme_json_converter;

class NullableTextHeightBehaviorConverter
    extends JsonConverter<TextHeightBehavior?, Map<String, dynamic>?> {
  const NullableTextHeightBehaviorConverter();

  @override
  TextHeightBehavior? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TextHeightBehavior(
      applyHeightToFirstAscent: json['applyHeightToFirstAscent'] == null
          ? true
          : (json['applyHeightToLastDescent'] as bool),
      applyHeightToLastDescent: json['applyHeightToLastDescent'] == null
          ? true
          : (json['applyHeightToLastDescent'] as bool),
    );
  }

  @override
  Map<String, dynamic>? toJson(TextHeightBehavior? value) {
    if (value == null) return null;

    return {
      'applyHeightToFirstAscent': value.applyHeightToFirstAscent,
      'applyHeightToLastDescent': value.applyHeightToLastDescent,
    };

    throw 'Json_Unsuported_Value';
  }
}

class TextHeightBehaviorConverter
    extends JsonConverter<TextHeightBehavior, Map<String, dynamic>> {
  const TextHeightBehaviorConverter();

  @override
  TextHeightBehavior fromJson(Map<String, dynamic> json) {
    return const NullableTextHeightBehaviorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TextHeightBehavior value) {
    return const NullableTextHeightBehaviorConverter().toJson(value)!;
  }
}
