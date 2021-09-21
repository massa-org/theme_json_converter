part of theme_json_converter;

class NullableTooltipThemeDataConverter
    extends JsonConverter<TooltipThemeData?, Map<String, dynamic>?> {
  const NullableTooltipThemeDataConverter();

  @override
  TooltipThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return TooltipThemeData(
      // @unencodable
      // decoration
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : (json['excludeFromSemantics'] as bool),
      height: (json['height'] as num?)?.toDouble(),
      margin: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['margin'],
      ),
      padding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['padding'],
      ),
      preferBelow:
          json['preferBelow'] == null ? null : (json['preferBelow'] as bool),
      showDuration: (json['showDuration'] == null
          ? null
          : Duration(milliseconds: (json['showDuration'] as num).toInt())),
      textStyle: const NullableTextStyleConverter().fromJson(
        json['textStyle'],
      ),
      verticalOffset: (json['verticalOffset'] as num?)?.toDouble(),
      waitDuration: (json['waitDuration'] == null
          ? null
          : Duration(milliseconds: (json['waitDuration'] as num).toInt())),
    );
  }

  @override
  Map<String, dynamic>? toJson(TooltipThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'excludeFromSemantics': value.excludeFromSemantics,
      'height': value.height,
      'margin': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.margin as EdgeInsets?),
      'padding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.padding as EdgeInsets?),
      'preferBelow': value.preferBelow,
      'showDuration': value.showDuration?.inMilliseconds,
      'textStyle': const NullableTextStyleConverter().toJson(value.textStyle),
      'verticalOffset': value.verticalOffset,
      'waitDuration': value.waitDuration?.inMilliseconds,
    };

    throw 'Json_Unsuported_Value';
  }
}

class TooltipThemeDataConverter
    extends JsonConverter<TooltipThemeData, Map<String, dynamic>> {
  const TooltipThemeDataConverter();

  @override
  TooltipThemeData fromJson(Map<String, dynamic> json) {
    return const NullableTooltipThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TooltipThemeData value) {
    return const NullableTooltipThemeDataConverter().toJson(value)!;
  }
}
