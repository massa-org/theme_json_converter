part of theme_json_converter;

class NullableButtonBarThemeDataConverter
    extends JsonConverter<ButtonBarThemeData?, Map<String, dynamic>?> {
  const NullableButtonBarThemeDataConverter();

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
  Map<String, dynamic>? toJson(ButtonBarThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'alignment':
          const NullableMainAxisAlignmentConverter().toJson(object.alignment),
      'buttonAlignedDropdown': object.buttonAlignedDropdown,
      'buttonHeight': object.buttonHeight,
      'buttonMinWidth': object.buttonMinWidth,
      'buttonPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.buttonPadding as EdgeInsets?),
      'buttonTextTheme': const NullableButtonTextThemeConverter()
          .toJson(object.buttonTextTheme),
      'layoutBehavior': const NullableButtonBarLayoutBehaviorConverter()
          .toJson(object.layoutBehavior),
      'mainAxisSize':
          const NullableMainAxisSizeConverter().toJson(object.mainAxisSize),
      'overflowDirection': const NullableVerticalDirectionConverter()
          .toJson(object.overflowDirection),
    };
  }
}

class ButtonBarThemeDataConverter
    extends JsonConverter<ButtonBarThemeData, Map<String, dynamic>> {
  const ButtonBarThemeDataConverter();

  @override
  ButtonBarThemeData fromJson(Map<String, dynamic> json) {
    return const NullableButtonBarThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ButtonBarThemeData object) {
    return const NullableButtonBarThemeDataConverter().toJson(object)!;
  }
}
