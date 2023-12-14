part of theme_json_converter;

class NullableDialogThemeConverter
    extends JsonConverter<DialogTheme?, dynamic> {
  const NullableDialogThemeConverter();

  @override
  DialogTheme? fromJson(json) => const TypedNullableDialogThemeConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableDialogThemeConverter().toJson(object);
}

class TypedNullableDialogThemeConverter
    extends JsonConverter<DialogTheme?, Map<String, dynamic>?> {
  const TypedNullableDialogThemeConverter();
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
  Map<String, dynamic>? toJson(DialogTheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'contentTextStyle':
          const NullableTextStyleConverter().toJson(value.contentTextStyle),
      'elevation': value.elevation,
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
      'titleTextStyle':
          const NullableTextStyleConverter().toJson(value.titleTextStyle),
    };

    throw 'Json_Unsuported_Value';
  }
}

class DialogThemeConverter extends JsonConverter<DialogTheme, dynamic> {
  const DialogThemeConverter();

  @override
  DialogTheme fromJson(json) => const TypedDialogThemeConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedDialogThemeConverter().toJson(object);
}

class TypedDialogThemeConverter
    extends JsonConverter<DialogTheme, Map<String, dynamic>> {
  const TypedDialogThemeConverter();
  @override
  DialogTheme fromJson(Map<String, dynamic> json) {
    return const NullableDialogThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(DialogTheme value) {
    return const NullableDialogThemeConverter().toJson(value)!;
  }
}
