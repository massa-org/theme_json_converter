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
  String? toJson(HitTestBehavior? value) {
    if (value == null) return null;

    switch (value) {
      case HitTestBehavior.deferToChild:
        return 'deferToChild';
        break;

      case HitTestBehavior.opaque:
        return 'opaque';
        break;

      case HitTestBehavior.translucent:
        return 'translucent';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class HitTestBehaviorConverter extends JsonConverter<HitTestBehavior, String> {
  const HitTestBehaviorConverter();

  @override
  HitTestBehavior fromJson(String json) {
    return const NullableHitTestBehaviorConverter().fromJson(json)!;
  }

  @override
  String toJson(HitTestBehavior value) {
    return const NullableHitTestBehaviorConverter().toJson(value)!;
  }
}
