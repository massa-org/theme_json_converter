part of theme_json_converter;

class NullableDividerThemeDataConverter
    extends JsonConverter<DividerThemeData?, Map<String, dynamic>?> {
  const NullableDividerThemeDataConverter();

  @override
  DividerThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return DividerThemeData(
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      endIndent: (json['endIndent'] as num?)?.toDouble(),
      indent: (json['indent'] as num?)?.toDouble(),
      space: (json['space'] as num?)?.toDouble(),
      thickness: (json['thickness'] as num?)?.toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(DividerThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'color': const NullableColorConverter().toJson(value.color),
      'endIndent': value.endIndent,
      'indent': value.indent,
      'space': value.space,
      'thickness': value.thickness,
    };

    throw 'Json_Unsuported_Value';
  }
}

class DividerThemeDataConverter
    extends JsonConverter<DividerThemeData, Map<String, dynamic>> {
  const DividerThemeDataConverter();

  @override
  DividerThemeData fromJson(Map<String, dynamic> json) {
    return const NullableDividerThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(DividerThemeData value) {
    return const NullableDividerThemeDataConverter().toJson(value)!;
  }
}
