part of theme_json_converter;

class NullableColorConverter extends JsonConverter<Color?, String?> {
  const NullableColorConverter();

  @override
  Color? fromJson(String? json) {
    if (json == null) return null;

    var i = 0;

    if (json.startsWith('#') == true) {
      json = json.substring(1);
    }

    if (json.length == 3) {
      json = json.substring(0, 1) +
          json.substring(0, 1) +
          json.substring(1, 2) +
          json.substring(1, 2) +
          json.substring(2, 3) +
          json.substring(2, 3);
    }

    if (json.length == 6 || json.length == 8) {
      i = int.parse(json, radix: 16);

      if (json.length != 8) {
        i = 0xff000000 + i;
      }

      return Color(i);
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(Color? value) {
    if (value == null) return null;

    var hex = value.value.toRadixString(16).padLeft(8, '0');
    return '#$hex';

    throw 'Json_Unsuported_Value';
  }
}

class ColorConverter extends JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) {
    return const NullableColorConverter().fromJson(json)!;
  }

  @override
  String toJson(Color value) {
    return const NullableColorConverter().toJson(value)!;
  }
}
