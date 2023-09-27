// ignore_for_file: deprecated_member_use

part of theme_json_converter;

class NullableScrollbarThemeDataConverter
    extends JsonConverter<ScrollbarThemeData?, Map<String, dynamic>?> {
  const NullableScrollbarThemeDataConverter();

  @override
  ScrollbarThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return ScrollbarThemeData(
      crossAxisMargin: (json['crossAxisMargin'] as num?)?.toDouble(),
      trackVisibility: const NullableMaterialStatePropertyBoolConverter()
          .fromJson(json['trackVisibility']),
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
  Map<String, dynamic>? toJson(ScrollbarThemeData? object) {
    if (object == null) return null;

    return {
      'crossAxisMargin': object.crossAxisMargin,
      'trackVisibility': const NullableMaterialStatePropertyBoolConverter()
          .toJson(object.trackVisibility),
      'mainAxisMargin': object.mainAxisMargin,
      'minThumbLength': object.minThumbLength,
      'radius': const NullableRadiusConverter().toJson(object.radius),
      'showTrackOnHover': object.showTrackOnHover,
      'thickness': const NullableMaterialStatePropertyDoubleConverter().toJson(
        object.thickness,
      ),
    };
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
  Map<String, dynamic> toJson(ScrollbarThemeData object) {
    return const NullableScrollbarThemeDataConverter().toJson(object)!;
  }
}
