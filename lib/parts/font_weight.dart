part of theme_json_converter;

class NullableFontWeightConverter extends JsonConverter<FontWeight?, String?> {
  const NullableFontWeightConverter();

  @override
  FontWeight? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'bold':
        return FontWeight.bold;

      case 'normal':
        return FontWeight.normal;

      case 'w100':
        return FontWeight.w100;

      case 'w200':
        return FontWeight.w200;

      case 'w300':
        return FontWeight.w300;

      case 'w400':
        return FontWeight.w400;

      case 'w500':
        return FontWeight.w500;

      case 'w600':
        return FontWeight.w600;

      case 'w700':
        return FontWeight.w700;

      case 'w800':
        return FontWeight.w800;

      case 'w900':
        return FontWeight.w900;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(FontWeight? object) {
    if (object == null) return null;

    switch (object) {
      // case FontWeight.bold:
      //   return 'bold';
      //   break;

      // case FontWeight.normal:
      //   return 'normal';
      //   break;

      case FontWeight.w100:
        return 'w100';

      case FontWeight.w200:
        return 'w200';

      case FontWeight.w300:
        return 'w300';

      case FontWeight.w400:
        return 'w400';

      case FontWeight.w500:
        return 'w500';

      case FontWeight.w600:
        return 'w600';

      case FontWeight.w700:
        return 'w700';

      case FontWeight.w800:
        return 'w800';

      case FontWeight.w900:
        return 'w900';
    }

    throw 'Json_Unsuported_Value';
  }
}

class FontWeightConverter extends JsonConverter<FontWeight, String> {
  const FontWeightConverter();

  @override
  FontWeight fromJson(String json) {
    return const NullableFontWeightConverter().fromJson(json)!;
  }

  @override
  String toJson(FontWeight object) {
    return const NullableFontWeightConverter().toJson(object)!;
  }
}
