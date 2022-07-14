part of theme_json_converter;

class NullableHitTestBehaviorConverter
    extends JsonConverter<HitTestBehavior?, String?> {
  const NullableHitTestBehaviorConverter();

  @override
  HitTestBehavior? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'deferToChild':
        return HitTestBehavior.deferToChild;

      case 'opaque':
        return HitTestBehavior.opaque;

      case 'translucent':
        return HitTestBehavior.translucent;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(HitTestBehavior? object) {
    if (object == null) return null;

    switch (object) {
      case HitTestBehavior.deferToChild:
        return 'deferToChild';

      case HitTestBehavior.opaque:
        return 'opaque';

      case HitTestBehavior.translucent:
        return 'translucent';
    }
  }
}

class HitTestBehaviorConverter extends JsonConverter<HitTestBehavior, String> {
  const HitTestBehaviorConverter();

  @override
  HitTestBehavior fromJson(String json) {
    return const NullableHitTestBehaviorConverter().fromJson(json)!;
  }

  @override
  String toJson(HitTestBehavior object) {
    return const NullableHitTestBehaviorConverter().toJson(object)!;
  }
}
