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
  Map<String, dynamic>? toJson(Gradient? object) {
    if (object == null) return null;

    if (object is LinearGradient) {
      return {
        'begin': const NullableAlignmentConverter()
            .toJson(object.begin as Alignment?),
        'colors': _encodeList<String?>(
          object.colors,
          (object) => const NullableColorConverter().toJson(object),
        ),
        'end':
            const NullableAlignmentConverter().toJson(object.end as Alignment?),
        'stops': object.stops,
        'tileMode': const NullableTileModeConverter().toJson(object.tileMode),
        'transform':
            const NullableGradientTransformConverter().toJson(object.transform),
        'type': 'linear',
      };
    } else if (object is RadialGradient) {
      return {
        'center': const NullableAlignmentConverter()
            .toJson(object.center as Alignment?),
        'colors': _encodeList<String?>(
          object.colors,
          (object) => const NullableColorConverter().toJson(object),
        ),
        'focal': const NullableAlignmentConverter()
            .toJson(object.focal as Alignment?),
        'focalRadius': object.focalRadius,
        'radius': object.radius,
        'stops': object.stops,
        'tileMode': const NullableTileModeConverter().toJson(object.tileMode),
        'transform':
            const NullableGradientTransformConverter().toJson(object.transform),
        'type': 'radial',
      };
    } else if (object is SweepGradient) {
      return {
        'center': const NullableAlignmentConverter()
            .toJson(object.center as Alignment?),
        'colors': _encodeList<String?>(
          object.colors,
          (object) => const NullableColorConverter().toJson(object),
        ),
        'endAngle': object.endAngle,
        'startAngle': object.startAngle,
        'stops': object.stops,
        'tileMode': const NullableTileModeConverter().toJson(object.tileMode),
        'transform':
            const NullableGradientTransformConverter().toJson(object.transform),
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
  Map<String, dynamic> toJson(Gradient object) {
    return const NullableGradientConverter().toJson(object)!;
  }
}
