// ignore_for_file: deprecated_member_use

part of theme_json_converter;

class NullableAppBarThemeConverter
    extends JsonConverter<AppBarTheme?, Map<String, dynamic>?> {
  const NullableAppBarThemeConverter();

  @override
  AppBarTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return AppBarTheme(
      // from only params
      color: const NullableColorConverter().fromJson(json['color']),
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'] ?? json['color'],
      ),
      // from to
      surfaceTintColor:
          const NullableColorConverter().fromJson(json['surfaceTintColor']),
      toolbarHeight: (json['toolbarHeight'] as num?)?.toDouble(),
      scrolledUnderElevation:
          (json['scrolledUnderElevation'] as num?)?.toDouble(),
      shape: const NullableShapeBorderConverter().fromJson(json['shape']),

      actionsIconTheme: const NullableIconThemeDataConverter().fromJson(
        json['actionsIconTheme'],
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
  Map<String, dynamic>? toJson(AppBarTheme? object) {
    if (object == null) return null;

    return <String, dynamic>{
      // 'color': const NullableColorConverter().toJson(object.color),
      'surfaceTintColor':
          const NullableColorConverter().toJson(object.surfaceTintColor),
      'toolbarHeight': object.toolbarHeight,
      'scrolledUnderElevation': object.scrolledUnderElevation,
      'shape': const NullableShapeBorderConverter().toJson(object.shape),

      'actionsIconTheme': const NullableIconThemeDataConverter()
          .toJson(object.actionsIconTheme),
      'centerTitle': object.centerTitle,
      'elevation': object.elevation,
      'foregroundColor':
          const NullableColorConverter().toJson(object.foregroundColor),
      'iconTheme':
          const NullableIconThemeDataConverter().toJson(object.iconTheme),
      'shadowColor': const NullableColorConverter().toJson(object.shadowColor),
      'systemOverlayStyle': const NullableSystemUiOverlayStyleConverter()
          .toJson(object.systemOverlayStyle),
      'titleSpacing': object.titleSpacing,
      'titleTextStyle':
          const NullableTextStyleConverter().toJson(object.titleTextStyle),
      'toolbarTextStyle':
          const NullableTextStyleConverter().toJson(object.toolbarTextStyle),
    };
  }
}

class AppBarThemeConverter
    extends JsonConverter<AppBarTheme, Map<String, dynamic>> {
  const AppBarThemeConverter();

  @override
  AppBarTheme fromJson(Map<String, dynamic> json) {
    return const NullableAppBarThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(AppBarTheme object) {
    return const NullableAppBarThemeConverter().toJson(object)!;
  }
}
