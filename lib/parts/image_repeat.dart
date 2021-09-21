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
  String? toJson(ImageRepeat? value) {
    if (value == null) return null;

    switch (value) {
      case ImageRepeat.noRepeat:
        return 'noRepeat';
        break;
      case ImageRepeat.repeat:
        return 'repeat';
        break;
      case ImageRepeat.repeatX:
        return 'repeatX';
        break;
      case ImageRepeat.repeatY:
        return 'repeatY';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class ImageRepeatConverter extends JsonConverter<ImageRepeat, String> {
  const ImageRepeatConverter();

  @override
  ImageRepeat fromJson(String json) {
    return const NullableImageRepeatConverter().fromJson(json)!;
  }

  @override
  String toJson(ImageRepeat value) {
    return const NullableImageRepeatConverter().toJson(value)!;
  }
}
