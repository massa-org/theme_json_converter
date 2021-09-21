part of theme_json_converter;

class NullableInteractiveInkFeatureFactoryConverter
    extends JsonConverter<InteractiveInkFeatureFactory?, String?> {
  const NullableInteractiveInkFeatureFactoryConverter();

  @override
  InteractiveInkFeatureFactory? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'splash':
        return InkSplash.splashFactory;

      case 'ripple':
        return InkRipple.splashFactory;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(InteractiveInkFeatureFactory? value) {
    if (value == null) return null;
    final splashType = InkSplash.splashFactory.runtimeType;
    final rippleType = InkRipple.splashFactory.runtimeType;
    if (value.runtimeType == splashType) {
      return 'splash';
    } else if (value.runtimeType == rippleType) {
      return 'ripple';
    }

    throw 'Json_Unsuported_Value';
  }
}

class InteractiveInkFeatureFactoryConverter
    extends JsonConverter<InteractiveInkFeatureFactory, String> {
  const InteractiveInkFeatureFactoryConverter();

  @override
  InteractiveInkFeatureFactory fromJson(String json) {
    return const NullableInteractiveInkFeatureFactoryConverter()
        .fromJson(json)!;
  }

  @override
  String toJson(InteractiveInkFeatureFactory value) {
    return const NullableInteractiveInkFeatureFactoryConverter().toJson(value)!;
  }
}
