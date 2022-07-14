part of theme_json_converter;

class NullableToolbarOptionsConverter
    extends JsonConverter<ToolbarOptions?, Map<String, dynamic>?> {
  const NullableToolbarOptionsConverter();

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
  Map<String, dynamic>? toJson(ToolbarOptions? object) {
    if (object == null) return null;

    return {
      'copy': object.copy,
      'cut': object.cut,
      'paste': object.paste,
      'selectAll': object.selectAll,
    };
  }
}

class ToolbarOptionsConverter
    extends JsonConverter<ToolbarOptions, Map<String, dynamic>> {
  const ToolbarOptionsConverter();

  @override
  ToolbarOptions fromJson(Map<String, dynamic> json) {
    return const NullableToolbarOptionsConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ToolbarOptions object) {
    return const NullableToolbarOptionsConverter().toJson(object)!;
  }
}
