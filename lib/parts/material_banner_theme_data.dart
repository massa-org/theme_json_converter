part of theme_json_converter;

class NullableMaterialBannerThemeDataConverter
    extends JsonConverter<MaterialBannerThemeData?, Map<String, dynamic>?> {
  const NullableMaterialBannerThemeDataConverter();

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
    extends JsonConverter<MaterialBannerThemeData, Map<String, dynamic>> {
  const MaterialBannerThemeDataConverter();

  @override
  MaterialBannerThemeData fromJson(Map<String, dynamic> json) {
    return const NullableMaterialBannerThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MaterialBannerThemeData value) {
    return const NullableMaterialBannerThemeDataConverter().toJson(value)!;
  }
}
