part of theme_json_converter;

class NullableSliderComponentShapeConverter
    extends JsonConverter<SliderComponentShape?, String?> {
  const NullableSliderComponentShapeConverter();

  @override
  SliderComponentShape? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'noOverlay':
        return SliderComponentShape.noOverlay;

      case 'noThumb':
        return SliderComponentShape.noThumb;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(SliderComponentShape? value) {
    if (value == null) return null;

    // This one's a bit strange because both noOverlay and noThumb actually
    // point to the exact same no-op class, so there's no way to tell them
    // apart.  Might as well just pick the one that comes first
    // alphabetically.
    if (value.runtimeType == SliderComponentShape.noOverlay.runtimeType) {
      return 'noOverlay';
    }

    throw 'Json_Unsuported_Value';
  }
}

class SliderComponentShapeConverter
    extends JsonConverter<SliderComponentShape, String> {
  const SliderComponentShapeConverter();

  @override
  SliderComponentShape fromJson(String json) {
    return const NullableSliderComponentShapeConverter().fromJson(json)!;
  }

  @override
  String toJson(SliderComponentShape value) {
    return const NullableSliderComponentShapeConverter().toJson(value)!;
  }
}
