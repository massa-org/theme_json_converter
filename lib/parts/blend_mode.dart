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
  String? toJson(BlendMode? value) {
    if (value == null) return null;

    switch (value) {
      case BlendMode.clear:
        return 'clear';
        break;

      case BlendMode.color:
        return 'color';
        break;

      case BlendMode.colorBurn:
        return 'colorBurn';
        break;

      case BlendMode.colorDodge:
        return 'colorDodge';
        break;

      case BlendMode.darken:
        return 'darken';
        break;

      case BlendMode.difference:
        return 'difference';
        break;

      case BlendMode.dst:
        return 'dst';
        break;

      case BlendMode.dstATop:
        return 'dstATop';
        break;

      case BlendMode.dstIn:
        return 'dstIn';
        break;

      case BlendMode.dstOut:
        return 'dstOut';
        break;

      case BlendMode.dstOver:
        return 'dstOver';
        break;

      case BlendMode.exclusion:
        return 'exclusion';
        break;

      case BlendMode.hardLight:
        return 'hardLight';
        break;

      case BlendMode.hue:
        return 'hue';
        break;

      case BlendMode.lighten:
        return 'lighten';
        break;

      case BlendMode.luminosity:
        return 'luminosity';
        break;

      case BlendMode.modulate:
        return 'modulate';
        break;

      case BlendMode.multiply:
        return 'multiply';
        break;

      case BlendMode.overlay:
        return 'overlay';
        break;

      case BlendMode.plus:
        return 'plus';
        break;

      case BlendMode.saturation:
        return 'saturation';
        break;

      case BlendMode.screen:
        return 'screen';
        break;

      case BlendMode.softLight:
        return 'softLight';
        break;

      case BlendMode.src:
        return 'src';
        break;

      case BlendMode.srcATop:
        return 'srcATop';
        break;

      case BlendMode.srcIn:
        return 'srcIn';
        break;

      case BlendMode.srcOut:
        return 'srcOut';
        break;

      case BlendMode.srcOver:
        return 'srcOver';
        break;

      case BlendMode.xor:
        return 'xor';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class BlendModeConverter extends JsonConverter<BlendMode, String> {
  const BlendModeConverter();

  @override
  BlendMode fromJson(String json) {
    return const NullableBlendModeConverter().fromJson(json)!;
  }

  @override
  String toJson(BlendMode value) {
    return const NullableBlendModeConverter().toJson(value)!;
  }
}
