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
  Map<String, dynamic>? toJson(TooltipThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'excludeFromSemantics': object.excludeFromSemantics,
      'height': object.height,
      'margin': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.margin as EdgeInsets?),
      'padding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.padding as EdgeInsets?),
      'preferBelow': object.preferBelow,
      'showDuration': object.showDuration?.inMilliseconds,
      'textStyle': const NullableTextStyleConverter().toJson(object.textStyle),
      'verticalOffset': object.verticalOffset,
      'waitDuration': object.waitDuration?.inMilliseconds,
    };
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
  Map<String, dynamic> toJson(TooltipThemeData object) {
    return const NullableTooltipThemeDataConverter().toJson(object)!;
  }
}
