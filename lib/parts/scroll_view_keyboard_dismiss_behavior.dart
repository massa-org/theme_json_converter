part of theme_json_converter;

class NullableScrollViewKeyboardDismissBehaviorConverter
    extends JsonConverter<ScrollViewKeyboardDismissBehavior?, String?> {
  const NullableScrollViewKeyboardDismissBehaviorConverter();

  @override
  ScrollViewKeyboardDismissBehavior? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'manual':
        return ScrollViewKeyboardDismissBehavior.manual;

      case 'onDrag':
        return ScrollViewKeyboardDismissBehavior.onDrag;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(ScrollViewKeyboardDismissBehavior? object) {
    if (object == null) return null;

    switch (object) {
      case ScrollViewKeyboardDismissBehavior.manual:
        return 'manual';

      case ScrollViewKeyboardDismissBehavior.onDrag:
        return 'onDrag';
    }
  }
}

class ScrollViewKeyboardDismissBehaviorConverter
    extends JsonConverter<ScrollViewKeyboardDismissBehavior, String> {
  const ScrollViewKeyboardDismissBehaviorConverter();

  @override
  ScrollViewKeyboardDismissBehavior fromJson(String json) {
    return const NullableScrollViewKeyboardDismissBehaviorConverter()
        .fromJson(json)!;
  }

  @override
  String toJson(ScrollViewKeyboardDismissBehavior object) {
    return const NullableScrollViewKeyboardDismissBehaviorConverter()
        .toJson(object)!;
  }
}
