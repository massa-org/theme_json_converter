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
  String? toJson(FilterQuality? object) {
    if (object == null) return null;

    switch (object) {
      case FilterQuality.high:
        return 'high';

      case FilterQuality.low:
        return 'low';

      case FilterQuality.medium:
        return 'medium';

      case FilterQuality.none:
        return 'none';
    }
  }
}

class FilterQualityConverter extends JsonConverter<FilterQuality, String> {
  const FilterQualityConverter();

  @override
  FilterQuality fromJson(String json) {
    return const NullableFilterQualityConverter().fromJson(json)!;
  }

  @override
  String toJson(FilterQuality object) {
    return const NullableFilterQualityConverter().toJson(object)!;
  }
}
