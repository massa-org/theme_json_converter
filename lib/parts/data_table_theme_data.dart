part of theme_json_converter;

class NullableDataTableThemeDataConverter
    extends JsonConverter<DataTableThemeData?, Map<String, dynamic>?> {
  const NullableDataTableThemeDataConverter();

  @override
  DataTableThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return DataTableThemeData(
      columnSpacing: (json['columnSpacing'] as num?)?.toDouble(),
      dataRowColor:
          const NullableMaterialStatePropertyColorConverter().fromJson(
        json['dataRowColor'],
      ),
      dataRowHeight: (json['dataRowHeight'] as num?)?.toDouble(),
      dataTextStyle: const NullableTextStyleConverter().fromJson(
        json['dataTextStyle'],
      ),
      dividerThickness: (json['dividerThickness'] as num?)?.toDouble(),
      headingRowColor:
          const NullableMaterialStatePropertyColorConverter().fromJson(
        json['headingRowColor'],
      ),
      headingRowHeight: (json['headingRowHeight'] as num?)?.toDouble(),
      headingTextStyle: const NullableTextStyleConverter().fromJson(
        json['headingTextStyle'],
      ),
      horizontalMargin: (json['horizontalMargin'] as num?)?.toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(DataTableThemeData? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'columnSpacing': value.columnSpacing,
      'dataRowColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        value.dataRowColor,
      ),
      'dataRowHeight': value.dataRowHeight,
      'dataTextStyle': const NullableTextStyleConverter().toJson(
        value.dataTextStyle,
      ),
      'dividerThickness': value.dividerThickness,
      'headingRowColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        value.headingRowColor,
      ),
      'headingRowHeight': value.headingRowHeight,
      'headingTextStyle': const NullableTextStyleConverter().toJson(
        value.headingTextStyle,
      ),
      'horizontalMargin': value.horizontalMargin,
    };

    throw 'Json_Unsuported_Value';
  }
}

class DataTableThemeDataConverter
    extends JsonConverter<DataTableThemeData, Map<String, dynamic>> {
  const DataTableThemeDataConverter();

  @override
  DataTableThemeData fromJson(Map<String, dynamic> json) {
    return const NullableDataTableThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(DataTableThemeData value) {
    return const NullableDataTableThemeDataConverter().toJson(value)!;
  }
}
