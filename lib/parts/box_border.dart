part of theme_json_converter;

class NullableBoxBorderConverter
    extends JsonConverter<BoxBorder?, Map<String, dynamic>?> {
  const NullableBoxBorderConverter();

  @override
  BoxBorder? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    if (json['color'] != null ||
        json['style'] != null ||
        json['width'] != null) {
      var side = const NullableBorderSideConverter().fromJson(json)!;
      return Border.all(
        color: side.color,
        style: side.style,
        width: side.width,
      );
    } else {
      return Border(
        bottom: const NullableBorderSideConverter().fromJson(
              json['bottom'],
            ) ??
            BorderSide.none,
        left: const NullableBorderSideConverter().fromJson(
              json['left'],
            ) ??
            BorderSide.none,
        right: const NullableBorderSideConverter().fromJson(
              json['right'],
            ) ??
            BorderSide.none,
        top: const NullableBorderSideConverter().fromJson(
              json['top'],
            ) ??
            BorderSide.none,
      );
    }
  }

  @override
  Map<String, dynamic>? toJson(BoxBorder? object) {
    if (object == null) return null;
    if (object is Border) {
      return {
        'bottom': const NullableBorderSideConverter().toJson(object.bottom),
        'left': const NullableBorderSideConverter().toJson(object.left),
        'right': const NullableBorderSideConverter().toJson(object.right),
        'top': const NullableBorderSideConverter().toJson(object.top),
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class BoxBorderConverter
    extends JsonConverter<BoxBorder, Map<String, dynamic>> {
  const BoxBorderConverter();

  @override
  BoxBorder fromJson(Map<String, dynamic> json) {
    return const NullableBoxBorderConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(BoxBorder object) {
    return const NullableBoxBorderConverter().toJson(object)!;
  }
}
