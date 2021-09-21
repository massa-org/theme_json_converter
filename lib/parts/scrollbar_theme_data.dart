part of theme_json_converter;

class NullableScrollbarThemeDataConverter
    extends JsonConverter<ScrollbarThemeData?, Map<String, dynamic>?> {
  const NullableScrollbarThemeDataConverter();

  @override
  ScrollbarThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ScrollbarThemeData(
      crossAxisMargin: (json['crossAxisMargin'] as num?)?.toDouble(),
      isAlwaysShown: json['isAlwaysShown'] == null
          ? null
          : (json['isAlwaysShown'] as bool),
      mainAxisMargin: (json['mainAxisMargin'] as num?)?.toDouble(),
      minThumbLength: (json['minThumbLength'] as num?)?.toDouble(),
      radius: const NullableRadiusConverter().fromJson(
        json['radius'],
      ),
      showTrackOnHover: json['showTrackOnHover'] == null
          ? null
          : (json['showTrackOnHover'] as bool),
      thickness: const NullableMaterialStatePropertyDoubleConverter().fromJson(
        json['thickness'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(ScrollbarThemeData? value) {
    if (value == null) return null;

    return {
      'crossAxisMargin': value.crossAxisMargin,
      'isAlwaysShown': value.isAlwaysShown,
      'mainAxisMargin': value.mainAxisMargin,
      'minThumbLength': value.minThumbLength,
      'radius': const NullableRadiusConverter().toJson(value.radius),
      'showTrackOnHover': value.showTrackOnHover,
      'thickness': const NullableMaterialStatePropertyDoubleConverter().toJson(
        value.thickness,
      ),
    };

    throw 'Json_Unsuported_Value';
  }
}

class ScrollbarThemeDataConverter
    extends JsonConverter<ScrollbarThemeData, Map<String, dynamic>> {
  const ScrollbarThemeDataConverter();

  @override
  ScrollbarThemeData fromJson(Map<String, dynamic> json) {
    return const NullableScrollbarThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(ScrollbarThemeData value) {
    return const NullableScrollbarThemeDataConverter().toJson(value)!;
  }
}
