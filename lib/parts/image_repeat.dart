part of theme_json_converter;

class NullableImageRepeatConverter
    extends JsonConverter<ImageRepeat?, String?> {
  const NullableImageRepeatConverter();

  @override
  ImageRepeat? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'noRepeat':
        return ImageRepeat.noRepeat;

      case 'repeat':
        return ImageRepeat.repeat;

      case 'repeatX':
        return ImageRepeat.repeatX;

      case 'repeatY':
        return ImageRepeat.repeatY;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(ImageRepeat? object) {
    if (object == null) return null;

    switch (object) {
      case ImageRepeat.noRepeat:
        return 'noRepeat';
      case ImageRepeat.repeat:
        return 'repeat';
      case ImageRepeat.repeatX:
        return 'repeatX';
      case ImageRepeat.repeatY:
        return 'repeatY';
    }
  }
}

class ImageRepeatConverter extends JsonConverter<ImageRepeat, String> {
  const ImageRepeatConverter();

  @override
  ImageRepeat fromJson(String json) {
    return const NullableImageRepeatConverter().fromJson(json)!;
  }

  @override
  String toJson(ImageRepeat object) {
    return const NullableImageRepeatConverter().toJson(object)!;
  }
}
