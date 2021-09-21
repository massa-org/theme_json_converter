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
  String? toJson(MaterialTapTargetSize? value) {
    if (value == null) return null;

    switch (value) {
      case MaterialTapTargetSize.padded:
        return 'padded';
        break;
      case MaterialTapTargetSize.shrinkWrap:
        return 'shrinkWrap';
        break;
    }

    throw 'Json_Unsuported_Value';
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
  String toJson(MaterialTapTargetSize value) {
    return const NullableMaterialTapTargetSizeConverter().toJson(value)!;
  }
}
