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
  String? toJson(FontWeight? value) {
    if (value == null) return null;

    switch (value) {
      // case FontWeight.bold:
      //   return 'bold';
      //   break;

      // case FontWeight.normal:
      //   return 'normal';
      //   break;

      case FontWeight.w100:
        return 'w100';
        break;

      case FontWeight.w200:
        return 'w200';
        break;

      case FontWeight.w300:
        return 'w300';
        break;

      case FontWeight.w400:
        return 'w400';
        break;

      case FontWeight.w500:
        return 'w500';
        break;

      case FontWeight.w600:
        return 'w600';
        break;

      case FontWeight.w700:
        return 'w700';
        break;

      case FontWeight.w800:
        return 'w800';
        break;

      case FontWeight.w900:
        return 'w900';
        break;
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
  String toJson(FontWeight value) {
    return const NullableFontWeightConverter().toJson(value)!;
  }
}
