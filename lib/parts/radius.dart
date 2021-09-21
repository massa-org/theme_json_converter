part of theme_json_converter;

class NullableRadiusConverter
    extends JsonConverter<Radius?, Map<String, dynamic>?> {
  const NullableRadiusConverter();

  @override
  Radius? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];

    switch (type) {
      case 'circular':
        return Radius.circular((json['radius'] as num).toDouble());

      case 'elliptical':
        return Radius.elliptical(
          ((json['x'] ?? 0) as num).toDouble(),
          ((json['y'] ?? 0) as num).toDouble(),
        );

      case 'zero':
        return Radius.zero;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(Radius? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'type': 'elliptical',
      'x': value.x,
      'y': value.y,
    };

    throw 'Json_Unsuported_Value';
  }
}

class RadiusConverter extends JsonConverter<Radius, Map<String, dynamic>> {
  const RadiusConverter();

  @override
  Radius fromJson(Map<String, dynamic> json) {
    return const NullableRadiusConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Radius value) {
    return const NullableRadiusConverter().toJson(value)!;
  }
}
