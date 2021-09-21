part of theme_json_converter;

class NullableScrollPhysicsConverter
    extends JsonConverter<ScrollPhysics?, Map<String, dynamic>?> {
  const NullableScrollPhysicsConverter();

  @override
  ScrollPhysics? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    var type = json['type'];

    switch (type) {
      case 'always':
        return AlwaysScrollableScrollPhysics(
          parent: const NullableScrollPhysicsConverter().fromJson(
            json['parent'],
          ),
        );

      case 'bouncing':
        return BouncingScrollPhysics(
          parent: const NullableScrollPhysicsConverter().fromJson(
            json['parent'],
          ),
        );

      case 'clamping':
        return ClampingScrollPhysics(
          parent: const NullableScrollPhysicsConverter().fromJson(
            json['parent'],
          ),
        );

      case 'fixedExtent':
        return FixedExtentScrollPhysics(
          parent: const NullableScrollPhysicsConverter().fromJson(
            json['parent'],
          ),
        );

      case 'never':
        return NeverScrollableScrollPhysics(
          parent: const NullableScrollPhysicsConverter().fromJson(
            json['parent'],
          ),
        );

      case 'page':
        return PageScrollPhysics(
          parent: const NullableScrollPhysicsConverter().fromJson(
            json['parent'],
          ),
        );

      case 'rangeMaintaining':
        return RangeMaintainingScrollPhysics(
          parent: const NullableScrollPhysicsConverter().fromJson(
            json['parent'],
          ),
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(ScrollPhysics? value) {
    if (value == null) return null;

    String? type;

    if (value is AlwaysScrollableScrollPhysics) {
      type = 'always';
    } else if (value is BouncingScrollPhysics) {
      type = 'bouncing';
    } else if (value is ClampingScrollPhysics) {
      type = 'clamping';
    } else if (value is FixedExtentScrollPhysics) {
      type = 'fixedExtent';
    } else if (value is NeverScrollableScrollPhysics) {
      type = 'never';
    } else if (value is PageScrollPhysics) {
      type = 'page';
    } else if (value is RangeMaintainingScrollPhysics) {
      type = 'rangeMaintaining';
    }

    if (type == null) {
      throw Exception(
          'Unknown ScrollPhysics class encounted: ${value.runtimeType}');
    }
    return {
      'parent': const NullableScrollPhysicsConverter().toJson(value.parent),
      'type': type,
    };

    throw 'Json_Unsuported_Value';
  }
}

class ScrollPhysicsConverter
    extends JsonConverter<ScrollPhysics, Map<String, dynamic>> {
  const ScrollPhysicsConverter();

  @override
  ScrollPhysics fromJson(Map<String, dynamic> json) {
    return const NullableScrollPhysicsConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ScrollPhysics value) {
    return const NullableScrollPhysicsConverter().toJson(value)!;
  }
}
