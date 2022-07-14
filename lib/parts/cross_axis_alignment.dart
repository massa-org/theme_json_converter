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
  String? toJson(CrossAxisAlignment? object) {
    if (object == null) return null;

    switch (object) {
      case CrossAxisAlignment.baseline:
        return 'baseline';
      case CrossAxisAlignment.center:
        return 'center';
      case CrossAxisAlignment.end:
        return 'end';
      case CrossAxisAlignment.start:
        return 'start';
      case CrossAxisAlignment.stretch:
        return 'stretch';
    }
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
  String toJson(CrossAxisAlignment object) {
    return const NullableCrossAxisAlignmentConverter().toJson(object)!;
  }
}
