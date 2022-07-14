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
  Map<String, dynamic>? toJson(TextHeightBehavior? object) {
    if (object == null) return null;

    return {
      'applyHeightToFirstAscent': object.applyHeightToFirstAscent,
      'applyHeightToLastDescent': object.applyHeightToLastDescent,
    };
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
  Map<String, dynamic> toJson(TextHeightBehavior object) {
    return const NullableTextHeightBehaviorConverter().toJson(object)!;
  }
}
