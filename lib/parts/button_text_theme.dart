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
  String? toJson(ButtonTextTheme? object) {
    if (object == null) return null;

    switch (object) {
      case ButtonTextTheme.accent:
        return 'accent';
      case ButtonTextTheme.normal:
        return 'normal';
      case ButtonTextTheme.primary:
        return 'primary';
    }
  }
}

class ButtonTextThemeConverter extends JsonConverter<ButtonTextTheme, String> {
  const ButtonTextThemeConverter();

  @override
  ButtonTextTheme fromJson(String json) {
    return const NullableButtonTextThemeConverter().fromJson(json)!;
  }

  @override
  String toJson(ButtonTextTheme object) {
    return const NullableButtonTextThemeConverter().toJson(object)!;
  }
}
