part of theme_json_converter;

class NullableDragStartBehaviorConverter
    extends JsonConverter<DragStartBehavior?, String?> {
  const NullableDragStartBehaviorConverter();

  @override
  DragStartBehavior? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'down':
        return DragStartBehavior.down;

      case 'start':
        return DragStartBehavior.start;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(DragStartBehavior? value) {
    if (value == null) return null;

    switch (value) {
      case DragStartBehavior.down:
        return 'down';
        break;

      case DragStartBehavior.start:
        return 'start';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class DragStartBehaviorConverter
    extends JsonConverter<DragStartBehavior, String> {
  const DragStartBehaviorConverter();

  @override
  DragStartBehavior fromJson(String json) {
    return const NullableDragStartBehaviorConverter().fromJson(json)!;
  }

  @override
  String toJson(DragStartBehavior value) {
    return const NullableDragStartBehaviorConverter().toJson(value)!;
  }
}
