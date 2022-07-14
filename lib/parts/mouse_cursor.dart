part of theme_json_converter;

class NullableMouseCursorConverter
    extends JsonConverter<MouseCursor?, Map<String, dynamic>?> {
  const NullableMouseCursorConverter();

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
  Map<String, dynamic>? toJson(MouseCursor? object) {
    if (object == null) return null;

    if (object == MouseCursor.defer) {
      return {
        'type': 'defer',
      };
    } else if (object == MouseCursor.uncontrolled) {
      return {
        'type': 'uncontrolled',
      };
    } else if (MaterialStateMouseCursor.clickable == object) {
      return {
        'cursor': 'clickable',
        'type': 'material',
      };
    } else if (MaterialStateMouseCursor.textable == object) {
      return {
        'cursor': 'textable',
        'type': 'material',
      };
    } else if (SystemMouseCursors.alias == object) {
      return {
        'cursor': 'alias',
        'type': 'system',
      };
    } else if (SystemMouseCursors.allScroll == object) {
      return {
        'cursor': 'allScroll',
        'type': 'system',
      };
    } else if (SystemMouseCursors.basic == object) {
      return {
        'cursor': 'basic',
        'type': 'system',
      };
    } else if (SystemMouseCursors.cell == object) {
      return {
        'cursor': 'cell',
        'type': 'system',
      };
    } else if (SystemMouseCursors.click == object) {
      return {
        'cursor': 'click',
        'type': 'system',
      };
    } else if (SystemMouseCursors.contextMenu == object) {
      return {
        'cursor': 'contextMenu',
        'type': 'system',
      };
    } else if (SystemMouseCursors.copy == object) {
      return {
        'cursor': 'copy',
        'type': 'system',
      };
    } else if (SystemMouseCursors.disappearing == object) {
      return {
        'cursor': 'disappearing',
        'type': 'system',
      };
    } else if (SystemMouseCursors.forbidden == object) {
      return {
        'cursor': 'forbidden',
        'type': 'system',
      };
    } else if (SystemMouseCursors.grab == object) {
      return {
        'cursor': 'grab',
        'type': 'system',
      };
    } else if (SystemMouseCursors.grabbing == object) {
      return {
        'cursor': 'grabbing',
        'type': 'system',
      };
    } else if (SystemMouseCursors.help == object) {
      return {
        'cursor': 'help',
        'type': 'system',
      };
    } else if (SystemMouseCursors.move == object) {
      return {
        'cursor': 'move',
        'type': 'system',
      };
    } else if (SystemMouseCursors.none == object) {
      return {
        'cursor': 'none',
        'type': 'system',
      };
    } else if (SystemMouseCursors.precise == object) {
      return {
        'cursor': 'precise',
        'type': 'system',
      };
    } else if (SystemMouseCursors.progress == object) {
      return {
        'cursor': 'progress',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeColumn == object) {
      return {
        'cursor': 'resizeColumn',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeDown == object) {
      return {
        'cursor': 'resizeDown',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeDownLeft == object) {
      return {
        'cursor': 'resizeDownLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeDownRight == object) {
      return {
        'cursor': 'resizeDownRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeLeft == object) {
      return {
        'cursor': 'resizeLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeRight == object) {
      return {
        'cursor': 'resizeRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeRow == object) {
      return {
        'cursor': 'resizeRow',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUp == object) {
      return {
        'cursor': 'resizeUp',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpDown == object) {
      return {
        'cursor': 'resizeUpDown',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpLeft == object) {
      return {
        'cursor': 'resizeUpLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpLeftDownRight == object) {
      return {
        'cursor': 'resizeUpLeftDownRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpRight == object) {
      return {
        'cursor': 'resizeUpRight',
        'type': 'system',
      };
    } else if (SystemMouseCursors.resizeUpRightDownLeft == object) {
      return {
        'cursor': 'resizeUpRightDownLeft',
        'type': 'system',
      };
    } else if (SystemMouseCursors.text == object) {
      return {
        'cursor': 'text',
        'type': 'system',
      };
    } else if (SystemMouseCursors.verticalText == object) {
      return {
        'cursor': 'verticalText',
        'type': 'system',
      };
    } else if (SystemMouseCursors.wait == object) {
      return {
        'cursor': 'wait',
        'type': 'system',
      };
    } else if (SystemMouseCursors.zoomIn == object) {
      return {
        'cursor': 'zoomIn',
        'type': 'system',
      };
    } else if (SystemMouseCursors.zoomOut == object) {
      return {
        'cursor': 'zoomOut',
        'type': 'system',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class MouseCursorConverter
    extends JsonConverter<MouseCursor, Map<String, dynamic>> {
  const MouseCursorConverter();

  @override
  MouseCursor fromJson(Map<String, dynamic> json) {
    return const NullableMouseCursorConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(MouseCursor object) {
    return const NullableMouseCursorConverter().toJson(object)!;
  }
}
