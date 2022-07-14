part of theme_json_converter;

class NullableButtonStyleConverter
    extends JsonConverter<ButtonStyle?, Map<String, dynamic>?> {
  const NullableButtonStyleConverter();

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
  Map<String, dynamic>? toJson(ButtonStyle? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'alignment': const NullableAlignmentConverter()
          .toJson(object.alignment as Alignment?),
      'animationDuration': object.animationDuration?.inMilliseconds,
      'backgroundColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        object.backgroundColor,
      ),
      'elevation': const NullableMaterialStatePropertyDoubleConverter()
          .toJson(object.elevation),
      'enableFeedback': object.enableFeedback,
      'foregroundColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        object.foregroundColor,
      ),
      'minimumSize': const NullableMaterialStatePropertySizeConverter()
          .toJson(object.minimumSize),
      'mouseCursor':
          const NullableMaterialStatePropertyMouseCursorConverter().toJson(
        object.mouseCursor,
      ),
      'overlayColor': const NullableMaterialStatePropertyColorConverter()
          .toJson(object.overlayColor),
      'padding':
          const NullableMaterialStatePropertyEdgeInsetsGeometryConverter()
              .toJson(object.padding),
      'shadowColor': const NullableMaterialStatePropertyColorConverter()
          .toJson(object.shadowColor),
      'shape': const NullableMaterialStatePropertyOutlinedBorderConverter()
          .toJson(object.shape),
      'side': const NullableMaterialStatePropertyBorderSideConverter()
          .toJson(object.side),
      'tapTargetSize': const NullableMaterialTapTargetSizeConverter().toJson(
        object.tapTargetSize,
      ),
      'textStyle': const NullableMaterialStatePropertyTextStyleConverter()
          .toJson(object.textStyle),
      'visualDensity': const NullableVisualDensityConverter().toJson(
        object.visualDensity,
      ),
    };
  }
}

class ButtonStyleConverter
    extends JsonConverter<ButtonStyle, Map<String, dynamic>> {
  const ButtonStyleConverter();

  @override
  ButtonStyle fromJson(Map<String, dynamic> json) {
    return const NullableButtonStyleConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ButtonStyle object) {
    return const NullableButtonStyleConverter().toJson(object)!;
  }
}
