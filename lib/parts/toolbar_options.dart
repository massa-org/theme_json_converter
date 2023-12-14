part of theme_json_converter;

class NullableToolbarOptionsConverter
    extends JsonConverter<ToolbarOptions?, dynamic> {
  const NullableToolbarOptionsConverter();

  @override
  ToolbarOptions? fromJson(json) => const TypedNullableToolbarOptionsConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableToolbarOptionsConverter().toJson(object);
}

class TypedNullableToolbarOptionsConverter
    extends JsonConverter<ToolbarOptions?, Map<String, dynamic>?> {
  const TypedNullableToolbarOptionsConverter();
  @override
  ToolbarOptions? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ToolbarOptions(
      copy: (json['copy'] as bool),
      cut: (json['cut'] as bool),
      paste: (json['paste'] as bool),
      selectAll: (json['selectAll'] as bool),
    );
  }

  @override
  Map<String, dynamic>? toJson(ToolbarOptions? value) {
    if (value == null) return null;

    return {
      'copy': value.copy,
      'cut': value.cut,
      'paste': value.paste,
      'selectAll': value.selectAll,
    };

    throw 'Json_Unsuported_Value';
  }
}

class ToolbarOptionsConverter extends JsonConverter<ToolbarOptions, dynamic> {
  const ToolbarOptionsConverter();

  @override
  ToolbarOptions fromJson(json) => const TypedToolbarOptionsConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedToolbarOptionsConverter().toJson(object);
}

class TypedToolbarOptionsConverter
    extends JsonConverter<ToolbarOptions, Map<String, dynamic>> {
  const TypedToolbarOptionsConverter();
  @override
  ToolbarOptions fromJson(Map<String, dynamic> json) {
    return const NullableToolbarOptionsConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ToolbarOptions value) {
    return const NullableToolbarOptionsConverter().toJson(value)!;
  }
}
