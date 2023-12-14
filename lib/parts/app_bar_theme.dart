part of theme_json_converter;

class NullableAppBarThemeConverter
    extends JsonConverter<AppBarTheme?, dynamic> {
  const NullableAppBarThemeConverter();

  @override
  AppBarTheme? fromJson(json) => const TypedNullableAppBarThemeConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableAppBarThemeConverter().toJson(object);
}

class TypedNullableAppBarThemeConverter
    extends JsonConverter<AppBarTheme?, Map<String, dynamic>?> {
  const TypedNullableAppBarThemeConverter();
  @override
  AppBarTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return AppBarTheme(
      actionsIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['actionsIconTheme'],
      ),
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'] ?? json['color'],
      ),
      backwardsCompatibility: json['backwardsCompatibility'] == null
          ? null
          : (json['backwardsCompatibility'] as bool),
      brightness: const NullableBrightnessConverter().fromJson(
        json['brightness'],
      ),
      centerTitle:
          json['centerTitle'] == null ? null : (json['centerTitle'] as bool),
      elevation: (json['elevation'] as num?)?.toDouble(),
      foregroundColor: const NullableColorConverter().fromJson(
        json['foregroundColor'],
      ),
      iconTheme: const NullableIconThemeDataConverter().fromJson(
        json['iconTheme'],
      ),
      shadowColor: const NullableColorConverter().fromJson(
        json['shadowColor'],
      ),
      systemOverlayStyle:
          const NullableSystemUiOverlayStyleConverter().fromJson(
        json['systemOverlayStyle'],
      ),
      textTheme: const NullableTextThemeConverter().fromJson(
        json['textTheme'],
      ),
      titleSpacing: (json['titleSpacing'] as num?)?.toDouble(),
      titleTextStyle: const NullableTextStyleConverter().fromJson(
        json['titleTextStyle'],
      ),
      toolbarTextStyle: const NullableTextStyleConverter().fromJson(
        json['toolbarTextStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(AppBarTheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'actionsIconTheme':
          const NullableIconThemeDataConverter().toJson(value.actionsIconTheme),
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor) ??
              const NullableColorConverter().toJson(value.color),
      'backwardsCompatibility': value.backwardsCompatibility,
      'brightness':
          const NullableBrightnessConverter().toJson(value.brightness),
      'centerTitle': value.centerTitle,
      'elevation': value.elevation,
      'foregroundColor':
          const NullableColorConverter().toJson(value.foregroundColor),
      'iconTheme':
          const NullableIconThemeDataConverter().toJson(value.iconTheme),
      'shadowColor': const NullableColorConverter().toJson(value.shadowColor),
      'systemOverlayStyle': const NullableSystemUiOverlayStyleConverter()
          .toJson(value.systemOverlayStyle),
      'textTheme': const NullableTextThemeConverter().toJson(value.textTheme),
      'titleSpacing': value.titleSpacing,
      'titleTextStyle':
          const NullableTextStyleConverter().toJson(value.titleTextStyle),
      'toolbarTextStyle':
          const NullableTextStyleConverter().toJson(value.toolbarTextStyle),
    };

    throw 'Json_Unsuported_Value';
  }
}

class AppBarThemeConverter extends JsonConverter<AppBarTheme, dynamic> {
  const AppBarThemeConverter();

  @override
  AppBarTheme fromJson(json) => const TypedAppBarThemeConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedAppBarThemeConverter().toJson(object);
}

class TypedAppBarThemeConverter
    extends JsonConverter<AppBarTheme, Map<String, dynamic>> {
  const TypedAppBarThemeConverter();
  @override
  AppBarTheme fromJson(Map<String, dynamic> json) {
    return const NullableAppBarThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(AppBarTheme value) {
    return const NullableAppBarThemeConverter().toJson(value)!;
  }
}
