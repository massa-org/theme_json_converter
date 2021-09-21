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
  String? toJson(MaxLengthEnforcement? value) {
    if (value == null) return null;

    switch (value) {
      case MaxLengthEnforcement.enforced:
        return 'enforced';
        break;
      case MaxLengthEnforcement.none:
        return 'none';
        break;
      case MaxLengthEnforcement.truncateAfterCompositionEnds:
        return 'truncateAfterCompositionEnds';
        break;
    }

    throw 'Json_Unsuported_Value';
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
  String toJson(MaxLengthEnforcement value) {
    return const NullableMaxLengthEnforcementConverter().toJson(value)!;
  }
}
