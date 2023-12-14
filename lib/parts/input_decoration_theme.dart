part of theme_json_converter;

class NullableInputDecorationThemeConverter
    extends JsonConverter<InputDecorationTheme?, dynamic> {
  const NullableInputDecorationThemeConverter();

  @override
  InputDecorationTheme? fromJson(json) =>
      const TypedNullableInputDecorationThemeConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableInputDecorationThemeConverter().toJson(object);
}

class TypedNullableInputDecorationThemeConverter
    extends JsonConverter<InputDecorationTheme?, Map<String, dynamic>?> {
  const TypedNullableInputDecorationThemeConverter();
  @override
  InputDecorationTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return InputDecorationTheme(
      alignLabelWithHint: (json['alignLabelWithHint'] as bool),
      border: const NullableInputBorderConverter().fromJson(
        json['border'],
      ),
      contentPadding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['contentPadding'],
      ),
      counterStyle: const NullableTextStyleConverter().fromJson(
        json['counterStyle'],
      ),
      disabledBorder: const NullableInputBorderConverter().fromJson(
        json['disabledBorder'],
      ),
      enabledBorder: const NullableInputBorderConverter().fromJson(
        json['enabledBorder'],
      ),
      errorBorder: const NullableInputBorderConverter().fromJson(
        json['errorBorder'],
      ),
      errorMaxLines: (json['errorMaxLines'] as num?)?.toInt(),
      errorStyle: const NullableTextStyleConverter().fromJson(
        json['errorStyle'],
      ),
      fillColor: const NullableColorConverter().fromJson(
        json['fillColor'],
      ),
      filled: (json['filled'] as bool),
      floatingLabelBehavior:
          const NullableFloatingLabelBehaviorConverter().fromJson(
                json['floatingLabelBehavior'],
              ) ??
              FloatingLabelBehavior.auto,
      focusColor: const NullableColorConverter().fromJson(
        json['focusColor'],
      ),
      focusedBorder: const NullableInputBorderConverter().fromJson(
        json['focusedBorder'],
      ),
      focusedErrorBorder: const NullableInputBorderConverter().fromJson(
        json['focusedErrorBorder'],
      ),
      // @deprecated
      // hasFloatingPlaceholder
      helperMaxLines: (json['helperMaxLines'] as num?)?.toInt(),
      helperStyle: const NullableTextStyleConverter().fromJson(
        json['helperStyle'],
      ),
      hintStyle: const NullableTextStyleConverter().fromJson(
        json['hintStyle'],
      ),
      hoverColor: const NullableColorConverter().fromJson(
        json['hoverColor'],
      ),
      isCollapsed: (json['isCollapsed'] as bool),
      isDense: (json['isDense'] as bool),
      labelStyle: const NullableTextStyleConverter().fromJson(
        json['labelStyle'],
      ),
      prefixStyle: const NullableTextStyleConverter().fromJson(
        json['prefixStyle'],
      ),
      suffixStyle: const NullableTextStyleConverter().fromJson(
        json['suffixStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(InputDecorationTheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'alignLabelWithHint': value.alignLabelWithHint,
      'border': const NullableInputBorderConverter().toJson(value.border),
      'contentPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.contentPadding as EdgeInsets?),
      'counterStyle':
          const NullableTextStyleConverter().toJson(value.counterStyle),
      'disabledBorder':
          const NullableInputBorderConverter().toJson(value.disabledBorder),
      'enabledBorder':
          const NullableInputBorderConverter().toJson(value.enabledBorder),
      'errorBorder':
          const NullableInputBorderConverter().toJson(value.errorBorder),
      'errorMaxLines': value.errorMaxLines,
      'errorStyle': const NullableTextStyleConverter().toJson(value.errorStyle),
      'fillColor': const NullableColorConverter().toJson(value.fillColor),
      'filled': value.filled,
      'floatingLabelBehavior':
          const NullableFloatingLabelBehaviorConverter().toJson(
        value.floatingLabelBehavior,
      ),
      'focusColor': const NullableColorConverter().toJson(value.focusColor),
      'focusedBorder':
          const NullableInputBorderConverter().toJson(value.focusedBorder),
      'focusedErrorBorder':
          const NullableInputBorderConverter().toJson(value.focusedErrorBorder),
      'helperMaxLines': value.helperMaxLines,
      'helperStyle':
          const NullableTextStyleConverter().toJson(value.helperStyle),
      'hintStyle': const NullableTextStyleConverter().toJson(value.hintStyle),
      'hoverColor': const NullableColorConverter().toJson(value.hoverColor),
      'isCollapsed': value.isCollapsed,
      'isDense': value.isDense,
      'labelStyle': const NullableTextStyleConverter().toJson(value.labelStyle),
      'prefixStyle':
          const NullableTextStyleConverter().toJson(value.prefixStyle),
      'suffixStyle':
          const NullableTextStyleConverter().toJson(value.suffixStyle),
    };

    throw 'Json_Unsuported_Value';
  }
}

class InputDecorationThemeConverter
    extends JsonConverter<InputDecorationTheme, dynamic> {
  const InputDecorationThemeConverter();

  @override
  InputDecorationTheme fromJson(json) =>
      const TypedInputDecorationThemeConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedInputDecorationThemeConverter().toJson(object);
}

class TypedInputDecorationThemeConverter
    extends JsonConverter<InputDecorationTheme, Map<String, dynamic>> {
  const TypedInputDecorationThemeConverter();
  @override
  InputDecorationTheme fromJson(Map<String, dynamic> json) {
    return const NullableInputDecorationThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(InputDecorationTheme value) {
    return const NullableInputDecorationThemeConverter().toJson(value)!;
  }
}
