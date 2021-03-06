part of theme_json_converter;

class NullableDialogThemeConverter
    extends JsonConverter<DialogTheme?, Map<String, dynamic>?> {
  const NullableDialogThemeConverter();

  @override
  DialogTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return DialogTheme(
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      contentTextStyle: const NullableTextStyleConverter().fromJson(
        json['contentTextStyle'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ),
      titleTextStyle: const NullableTextStyleConverter().fromJson(
        json['titleTextStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(DialogTheme? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'contentTextStyle':
          const NullableTextStyleConverter().toJson(object.contentTextStyle),
      'elevation': object.elevation,
      'shape': const NullableShapeBorderConverter().toJson(object.shape),
      'titleTextStyle':
          const NullableTextStyleConverter().toJson(object.titleTextStyle),
    };
  }
}

class DialogThemeConverter
    extends JsonConverter<DialogTheme, Map<String, dynamic>> {
  const DialogThemeConverter();

  @override
  DialogTheme fromJson(Map<String, dynamic> json) {
    return const NullableDialogThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(DialogTheme object) {
    return const NullableDialogThemeConverter().toJson(object)!;
  }
}
