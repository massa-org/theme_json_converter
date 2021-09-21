part of theme_json_converter;

class NullableSnackBarBehaviorConverter
    extends JsonConverter<SnackBarBehavior?, String?> {
  const NullableSnackBarBehaviorConverter();

  @override
  SnackBarBehavior? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'fixed':
        return SnackBarBehavior.fixed;

      case 'floating':
        return SnackBarBehavior.floating;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(SnackBarBehavior? value) {
    if (value == null) return null;

    switch (value) {
      case SnackBarBehavior.fixed:
        return 'fixed';
        break;

      case SnackBarBehavior.floating:
        return 'floating';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class SnackBarBehaviorConverter
    extends JsonConverter<SnackBarBehavior, String> {
  const SnackBarBehaviorConverter();

  @override
  SnackBarBehavior fromJson(String json) {
    return const NullableSnackBarBehaviorConverter().fromJson(json)!;
  }

  @override
  String toJson(SnackBarBehavior value) {
    return const NullableSnackBarBehaviorConverter().toJson(value)!;
  }
}
