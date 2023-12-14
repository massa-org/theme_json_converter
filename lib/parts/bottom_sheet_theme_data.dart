part of theme_json_converter;

class NullableBottomSheetThemeDataConverter
    extends JsonConverter<BottomSheetThemeData?, dynamic> {
  const NullableBottomSheetThemeDataConverter();

  @override
  BottomSheetThemeData? fromJson(json) =>
      const TypedNullableBottomSheetThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableBottomSheetThemeDataConverter().toJson(object);
}

class TypedNullableBottomSheetThemeDataConverter
    extends JsonConverter<BottomSheetThemeData?, Map<String, dynamic>?> {
  const TypedNullableBottomSheetThemeDataConverter();
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
  Map<String, dynamic>? toJson(BottomSheetThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'clipBehavior': const NullableClipConverter().toJson(value.clipBehavior),
      'elevation': value.elevation,
      'modalBackgroundColor':
          const NullableColorConverter().toJson(value.modalBackgroundColor),
      'modalElevation': value.modalElevation,
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
    };

    throw 'Json_Unsuported_Value';
  }
}

class BottomSheetThemeDataConverter
    extends JsonConverter<BottomSheetThemeData, dynamic> {
  const BottomSheetThemeDataConverter();

  @override
  BottomSheetThemeData fromJson(json) =>
      const TypedBottomSheetThemeDataConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedBottomSheetThemeDataConverter().toJson(object);
}

class TypedBottomSheetThemeDataConverter
    extends JsonConverter<BottomSheetThemeData, Map<String, dynamic>> {
  const TypedBottomSheetThemeDataConverter();
  @override
  BottomSheetThemeData fromJson(Map<String, dynamic> json) {
    return const NullableBottomSheetThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BottomSheetThemeData value) {
    return const NullableBottomSheetThemeDataConverter().toJson(value)!;
  }
}
