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
  String? toJson(MaterialType? object) {
    if (object == null) return null;

    switch (object) {
      case MaterialType.button:
        return 'button';
      case MaterialType.canvas:
        return 'canvas';
      case MaterialType.card:
        return 'card';
      case MaterialType.circle:
        return 'circle';
      case MaterialType.transparency:
        return 'transparency';
    }
  }
}

class MaterialTypeConverter extends JsonConverter<MaterialType, String> {
  const MaterialTypeConverter();

  @override
  MaterialType fromJson(String json) {
    return const NullableMaterialTypeConverter().fromJson(json)!;
  }

  @override
  String toJson(MaterialType object) {
    return const NullableMaterialTypeConverter().toJson(object)!;
  }
}
