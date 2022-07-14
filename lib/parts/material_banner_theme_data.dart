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
  Map<String, dynamic>? toJson(MaterialBannerThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(object.backgroundColor),
      'contentTextStyle':
          const NullableTextStyleConverter().toJson(object.contentTextStyle),
      'leadingPadding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.leadingPadding as EdgeInsets?),
      'padding': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.padding as EdgeInsets?),
    };
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
  Map<String, dynamic> toJson(MaterialBannerThemeData object) {
    return const NullableMaterialBannerThemeDataConverter().toJson(object)!;
  }
}
