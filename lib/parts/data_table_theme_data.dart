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
  Map<String, dynamic>? toJson(DataTableThemeData? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'columnSpacing': object.columnSpacing,
      'dataRowColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        object.dataRowColor,
      ),
      'dataRowHeight': object.dataRowHeight,
      'dataTextStyle': const NullableTextStyleConverter().toJson(
        object.dataTextStyle,
      ),
      'dividerThickness': object.dividerThickness,
      'headingRowColor':
          const NullableMaterialStatePropertyColorConverter().toJson(
        object.headingRowColor,
      ),
      'headingRowHeight': object.headingRowHeight,
      'headingTextStyle': const NullableTextStyleConverter().toJson(
        object.headingTextStyle,
      ),
      'horizontalMargin': object.horizontalMargin,
    };
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
  Map<String, dynamic> toJson(DataTableThemeData object) {
    return const NullableDataTableThemeDataConverter().toJson(object)!;
  }
}
