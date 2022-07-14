part of theme_json_converter;

class NullableMaterialTapTargetSizeConverter
    extends JsonConverter<MaterialTapTargetSize?, String?> {
  const NullableMaterialTapTargetSizeConverter();

  @override
  MaterialTapTargetSize? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'padded':
        return MaterialTapTargetSize.padded;

      case 'shrinkWrap':
        return MaterialTapTargetSize.shrinkWrap;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(MaterialTapTargetSize? object) {
    if (object == null) return null;

    switch (object) {
      case MaterialTapTargetSize.padded:
        return 'padded';
      case MaterialTapTargetSize.shrinkWrap:
        return 'shrinkWrap';
    }
  }
}

class MaterialTapTargetSizeConverter
    extends JsonConverter<MaterialTapTargetSize, String> {
  const MaterialTapTargetSizeConverter();

  @override
  MaterialTapTargetSize fromJson(String json) {
    return const NullableMaterialTapTargetSizeConverter().fromJson(json)!;
  }

  @override
  String toJson(MaterialTapTargetSize object) {
    return const NullableMaterialTapTargetSizeConverter().toJson(object)!;
  }
}
