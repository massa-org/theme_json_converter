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
  String? toJson(CrossFadeState? value) {
    if (value == null) return null;

    switch (value) {
      case CrossFadeState.showFirst:
        return 'showFirst';
        break;
      case CrossFadeState.showSecond:
        return 'showSecond';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class CrossFadeStateConverter extends JsonConverter<CrossFadeState, String> {
  const CrossFadeStateConverter();

  @override
  CrossFadeState fromJson(String json) {
    return const NullableCrossFadeStateConverter().fromJson(json)!;
  }

  @override
  String toJson(CrossFadeState value) {
    return const NullableCrossFadeStateConverter().toJson(value)!;
  }
}
