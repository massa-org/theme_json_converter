part of theme_json_converter;

class NullableBottomSheetThemeDataConverter
    extends JsonConverter<BottomSheetThemeData?, Map<String, dynamic>?> {
  const NullableBottomSheetThemeDataConverter();

  @override
  BottomSheetThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return BottomSheetThemeData(
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      clipBehavior: const NullableClipConverter().fromJson(
        json['clipBehavior'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      modalBackgroundColor: const NullableColorConverter().fromJson(
        json['modalBackgroundColor'],
      ),
      modalElevation: (json['modalElevation'] as num?)?.toDouble(),
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(BottomSheetThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'clipBehavior': const NullableClipConverter().toJson(object.clipBehavior),
      'elevation': object.elevation,
      'modalBackgroundColor':
          const NullableColorConverter().toJson(object.modalBackgroundColor),
      'modalElevation': object.modalElevation,
      'shape': const NullableShapeBorderConverter().toJson(object.shape),
    };

  }
}

class BottomSheetThemeDataConverter
    extends JsonConverter<BottomSheetThemeData, Map<String, dynamic>> {
  const BottomSheetThemeDataConverter();

  @override
  BottomSheetThemeData fromJson(Map<String, dynamic> json) {
    return const NullableBottomSheetThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BottomSheetThemeData object) {
    return const NullableBottomSheetThemeDataConverter().toJson(object)!;
  }
}
