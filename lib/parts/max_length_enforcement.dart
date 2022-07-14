part of theme_json_converter;

class NullableMaxLengthEnforcementConverter
    extends JsonConverter<MaxLengthEnforcement?, String?> {
  const NullableMaxLengthEnforcementConverter();

  @override
  MaxLengthEnforcement? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'enforced':
        return MaxLengthEnforcement.enforced;

      case 'none':
        return MaxLengthEnforcement.none;

      case 'truncateAfterCompositionEnds':
        return MaxLengthEnforcement.truncateAfterCompositionEnds;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(MaxLengthEnforcement? object) {
    if (object == null) return null;

    switch (object) {
      case MaxLengthEnforcement.enforced:
        return 'enforced';
      case MaxLengthEnforcement.none:
        return 'none';
      case MaxLengthEnforcement.truncateAfterCompositionEnds:
        return 'truncateAfterCompositionEnds';
    }
  }
}

class MaxLengthEnforcementConverter
    extends JsonConverter<MaxLengthEnforcement, String> {
  const MaxLengthEnforcementConverter();

  @override
  MaxLengthEnforcement fromJson(String json) {
    return const NullableMaxLengthEnforcementConverter().fromJson(json)!;
  }

  @override
  String toJson(MaxLengthEnforcement object) {
    return const NullableMaxLengthEnforcementConverter().toJson(object)!;
  }
}
