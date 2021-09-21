part of theme_json_converter;

class NullableGradientConverter
    extends JsonConverter<Gradient?, Map<String, dynamic>?> {
  const NullableGradientConverter();

  @override
  Gradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    var type = json['type'];

    switch (type) {
      case 'linear':
        return LinearGradient(
          begin: const NullableAlignmentConverter().fromJson(
                json['begin'],
              ) ??
              Alignment.centerLeft,
          colors: _decodeStringList<Color>(
            json['colors'],
            (json) {
              var color = const NullableColorConverter().fromJson(json);

              return color!;
            },
          )!,
          end: const NullableAlignmentConverter().fromJson(
                json['end'],
              ) ??
              Alignment.centerRight,
          stops: _decodeDynamicList<double>(
            json['stops'],
            (json) => (json as num).toDouble(),
          ),
          tileMode: const NullableTileModeConverter().fromJson(
                json['tileMode'],
              ) ??
              TileMode.clamp,
          transform: const NullableGradientTransformConverter().fromJson(
            json['transform'],
          ),
        );

      case 'radial':
        return RadialGradient(
          center: const NullableAlignmentConverter().fromJson(
                json['center'],
              ) ??
              Alignment.center,
          colors: _decodeStringList<Color>(
            json['colors'],
            (json) => const NullableColorConverter().fromJson(json)!,
          )!,
          focal: const NullableAlignmentConverter().fromJson(
            json['focal'],
          ),
          focalRadius: ((json['focalRadius'] ?? 0.0) as num).toDouble(),
          radius: ((json['radius'] ?? 0.5) as num).toDouble(),
          stops: _decodeDynamicList<double>(
            json['stops'],
            (json) => (json as num).toDouble(),
          ),
          tileMode: const NullableTileModeConverter().fromJson(
                json['tileMode'],
              ) ??
              TileMode.clamp,
          transform: const NullableGradientTransformConverter().fromJson(
            json['transform'],
          ),
        );

      case 'sweep':
        return SweepGradient(
          center: const NullableAlignmentConverter().fromJson(
                json['center'],
              ) ??
              Alignment.center,
          colors: _decodeStringList<Color>(
            json['colors'],
            (json) => const NullableColorConverter().fromJson(json)!,
          )!,
          endAngle: ((json['endAngle'] ?? math.pi * 2) as num).toDouble(),
          startAngle: ((json['startAngle'] ?? 0.0) as num).toDouble(),
          stops: _decodeDynamicList<double>(
            json['stops'],
            (json) => (json as num).toDouble(),
          ),
          tileMode: const NullableTileModeConverter().fromJson(
                json['tileMode'],
              ) ??
              TileMode.clamp,
          transform: const NullableGradientTransformConverter().fromJson(
            json['transform'],
          ),
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(Gradient? value) {
    if (value == null) return null;

    if (value is LinearGradient) {
      return {
        'begin': const NullableAlignmentConverter()
            .toJson(value.begin as Alignment?),
        'colors': _encodeList<String?>(
          value.colors,
          (value) => const NullableColorConverter().toJson(value),
        ),
        'end':
            const NullableAlignmentConverter().toJson(value.end as Alignment?),
        'stops': value.stops,
        'tileMode': const NullableTileModeConverter().toJson(value.tileMode),
        'transform':
            const NullableGradientTransformConverter().toJson(value.transform),
        'type': 'linear',
      };
    } else if (value is RadialGradient) {
      return {
        'center': const NullableAlignmentConverter()
            .toJson(value.center as Alignment?),
        'colors': _encodeList<String?>(
          value.colors,
          (value) => const NullableColorConverter().toJson(value),
        ),
        'focal': const NullableAlignmentConverter()
            .toJson(value.focal as Alignment?),
        'focalRadius': value.focalRadius,
        'radius': value.radius,
        'stops': value.stops,
        'tileMode': const NullableTileModeConverter().toJson(value.tileMode),
        'transform':
            const NullableGradientTransformConverter().toJson(value.transform),
        'type': 'radial',
      };
    } else if (value is SweepGradient) {
      return {
        'center': const NullableAlignmentConverter()
            .toJson(value.center as Alignment?),
        'colors': _encodeList<String?>(
          value.colors,
          (value) => const NullableColorConverter().toJson(value),
        ),
        'endAngle': value.endAngle,
        'startAngle': value.startAngle,
        'stops': value.stops,
        'tileMode': const NullableTileModeConverter().toJson(value.tileMode),
        'transform':
            const NullableGradientTransformConverter().toJson(value.transform),
        'type': 'sweep',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class GradientConverter extends JsonConverter<Gradient, Map<String, dynamic>> {
  const GradientConverter();

  @override
  Gradient fromJson(Map<String, dynamic> json) {
    return const NullableGradientConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(Gradient value) {
    return const NullableGradientConverter().toJson(value)!;
  }
}
