part of theme_json_converter;

class NullablePopupMenuThemeDataConverter
    extends JsonConverter<PopupMenuThemeData?, Map<String, dynamic>?> {
  const NullablePopupMenuThemeDataConverter();

  @override
  PopupMenuThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return PopupMenuThemeData(
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      enableFeedback: json['enableFeedback'] == null
          ? null
          : (json['enableFeedback'] as bool),
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ),
      textStyle: const NullableTextStyleConverter().fromJson(
        json['textStyle'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(PopupMenuThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'color': const NullableColorConverter().toJson(value.color),
      'elevation': value.elevation,
      'enableFeedback': value.enableFeedback,
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
      'textStyle': const NullableTextStyleConverter().toJson(value.textStyle),
    };

    throw 'Json_Unsuported_Value';
  }
}

class PopupMenuThemeDataConverter
    extends JsonConverter<PopupMenuThemeData, Map<String, dynamic>> {
  const PopupMenuThemeDataConverter();

  @override
  PopupMenuThemeData fromJson(Map<String, dynamic> json) {
    return const NullablePopupMenuThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(PopupMenuThemeData value) {
    return const NullablePopupMenuThemeDataConverter().toJson(value)!;
  }
}
