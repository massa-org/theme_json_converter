part of theme_json_converter;

class NullableButtonBarThemeDataConverter
    extends JsonConverter<ButtonBarThemeData?, dynamic> {
  const NullableButtonBarThemeDataConverter();

  @override
  ButtonBarThemeData? fromJson(json) =>
      const TypedNullableButtonBarThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableButtonBarThemeDataConverter().toJson(object);
}

class TypedNullableButtonBarThemeDataConverter
    extends JsonConverter<ButtonBarThemeData?, Map<String, dynamic>?> {
  const TypedNullableButtonBarThemeDataConverter();
  @override
  ButtonBarThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ButtonBarThemeData(
      alignment: const NullableMainAxisAlignmentConverter().fromJson(
        json['alignment'],
      ),
      buttonAlignedDropdown: json['buttonAlignedDropdown'] == null
          ? null
          : (json['buttonAlignedDropdown'] as bool),
      buttonHeight: (json['buttonHeight'] as num?)?.toDouble(),
      buttonMinWidth: (json['buttonMinWidth'] as num?)?.toDouble(),
      buttonPadding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['buttonPadding'],
      ),
      buttonTextTheme: const NullableButtonTextThemeConverter().fromJson(
        json['buttonTextTheme'],
      ),
      layoutBehavior: const NullableButtonBarLayoutBehaviorConverter().fromJson(
        json['layoutBehavior'],
      ),
      mainAxisSize: const NullableMainAxisSizeConverter().fromJson(
        json['mainAxisSize'],
      ),
      overflowDirection: const NullableVerticalDirectionConverter().fromJson(
        json['overflowDirection'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(ButtonBarThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'alignment':
          const NullableMainAxisAlignmentConverter().toJson(value.alignment),
      'buttonAlignedDropdown': value.buttonAlignedDropdown,
      'buttonHeight': value.buttonHeight,
      'buttonMinWidth': value.buttonMinWidth,
      'buttonPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.buttonPadding as EdgeInsets?),
      'buttonTextTheme': const NullableButtonTextThemeConverter()
          .toJson(value.buttonTextTheme),
      'layoutBehavior': const NullableButtonBarLayoutBehaviorConverter()
          .toJson(value.layoutBehavior),
      'mainAxisSize':
          const NullableMainAxisSizeConverter().toJson(value.mainAxisSize),
      'overflowDirection': const NullableVerticalDirectionConverter()
          .toJson(value.overflowDirection),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ButtonBarThemeDataConverter
    extends JsonConverter<ButtonBarThemeData, dynamic> {
  const ButtonBarThemeDataConverter();

  @override
  ButtonBarThemeData fromJson(json) => const TypedButtonBarThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedButtonBarThemeDataConverter().toJson(object);
}

class TypedButtonBarThemeDataConverter
    extends JsonConverter<ButtonBarThemeData, Map<String, dynamic>> {
  const TypedButtonBarThemeDataConverter();
  @override
  ButtonBarThemeData fromJson(Map<String, dynamic> json) {
    return const NullableButtonBarThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ButtonBarThemeData value) {
    return const NullableButtonBarThemeDataConverter().toJson(value)!;
  }
}
