part of theme_json_converter;

class NullableTextThemeConverter
    extends JsonConverter<TextTheme?, Map<String, dynamic>?> {
  const NullableTextThemeConverter();

  @override
  TextTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TextTheme(
      // @deprecated
      // body1
      // @deprecated
      // body2
      bodyText1: const NullableTextStyleConverter().fromJson(
        json['bodyText1'],
      ),
      bodyText2: const NullableTextStyleConverter().fromJson(
        json['bodyText2'],
      ),
      button: const NullableTextStyleConverter().fromJson(
        json['button'],
      ),
      caption: const NullableTextStyleConverter().fromJson(
        json['caption'],
      ),
      // @deprecated
      // display1
      // @deprecated
      // display2
      // @deprecated
      // display3
      // @deprecated
      // display4
      // @deprecated
      // headline
      headline1: const NullableTextStyleConverter().fromJson(
        json['headline1'],
      ),
      headline2: const NullableTextStyleConverter().fromJson(
        json['headline2'],
      ),
      headline3: const NullableTextStyleConverter().fromJson(
        json['headline3'],
      ),
      headline4: const NullableTextStyleConverter().fromJson(
        json['headline4'],
      ),
      headline5: const NullableTextStyleConverter().fromJson(
        json['headline5'],
      ),
      headline6: const NullableTextStyleConverter().fromJson(
        json['headline6'],
      ),
      overline: const NullableTextStyleConverter().fromJson(
        json['overline'],
      ),
      // @deprecated
      // subhead
      subtitle1: const NullableTextStyleConverter().fromJson(
        json['subtitle1'],
      ),
      subtitle2: const NullableTextStyleConverter().fromJson(
        json['subtitle2'],
      ),
      // @deprecated
      // title
    );
  }

  @override
  Map<String, dynamic>? toJson(TextTheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'bodyText1': const NullableTextStyleConverter().toJson(value.bodyText1),
      'bodyText2': const NullableTextStyleConverter().toJson(value.bodyText2),
      'button': const NullableTextStyleConverter().toJson(value.button),
      'caption': const NullableTextStyleConverter().toJson(value.caption),
      'headline1': const NullableTextStyleConverter().toJson(value.headline1),
      'headline2': const NullableTextStyleConverter().toJson(value.headline2),
      'headline3': const NullableTextStyleConverter().toJson(value.headline3),
      'headline4': const NullableTextStyleConverter().toJson(value.headline4),
      'headline5': const NullableTextStyleConverter().toJson(value.headline5),
      'headline6': const NullableTextStyleConverter().toJson(value.headline6),
      'overline': const NullableTextStyleConverter().toJson(value.overline),
      'subtitle1': const NullableTextStyleConverter().toJson(value.subtitle1),
      'subtitle2': const NullableTextStyleConverter().toJson(value.subtitle2),
    };

    throw 'Json_Unsuported_Value';
  }
}

class TextThemeConverter
    extends JsonConverter<TextTheme, Map<String, dynamic>> {
  const TextThemeConverter();

  @override
  TextTheme fromJson(Map<String, dynamic> json) {
    return const NullableTextThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TextTheme value) {
    return const NullableTextThemeConverter().toJson(value)!;
  }
}
