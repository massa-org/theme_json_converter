part of theme_json_converter;

class NullableButtonStyleConverter
    extends JsonConverter<ButtonStyle?, dynamic> {
  const NullableButtonStyleConverter();

  @override
  ButtonStyle? fromJson(json) => const TypedNullableButtonStyleConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableButtonStyleConverter().toJson(object);
}

class TypedNullableButtonStyleConverter
    extends JsonConverter<ButtonStyle?, Map<String, dynamic>?> {
  const TypedNullableButtonStyleConverter();
  @override
  ButtonStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ButtonStyle(
      alignment: const NullableAlignmentConverter().fromJson(json['alignment']),
      animationDuration: (json['animationDuration'] == null
          ? null
          : Duration(milliseconds: (json['animationDuration'] as num).toInt())),
      backgroundColor:
          const NullableMaterialStatePropertyColorConverter().fromJson(
        json['backgroundColor'],
      ),
      elevation: const NullableMaterialStatePropertyDoubleConverter()
          .fromJson(json['elevation']),
      enableFeedback: json['enableFeedback'] == null
          ? null
          : (json['enableFeedback'] as bool),
      foregroundColor:
          const NullableMaterialStatePropertyColorConverter().fromJson(
        json['foregroundColor'],
      ),
      minimumSize: const NullableMaterialStatePropertySizeConverter().fromJson(
        json['minimumSize'],
      ),
      mouseCursor:
          const NullableMaterialStatePropertyMouseCursorConverter().fromJson(
        json['mouseCursor'],
      ),
      overlayColor:
          const NullableMaterialStatePropertyColorConverter().fromJson(
        json['overlayColor'],
      ),
      padding: const NullableMaterialStatePropertyEdgeInsetsGeometryConverter()
          .fromJson(
        json['padding'],
      ),
      shadowColor: const NullableMaterialStatePropertyColorConverter().fromJson(
        json['shadowColor'],
      ),
      shape:
          const NullableMaterialStatePropertyOutlinedBorderConverter().fromJson(
        json['shape'],
      ),
      side: const NullableMaterialStatePropertyBorderSideConverter().fromJson(
        json['side'],
      ),
      tapTargetSize: const NullableMaterialTapTargetSizeConverter().fromJson(
        json['tapTargetSize'],
      ),
      textStyle:
          const NullableMaterialStatePropertyTextStyleConverter().fromJson(
        json['textStyle'],
      ),
      visualDensity: const NullableVisualDensityConverter().fromJson(
        json['visualDensity'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(ButtonStyle? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'alignment': const NullableAlignmentConverter()
          .toJson(value.alignment as Alignment?),
      'animationDuration': value.animationDuration?.inMilliseconds,
      'backgroundColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        value.backgroundColor,
      ),
      'elevation': const NullableMaterialStatePropertyDoubleConverter()
          .toJson(value.elevation),
      'enableFeedback': value.enableFeedback,
      'foregroundColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        value.foregroundColor,
      ),
      'minimumSize': const NullableMaterialStatePropertySizeConverter()
          .toJson(value.minimumSize),
      'mouseCursor':
          const NullableMaterialStatePropertyMouseCursorConverter().toJson(
        value.mouseCursor,
      ),
      'overlayColor': const NullableMaterialStatePropertyColorConverter()
          .toJson(value.overlayColor),
      'padding':
          const NullableMaterialStatePropertyEdgeInsetsGeometryConverter()
              .toJson(value.padding),
      'shadowColor': const NullableMaterialStatePropertyColorConverter()
          .toJson(value.shadowColor),
      'shape': const NullableMaterialStatePropertyOutlinedBorderConverter()
          .toJson(value.shape),
      'side': const NullableMaterialStatePropertyBorderSideConverter()
          .toJson(value.side),
      'tapTargetSize': const NullableMaterialTapTargetSizeConverter().toJson(
        value.tapTargetSize,
      ),
      'textStyle': const NullableMaterialStatePropertyTextStyleConverter()
          .toJson(value.textStyle),
      'visualDensity': const NullableVisualDensityConverter().toJson(
        value.visualDensity,
      ),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ButtonStyleConverter extends JsonConverter<ButtonStyle, dynamic> {
  const ButtonStyleConverter();

  @override
  ButtonStyle fromJson(json) => const TypedButtonStyleConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedButtonStyleConverter().toJson(object);
}

class TypedButtonStyleConverter
    extends JsonConverter<ButtonStyle, Map<String, dynamic>> {
  const TypedButtonStyleConverter();
  @override
  ButtonStyle fromJson(Map<String, dynamic> json) {
    return const NullableButtonStyleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ButtonStyle value) {
    return const NullableButtonStyleConverter().toJson(value)!;
  }
}
