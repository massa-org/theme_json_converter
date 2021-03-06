part of theme_json_converter;

class NullableTextSelectionThemeDataConverter
    extends JsonConverter<TextSelectionThemeData?, Map<String, dynamic>?> {
  const NullableTextSelectionThemeDataConverter();

  @override
  TextSelectionThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TextSelectionThemeData(
      cursorColor: const NullableColorConverter().fromJson(
        json['cursorColor'],
      ),
      selectionColor: const NullableColorConverter().fromJson(
        json['selectionColor'],
      ),
      selectionHandleColor: const NullableColorConverter().fromJson(
        json['selectionHandleColor'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(TextSelectionThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'cursorColor': const NullableColorConverter().toJson(
        object.cursorColor,
      ),
      'selectionColor': const NullableColorConverter().toJson(
        object.selectionColor,
      ),
      'selectionHandleColor': const NullableColorConverter().toJson(
        object.selectionHandleColor,
      ),
    };
  }
}

class TextSelectionThemeDataConverter
    extends JsonConverter<TextSelectionThemeData, Map<String, dynamic>> {
  const TextSelectionThemeDataConverter();

  @override
  TextSelectionThemeData fromJson(Map<String, dynamic> json) {
    return const NullableTextSelectionThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TextSelectionThemeData object) {
    return const NullableTextSelectionThemeDataConverter().toJson(object)!;
  }
}
