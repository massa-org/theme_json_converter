part of theme_json_converter;

class NullableInputBorderConverter
    extends JsonConverter<InputBorder?, Map<String, dynamic>?> {
  const NullableInputBorderConverter();

  @override
  InputBorder? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    String? type = json['type'];

    switch (type) {
      case 'outline':
        return OutlineInputBorder(
          borderRadius: const NullableBorderRadiusConverter().fromJson(
                json['borderRadius'],
              ) ??
              const BorderRadius.all(Radius.circular(4.0)),
          borderSide: const NullableBorderSideConverter().fromJson(
                json['borderSide'],
              ) ??
              const BorderSide(),
          gapPadding: ((json['gapPadding'] ?? 4.0) as num).toDouble(),
        );

      case 'underline':
        return UnderlineInputBorder(
          borderRadius: const NullableBorderRadiusConverter().fromJson(
                json['borderRadius'],
              ) ??
              const BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
          borderSide: const NullableBorderSideConverter().fromJson(
                json['borderSide'],
              ) ??
              const BorderSide(),
        );
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  Map<String, dynamic>? toJson(InputBorder? object) {
    if (object == null) return null;

    if (object is OutlineInputBorder) {
      return {
        'borderRadius':
            const NullableBorderRadiusConverter().toJson(object.borderRadius),
        'borderSide':
            const NullableBorderSideConverter().toJson(object.borderSide),
        'gapPadding': object.gapPadding,
        'type': 'outline',
      };
    } else if (object is UnderlineInputBorder) {
      return {
        'borderRadius':
            const NullableBorderRadiusConverter().toJson(object.borderRadius),
        'borderSide':
            const NullableBorderSideConverter().toJson(object.borderSide),
        'type': 'underline',
      };
    }

    throw 'Json_Unsuported_Value';
  }
}

class InputBorderConverter
    extends JsonConverter<InputBorder, Map<String, dynamic>> {
  const InputBorderConverter();

  @override
  InputBorder fromJson(Map<String, dynamic> json) {
    return const NullableInputBorderConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(InputBorder object) {
    return const NullableInputBorderConverter().toJson(object)!;
  }
}
