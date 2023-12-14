part of theme_json_converter;

class NullableMaterialBannerThemeDataConverter
    extends JsonConverter<MaterialBannerThemeData?, dynamic> {
  const NullableMaterialBannerThemeDataConverter();

  @override
  MaterialBannerThemeData? fromJson(json) =>
      const TypedNullableMaterialBannerThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableMaterialBannerThemeDataConverter().toJson(object);
}

class TypedNullableMaterialBannerThemeDataConverter
    extends JsonConverter<MaterialBannerThemeData?, Map<String, dynamic>?> {
  const TypedNullableMaterialBannerThemeDataConverter();
  @override
  MaterialBannerThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return MaterialBannerThemeData(
      backgroundColor: const NullableColorConverter().fromJson(
        json['backgroundColor'],
      ),
      contentTextStyle: const NullableTextStyleConverter().fromJson(
        json['contentTextStyle'],
      ),
      leadingPadding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['leadingPadding'],
      ),
      padding: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['padding'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(MaterialBannerThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(value.backgroundColor),
      'contentTextStyle':
          const NullableTextStyleConverter().toJson(value.contentTextStyle),
      'leadingPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.leadingPadding as EdgeInsets?),
      'padding': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.padding as EdgeInsets?),
    };

    throw 'Json_Unsuported_Value';
  }
}

class MaterialBannerThemeDataConverter
    extends JsonConverter<MaterialBannerThemeData, dynamic> {
  const MaterialBannerThemeDataConverter();

  @override
  MaterialBannerThemeData fromJson(json) =>
      const TypedMaterialBannerThemeDataConverter()
          .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedMaterialBannerThemeDataConverter().toJson(object);
}

class TypedMaterialBannerThemeDataConverter
    extends JsonConverter<MaterialBannerThemeData, Map<String, dynamic>> {
  const TypedMaterialBannerThemeDataConverter();
  @override
  MaterialBannerThemeData fromJson(Map<String, dynamic> json) {
    return const NullableMaterialBannerThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialBannerThemeData value) {
    return const NullableMaterialBannerThemeDataConverter().toJson(value)!;
  }
}
