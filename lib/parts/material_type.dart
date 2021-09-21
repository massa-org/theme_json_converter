part of theme_json_converter;

class NullableMaterialTypeConverter
    extends JsonConverter<MaterialType?, String?> {
  const NullableMaterialTypeConverter();

  @override
  MaterialType? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'button':
        return MaterialType.button;

      case 'canvas':
        return MaterialType.canvas;

      case 'card':
        return MaterialType.card;

      case 'circle':
        return MaterialType.circle;

      case 'transparency':
        return MaterialType.transparency;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(MaterialType? value) {
    if (value == null) return null;

    switch (value) {
      case MaterialType.button:
        return 'button';
        break;
      case MaterialType.canvas:
        return 'canvas';
        break;
      case MaterialType.card:
        return 'card';
        break;
      case MaterialType.circle:
        return 'circle';
        break;
      case MaterialType.transparency:
        return 'transparency';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class MaterialTypeConverter extends JsonConverter<MaterialType, String> {
  const MaterialTypeConverter();

  @override
  MaterialType fromJson(String json) {
    return const NullableMaterialTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(MaterialType value) {
    return const NullableMaterialTypeConverter().toJson(value)!;
  }
}
