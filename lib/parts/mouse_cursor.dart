part of theme_json_converter;

class NullableMouseCursorConverter
    extends JsonConverter<MouseCursor?, dynamic> {
  const NullableMouseCursorConverter();

  @override
  MouseCursor? fromJson(json) => const TypedNullableMouseCursorConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableMouseCursorConverter().toJson(object);
}

class TypedNullableMouseCursorConverter
    extends JsonConverter<MouseCursor?, Map<String, dynamic>?> {
  const TypedNullableMouseCursorConverter();
  @override
  MouseCursor? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    switch (json['type']) {
      case 'defer':
        return MouseCursor.defer;

      case 'material':
        switch (json['cursor']) {
          case 'clickable':
            return MaterialStateMouseCursor.clickable;

          case 'textable':
            return MaterialStateMouseCursor.textable;
        }
        break;
      case 'system':
        switch (json['cursor']) {
          case 'alias':
            return SystemMouseCursors.alias;

          case 'allScroll':
            return SystemMouseCursors.allScroll;

          case 'basic':
            return SystemMouseCursors.basic;

          case 'cell':
            return SystemMouseCursors.cell;

          case 'click':
            return SystemMouseCursors.click;

          case 'contextMenu':
            return SystemMouseCursors.contextMenu;

          case 'copy':
            return SystemMouseCursors.copy;

          case 'disappearing':
            return SystemMouseCursors.disappearing;

          case 'forbidden':
            return SystemMouseCursors.forbidden;

          case 'grab':
            return SystemMouseCursors.grab;

          case 'grabbing':
            return SystemMouseCursors.grabbing;

          case 'help':
            return SystemMouseCursors.help;

          case 'move':
            return SystemMouseCursors.move;

          case 'none':
            return SystemMouseCursors.none;

          case 'precise':
            return SystemMouseCursors.precise;

          case 'progress':
            return SystemMouseCursors.progress;

          case 'resizeColumn':
            return SystemMouseCursors.resizeColumn;

          case 'resizeDown':
            return SystemMouseCursors.resizeDown;

          case 'resizeDownLeft':
            return SystemMouseCursors.resizeDownLeft;

          case 'resizeDownRight':
            return SystemMouseCursors.resizeDownRight;

          case 'resizeLeft':
            return SystemMouseCursors.resizeLeft;

          case 'resizeRight':
            return SystemMouseCursors.resizeRight;

          case 'resizeRow':
            return SystemMouseCursors.resizeRow;

          case 'resizeUp':
            return SystemMouseCursors.resizeUp;

          case 'resizeUpDown':
            return SystemMouseCursors.resizeUpDown;

          case 'resizeUpLeft':
            return SystemMouseCursors.resizeUpLeft;

          case 'resizeUpLeftDownRight':
            return SystemMouseCursors.resizeUpLeftDownRight;

          case 'resizeUpRight':
            return SystemMouseCursors.resizeUpRight;

          case 'resizeUpRightDownLeft':
            return SystemMouseCursors.resizeUpRightDownLeft;

          case 'text':
            return SystemMouseCursors.text;

          case 'verticalText':
            return SystemMouseCursors.verticalText;

          case 'wait':
            return SystemMouseCursors.wait;

          case 'zoomIn':
            return SystemMouseCursors.zoomIn;

          case 'zoomOut':
            return SystemMouseCursors.zoomOut;
        }
        break;
      case 'uncontrolled':
        return MouseCursor.uncontrolled;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(MouseCursor? value) {
    if (value == null) return null;

    if (value == MouseCursor.defer) {
      return {
        'type': 'defer',
      };
    } else if (value == MouseCursor.uncontrolled) {
      return {
        'type': 'uncontrolled',
      };
    } else if (MaterialStateMouseCursor.clickable == value) {
      return {
        'cursor': 'clickable',
        'type': 'material',
      };
    } else if (MaterialStateMouseCursor.textable == value) {
      return {
        'cursor': 'textable',
        'type': 'material',
      };
    } else if (SystemMouseCursors.alias == value) {
      return {
        'cursor': 'alias',
        'type': 'system',
      };
    } else if (SystemMouseCursors.allScroll == value) {
      return {
        'cursor': 'allScroll',
        'type': 'system',
      };
    } else if (SystemMouseCursors.basic == value) {
      return {
        'cursor': 'basic',
        'type': 'system',
      };
    } else if (SystemMouseCursors.cell == value) {
      return {
        'cursor': 'cell',
        'type': 'system',
      };
    } else if (SystemMouseCursors.click == value) {
      return {
        'cursor': 'click',
        'type': 'system',
      };
    } else if (SystemMouseCursors.contextMenu == value) {
      return {
        'cursor': 'contextMenu',
        'type': 'system',
      };
    } else if (SystemMouseCursors.copy == value) {
      return {
        'cursor': 'copy',
        'type': 'system',
      };
    } else if (SystemMouseCursors.disappearing == value) {
      return {
        'cursor': 'disappearing',
        'type': 'system',
      };
    } else if (SystemMouseCursors.forbidden == value) {
      return {
        'cursor': 'forbidden',
        'type': 'system',
      };
    } else if (SystemMouseCursors.grab == value) {
      return {
        'cursor': 'grab',
        'type': 'system',
      };
    } else if (SystemMouseCursors.grabbing == value) {
      return {
        'cursor': 'grabbing',
        'type': 'system',
      };
    } else if (SystemMouseCursors.help == value) {
      return {
        'cursor': 'help',
        'type': 'system',
      };
    } else if (SystemMouseCursors.move == value) {
      return {
        'cursor': 'move',
        'type': 'system',
      };
    } else if (SystemMouseCursors.none == value) {
      return {
        'cursor': 'none',
        'type': 'system',
      };
    } else if (SystemMouseCursors.precise == value) {
      return {
        'cursor': 'precise',
        'type': 'system',
      };
    } else if (SystemMouseCursors.progress == value) {
      return {
        'cursor': 'progress',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeColumn == value) {
      return {
        'cursor': 'resizeColumn',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeDown == value) {
      return {
        'cursor': 'resizeDown',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeDownLeft == value) {
      return {
        'cursor': 'resizeDownLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeDownRight == value) {
      return {
        'cursor': 'resizeDownRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeLeft == value) {
      return {
        'cursor': 'resizeLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeRight == value) {
      return {
        'cursor': 'resizeRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeRow == value) {
      return {
        'cursor': 'resizeRow',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUp == value) {
      return {
        'cursor': 'resizeUp',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpDown == value) {
      return {
        'cursor': 'resizeUpDown',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpLeft == value) {
      return {
        'cursor': 'resizeUpLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpLeftDownRight == value) {
      return {
        'cursor': 'resizeUpLeftDownRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpRight == value) {
      return {
        'cursor': 'resizeUpRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpRightDownLeft == value) {
      return {
        'cursor': 'resizeUpRightDownLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.text == value) {
      return {
        'cursor': 'text',
        'type': 'system',
      };
    } else if (SystemMouseCursors.verticalText == value) {
      return {
        'cursor': 'verticalText',
        'type': 'system',
      };
    } else if (SystemMouseCursors.wait == value) {
      return {
        'cursor': 'wait',
        'type': 'system',
      };
    } else if (SystemMouseCursors.zoomIn == value) {
      return {
        'cursor': 'zoomIn',
        'type': 'system',
      };
    } else if (SystemMouseCursors.zoomOut == value) {
      return {
        'cursor': 'zoomOut',
        'type': 'system',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class MouseCursorConverter extends JsonConverter<MouseCursor, dynamic> {
  const MouseCursorConverter();

  @override
  MouseCursor fromJson(json) => const TypedMouseCursorConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedMouseCursorConverter().toJson(object);
}

class TypedMouseCursorConverter
    extends JsonConverter<MouseCursor, Map<String, dynamic>> {
  const TypedMouseCursorConverter();
  @override
  MouseCursor fromJson(Map<String, dynamic> json) {
    return const NullableMouseCursorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MouseCursor value) {
    return const NullableMouseCursorConverter().toJson(value)!;
  }
}
