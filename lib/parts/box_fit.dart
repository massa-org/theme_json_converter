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
  String? toJson(BoxFit? object) {
    if (object == null) return null;

    switch (object) {
      case BoxFit.contain:
        return 'contain';

      case BoxFit.cover:
        return 'cover';

      case BoxFit.fill:
        return 'fill';

      case BoxFit.fitHeight:
        return 'fitHeight';

      case BoxFit.fitWidth:
        return 'fitWidth';

      case BoxFit.none:
        return 'none';

      case BoxFit.scaleDown:
        return 'scaleDown';
    }
  }
}

class BoxFitConverter extends JsonConverter<BoxFit, String> {
  const BoxFitConverter();

  @override
  BoxFit fromJson(String json) {
    return const NullableBoxFitConverter().fromJson(json)!;
  }

  @override
  String toJson(BoxFit object) {
    return const NullableBoxFitConverter().toJson(object)!;
  }
}
