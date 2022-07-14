part of theme_json_converter;

class NullableInputDecorationThemeConverter
    extends JsonConverter<InputDecorationTheme?, Map<String, dynamic>?> {
  const NullableInputDecorationThemeConverter();

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
  Map<String, dynamic>? toJson(InputDecorationTheme? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'alignLabelWithHint': object.alignLabelWithHint,
      'border': const NullableInputBorderConverter().toJson(object.border),
      'contentPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.contentPadding as EdgeInsets?),
      'counterStyle':
          const NullableTextStyleConverter().toJson(object.counterStyle),
      'disabledBorder':
          const NullableInputBorderConverter().toJson(object.disabledBorder),
      'enabledBorder':
          const NullableInputBorderConverter().toJson(object.enabledBorder),
      'errorBorder':
          const NullableInputBorderConverter().toJson(object.errorBorder),
      'errorMaxLines': object.errorMaxLines,
      'errorStyle':
          const NullableTextStyleConverter().toJson(object.errorStyle),
      'fillColor': const NullableColorConverter().toJson(object.fillColor),
      'filled': object.filled,
      'floatingLabelBehavior':
          const NullableFloatingLabelBehaviorConverter().toJson(
        object.floatingLabelBehavior,
      ),
      'focusColor': const NullableColorConverter().toJson(object.focusColor),
      'focusedBorder':
          const NullableInputBorderConverter().toJson(object.focusedBorder),
      'focusedErrorBorder': const NullableInputBorderConverter()
          .toJson(object.focusedErrorBorder),
      'helperMaxLines': object.helperMaxLines,
      'helperStyle':
          const NullableTextStyleConverter().toJson(object.helperStyle),
      'hintStyle': const NullableTextStyleConverter().toJson(object.hintStyle),
      'hoverColor': const NullableColorConverter().toJson(object.hoverColor),
      'isCollapsed': object.isCollapsed,
      'isDense': object.isDense,
      'labelStyle':
          const NullableTextStyleConverter().toJson(object.labelStyle),
      'prefixStyle':
          const NullableTextStyleConverter().toJson(object.prefixStyle),
      'suffixStyle':
          const NullableTextStyleConverter().toJson(object.suffixStyle),
    };
  }
}

class InputDecorationThemeConverter
    extends JsonConverter<InputDecorationTheme, Map<String, dynamic>> {
  const InputDecorationThemeConverter();

  @override
  InputDecorationTheme fromJson(Map<String, dynamic> json) {
    return const NullableInputDecorationThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(InputDecorationTheme object) {
    return const NullableInputDecorationThemeConverter().toJson(object)!;
  }
}
