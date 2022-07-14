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
  String? toJson(DragStartBehavior? object) {
    if (object == null) return null;

    switch (object) {
      case DragStartBehavior.down:
        return 'down';

      case DragStartBehavior.start:
        return 'start';
    }

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
  String toJson(DragStartBehavior object) {
    return const NullableDragStartBehaviorConverter().toJson(object)!;
  }
}
