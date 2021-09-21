part of theme_json_converter;

class NullableButtonTextThemeConverter
    extends JsonConverter<ButtonTextTheme?, String?> {
  const NullableButtonTextThemeConverter();

  @override
  ButtonTextTheme? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'accent':
        return ButtonTextTheme.accent;

      case 'normal':
        return ButtonTextTheme.normal;

      case 'primary':
        return ButtonTextTheme.primary;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(ButtonTextTheme? value) {
    if (value == null) return null;

    switch (value) {
      case ButtonTextTheme.accent:
        return 'accent';
        break;
      case ButtonTextTheme.normal:
        return 'normal';
        break;
      case ButtonTextTheme.primary:
        return 'primary';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class ButtonTextThemeConverter extends JsonConverter<ButtonTextTheme, String> {
  const ButtonTextThemeConverter();

  @override
  ButtonTextTheme fromJson(String json) {
    return const NullableButtonTextThemeConverter().fromJson(json)!;
  }

  @override
  String toJson(ButtonTextTheme value) {
    return const NullableButtonTextThemeConverter().toJson(value)!;
  }
}
