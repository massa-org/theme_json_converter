part of theme_json_converter;

class NullablePopupMenuThemeDataConverter
    extends JsonConverter<PopupMenuThemeData?, dynamic> {
  const NullablePopupMenuThemeDataConverter();

  @override
  PopupMenuThemeData? fromJson(json) =>
      const TypedNullablePopupMenuThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullablePopupMenuThemeDataConverter().toJson(object);
}

class TypedNullablePopupMenuThemeDataConverter
    extends JsonConverter<PopupMenuThemeData?, Map<String, dynamic>?> {
  const TypedNullablePopupMenuThemeDataConverter();
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
    extends JsonConverter<PopupMenuThemeData, dynamic> {
  const PopupMenuThemeDataConverter();

  @override
  PopupMenuThemeData fromJson(json) => const TypedPopupMenuThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedPopupMenuThemeDataConverter().toJson(object);
}

class TypedPopupMenuThemeDataConverter
    extends JsonConverter<PopupMenuThemeData, Map<String, dynamic>> {
  const TypedPopupMenuThemeDataConverter();
  @override
  PopupMenuThemeData fromJson(Map<String, dynamic> json) {
    return const NullablePopupMenuThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(PopupMenuThemeData value) {
    return const NullablePopupMenuThemeDataConverter().toJson(value)!;
  }
}
