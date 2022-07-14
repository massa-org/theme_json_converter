part of theme_json_converter;

class NullableBlendModeConverter extends JsonConverter<BlendMode?, String?> {
  const NullableBlendModeConverter();

  @override
  BlendMode? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'clear':
        return BlendMode.clear;

      case 'color':
        return BlendMode.color;

      case 'colorBurn':
        return BlendMode.colorBurn;

      case 'colorDodge':
        return BlendMode.colorDodge;

      case 'darken':
        return BlendMode.darken;

      case 'difference':
        return BlendMode.difference;

      case 'dst':
        return BlendMode.dst;

      case 'dstATop':
        return BlendMode.dstATop;

      case 'dstIn':
        return BlendMode.dstIn;

      case 'dstOut':
        return BlendMode.dstOut;

      case 'dstOver':
        return BlendMode.dstOver;

      case 'exclusion':
        return BlendMode.exclusion;

      case 'hardLight':
        return BlendMode.hardLight;

      case 'hue':
        return BlendMode.hue;

      case 'lighten':
        return BlendMode.lighten;

      case 'luminosity':
        return BlendMode.luminosity;

      case 'modulate':
        return BlendMode.modulate;

      case 'multiply':
        return BlendMode.multiply;

      case 'overlay':
        return BlendMode.overlay;

      case 'plus':
        return BlendMode.plus;

      case 'saturation':
        return BlendMode.saturation;

      case 'screen':
        return BlendMode.screen;

      case 'softLight':
        return BlendMode.softLight;

      case 'src':
        return BlendMode.src;

      case 'srcATop':
        return BlendMode.srcATop;

      case 'srcIn':
        return BlendMode.srcIn;

      case 'srcOut':
        return BlendMode.srcOut;

      case 'srcOver':
        return BlendMode.srcOver;

      case 'xor':
        return BlendMode.xor;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(BlendMode? object) {
    if (object == null) return null;

    switch (object) {
      case BlendMode.clear:
        return 'clear';

      case BlendMode.color:
        return 'color';

      case BlendMode.colorBurn:
        return 'colorBurn';

      case BlendMode.colorDodge:
        return 'colorDodge';

      case BlendMode.darken:
        return 'darken';

      case BlendMode.difference:
        return 'difference';

      case BlendMode.dst:
        return 'dst';

      case BlendMode.dstATop:
        return 'dstATop';

      case BlendMode.dstIn:
        return 'dstIn';

      case BlendMode.dstOut:
        return 'dstOut';

      case BlendMode.dstOver:
        return 'dstOver';

      case BlendMode.exclusion:
        return 'exclusion';

      case BlendMode.hardLight:
        return 'hardLight';

      case BlendMode.hue:
        return 'hue';

      case BlendMode.lighten:
        return 'lighten';

      case BlendMode.luminosity:
        return 'luminosity';

      case BlendMode.modulate:
        return 'modulate';

      case BlendMode.multiply:
        return 'multiply';

      case BlendMode.overlay:
        return 'overlay';

      case BlendMode.plus:
        return 'plus';

      case BlendMode.saturation:
        return 'saturation';

      case BlendMode.screen:
        return 'screen';

      case BlendMode.softLight:
        return 'softLight';

      case BlendMode.src:
        return 'src';

      case BlendMode.srcATop:
        return 'srcATop';

      case BlendMode.srcIn:
        return 'srcIn';

      case BlendMode.srcOut:
        return 'srcOut';

      case BlendMode.srcOver:
        return 'srcOver';

      case BlendMode.xor:
        return 'xor';
    }
  }
}

class BlendModeConverter extends JsonConverter<BlendMode, String> {
  const BlendModeConverter();

  @override
  BlendMode fromJson(String json) {
    return const NullableBlendModeConverter().fromJson(json)!;
  }

  @override
  String toJson(BlendMode object) {
    return const NullableBlendModeConverter().toJson(object)!;
  }
}
