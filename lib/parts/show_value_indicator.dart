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
  String? toJson(ShowValueIndicator? object) {
    if (object == null) return null;

    switch (object) {
      case ShowValueIndicator.always:
        return 'always';

      case ShowValueIndicator.never:
        return 'never';

      case ShowValueIndicator.onlyForContinuous:
        return 'onlyForContinuous';

      case ShowValueIndicator.onlyForDiscrete:
        return 'onlyForDiscrete';
    }
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
  String toJson(ShowValueIndicator object) {
    return const NullableShowValueIndicatorConverter().toJson(object)!;
  }
}
