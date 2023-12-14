part of theme_json_converter;

class NullableTextHeightBehaviorConverter
    extends JsonConverter<TextHeightBehavior?, dynamic> {
  const NullableTextHeightBehaviorConverter();

  @override
  TextHeightBehavior? fromJson(json) =>
      const TypedNullableTextHeightBehaviorConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableTextHeightBehaviorConverter().toJson(object);
}

class TypedNullableTextHeightBehaviorConverter
    extends JsonConverter<TextHeightBehavior?, Map<String, dynamic>?> {
  const TypedNullableTextHeightBehaviorConverter();
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
    extends JsonConverter<TextHeightBehavior, dynamic> {
  const TextHeightBehaviorConverter();

  @override
  TextHeightBehavior fromJson(json) => const TypedTextHeightBehaviorConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedTextHeightBehaviorConverter().toJson(object);
}

class TypedTextHeightBehaviorConverter
    extends JsonConverter<TextHeightBehavior, Map<String, dynamic>> {
  const TypedTextHeightBehaviorConverter();
  @override
  TextHeightBehavior fromJson(Map<String, dynamic> json) {
    return const NullableTextHeightBehaviorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TextHeightBehavior value) {
    return const NullableTextHeightBehaviorConverter().toJson(value)!;
  }
}
