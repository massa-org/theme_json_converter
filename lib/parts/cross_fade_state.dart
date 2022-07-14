part of theme_json_converter;

class NullableCrossFadeStateConverter
    extends JsonConverter<CrossFadeState?, String?> {
  const NullableCrossFadeStateConverter();

  @override
  CrossFadeState? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'showFirst':
        return CrossFadeState.showFirst;

      case 'showSecond':
        return CrossFadeState.showSecond;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(CrossFadeState? object) {
    if (object == null) return null;

    switch (object) {
      case CrossFadeState.showFirst:
        return 'showFirst';
      case CrossFadeState.showSecond:
        return 'showSecond';
    }
  }
}

class CrossFadeStateConverter extends JsonConverter<CrossFadeState, String> {
  const CrossFadeStateConverter();

  @override
  CrossFadeState fromJson(String json) {
    return const NullableCrossFadeStateConverter().fromJson(json)!;
  }

  @override
  String toJson(CrossFadeState object) {
    return const NullableCrossFadeStateConverter().toJson(object)!;
  }
}
