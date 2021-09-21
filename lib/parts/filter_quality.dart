part of theme_json_converter;

class NullableFilterQualityConverter
    extends JsonConverter<FilterQuality?, String?> {
  const NullableFilterQualityConverter();

  @override
  FilterQuality? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'high':
        return FilterQuality.high;

      case 'low':
        return FilterQuality.low;

      case 'medium':
        return FilterQuality.medium;

      case 'none':
        return FilterQuality.none;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(FilterQuality? value) {
    if (value == null) return null;

    switch (value) {
      case FilterQuality.high:
        return 'high';
        break;

      case FilterQuality.low:
        return 'low';
        break;

      case FilterQuality.medium:
        return 'medium';
        break;

      case FilterQuality.none:
        return 'none';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class FilterQualityConverter extends JsonConverter<FilterQuality, String> {
  const FilterQualityConverter();

  @override
  FilterQuality fromJson(String json) {
    return const NullableFilterQualityConverter().fromJson(json)!;
  }

  @override
  String toJson(FilterQuality value) {
    return const NullableFilterQualityConverter().toJson(value)!;
  }
}
