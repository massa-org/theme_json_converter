part of theme_json_converter;

class NullableBoxFitConverter extends JsonConverter<BoxFit?, String?> {
  const NullableBoxFitConverter();

  @override
  BoxFit? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'contain':
        return BoxFit.contain;

      case 'cover':
        return BoxFit.cover;

      case 'fill':
        return BoxFit.fill;

      case 'fitHeight':
        return BoxFit.fitHeight;

      case 'fitWidth':
        return BoxFit.fitWidth;

      case 'none':
        return BoxFit.none;

      case 'scaleDown':
        return BoxFit.scaleDown;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(BoxFit? value) {
    if (value == null) return null;

    switch (value) {
      case BoxFit.contain:
        return 'contain';
        break;

      case BoxFit.cover:
        return 'cover';
        break;

      case BoxFit.fill:
        return 'fill';
        break;

      case BoxFit.fitHeight:
        return 'fitHeight';
        break;

      case BoxFit.fitWidth:
        return 'fitWidth';
        break;

      case BoxFit.none:
        return 'none';
        break;

      case BoxFit.scaleDown:
        return 'scaleDown';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class BoxFitConverter extends JsonConverter<BoxFit, String> {
  const BoxFitConverter();

  @override
  BoxFit fromJson(String json) {
    return const NullableBoxFitConverter().fromJson(json)!;
  }

  @override
  String toJson(BoxFit value) {
    return const NullableBoxFitConverter().toJson(value)!;
  }
}
