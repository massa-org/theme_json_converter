part of theme_json_converter;

class NullableTooltipThemeDataConverter
    extends JsonConverter<TooltipThemeData?, dynamic> {
  const NullableTooltipThemeDataConverter();

  @override
  TooltipThemeData? fromJson(json) =>
      const TypedNullableTooltipThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableTooltipThemeDataConverter().toJson(object);
}

class TypedNullableTooltipThemeDataConverter
    extends JsonConverter<TooltipThemeData?, Map<String, dynamic>?> {
  const TypedNullableTooltipThemeDataConverter();
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
    extends JsonConverter<TooltipThemeData, dynamic> {
  const TooltipThemeDataConverter();

  @override
  TooltipThemeData fromJson(json) => const TypedTooltipThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedTooltipThemeDataConverter().toJson(object);
}

class TypedTooltipThemeDataConverter
    extends JsonConverter<TooltipThemeData, Map<String, dynamic>> {
  const TypedTooltipThemeDataConverter();
  @override
  TooltipThemeData fromJson(Map<String, dynamic> json) {
    return const NullableTooltipThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(TooltipThemeData value) {
    return const NullableTooltipThemeDataConverter().toJson(value)!;
  }
}
