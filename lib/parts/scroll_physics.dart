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
  Map<String, dynamic>? toJson(ScrollPhysics? object) {
    if (object == null) return null;

    String? type;

    if (object is AlwaysScrollableScrollPhysics) {
      type = 'always';
    } else if (object is BouncingScrollPhysics) {
      type = 'bouncing';
    } else if (object is ClampingScrollPhysics) {
      type = 'clamping';
    } else if (object is FixedExtentScrollPhysics) {
      type = 'fixedExtent';
    } else if (object is NeverScrollableScrollPhysics) {
      type = 'never';
    } else if (object is PageScrollPhysics) {
      type = 'page';
    } else if (object is RangeMaintainingScrollPhysics) {
      type = 'rangeMaintaining';
    }

    if (type == null) {
      throw Exception(
          'Unknown ScrollPhysics class encounted: ${object.runtimeType}');
    }
    return {
      'parent': const NullableScrollPhysicsConverter().toJson(object.parent),
      'type': type,
    };
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
  Map<String, dynamic> toJson(ScrollPhysics object) {
    return const NullableScrollPhysicsConverter().toJson(object)!;
  }
}
