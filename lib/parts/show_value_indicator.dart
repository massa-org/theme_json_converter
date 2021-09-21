part of theme_json_converter;

class NullableShowValueIndicatorConverter
    extends JsonConverter<ShowValueIndicator?, String?> {
  const NullableShowValueIndicatorConverter();

  @override
  ShowValueIndicator? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'always':
        return ShowValueIndicator.always;

      case 'never':
        return ShowValueIndicator.never;

      case 'onlyForContinuous':
        return ShowValueIndicator.onlyForContinuous;

      case 'onlyForDiscrete':
        return ShowValueIndicator.onlyForDiscrete;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(ShowValueIndicator? value) {
    if (value == null) return null;

    switch (value) {
      case ShowValueIndicator.always:
        return 'always';
        break;

      case ShowValueIndicator.never:
        return 'never';
        break;

      case ShowValueIndicator.onlyForContinuous:
        return 'onlyForContinuous';
        break;

      case ShowValueIndicator.onlyForDiscrete:
        return 'onlyForDiscrete';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class ShowValueIndicatorConverter
    extends JsonConverter<ShowValueIndicator, String> {
  const ShowValueIndicatorConverter();

  @override
  ShowValueIndicator fromJson(String json) {
    return const NullableShowValueIndicatorConverter().fromJson(json)!;
  }

  @override
  String toJson(ShowValueIndicator value) {
    return const NullableShowValueIndicatorConverter().toJson(value)!;
  }
}
