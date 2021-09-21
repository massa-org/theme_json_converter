part of theme_json_converter;

class NullableCrossAxisAlignmentConverter
    extends JsonConverter<CrossAxisAlignment?, String?> {
  const NullableCrossAxisAlignmentConverter();

  @override
  CrossAxisAlignment? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'baseline':
        return CrossAxisAlignment.baseline;

      case 'center':
        return CrossAxisAlignment.center;

      case 'end':
        return CrossAxisAlignment.end;

      case 'start':
        return CrossAxisAlignment.start;

      case 'stretch':
        return CrossAxisAlignment.stretch;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(CrossAxisAlignment? value) {
    if (value == null) return null;

    switch (value) {
      case CrossAxisAlignment.baseline:
        return 'baseline';
        break;
      case CrossAxisAlignment.center:
        return 'center';
        break;
      case CrossAxisAlignment.end:
        return 'end';
        break;
      case CrossAxisAlignment.start:
        return 'start';
        break;
      case CrossAxisAlignment.stretch:
        return 'stretch';
        break;
    }

    throw 'Json_Unsuported_Value';
  }
}

class CrossAxisAlignmentConverter
    extends JsonConverter<CrossAxisAlignment, String> {
  const CrossAxisAlignmentConverter();

  @override
  CrossAxisAlignment fromJson(String json) {
    return const NullableCrossAxisAlignmentConverter().fromJson(json)!;
  }

  @override
  String toJson(CrossAxisAlignment value) {
    return const NullableCrossAxisAlignmentConverter().toJson(value)!;
  }
}
