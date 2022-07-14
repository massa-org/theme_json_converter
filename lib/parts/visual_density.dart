part of theme_json_converter;

class NullableVisualDensityConverter
    extends JsonConverter<VisualDensity?, String?> {
  const NullableVisualDensityConverter();

  @override
  VisualDensity? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'adaptivePlatformDensity':
        return VisualDensity.adaptivePlatformDensity;

      case 'comfortable':
        return VisualDensity.comfortable;

      case 'compact':
        return VisualDensity.compact;

      case 'standard':
        return VisualDensity.standard;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(VisualDensity? object) {
    if (object == null) return null;

    if (object == VisualDensity.comfortable) {
      return 'comfortable';
    } else if (object == VisualDensity.compact) {
      return 'compact';
    } else if (object == VisualDensity.standard) {
      return 'standard';
    }

    throw 'Json_Unsuported_Value';
  }
}

class VisualDensityConverter extends JsonConverter<VisualDensity, String> {
  const VisualDensityConverter();

  @override
  VisualDensity fromJson(String json) {
    return const NullableVisualDensityConverter().fromJson(json)!;
  }

  @override
  String toJson(VisualDensity object) {
    return const NullableVisualDensityConverter().toJson(object)!;
  }
}
