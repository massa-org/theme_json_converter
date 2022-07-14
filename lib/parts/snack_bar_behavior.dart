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
  String? toJson(SnackBarBehavior? object) {
    if (object == null) return null;

    switch (object) {
      case SnackBarBehavior.fixed:
        return 'fixed';

      case SnackBarBehavior.floating:
        return 'floating';
    }
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
  String toJson(SnackBarBehavior object) {
    return const NullableSnackBarBehaviorConverter().toJson(object)!;
  }
}
