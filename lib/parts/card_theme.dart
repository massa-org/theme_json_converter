part of theme_json_converter;

class NullableCardThemeConverter
    extends JsonConverter<CardTheme?, Map<String, dynamic>?> {
  const NullableCardThemeConverter();

  @override
  CardTheme? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return CardTheme(
      clipBehavior: const NullableClipConverter().fromJson(
        json['clipBehavior'],
      ),
      color: const NullableColorConverter().fromJson(
        json['color'],
      ),
      elevation: (json['elevation'] as num?)?.toDouble(),
      margin: const NullableEdgeInsetsGeometryConverter().fromJson(
        json['margin'],
      ),
      shadowColor: const NullableColorConverter().fromJson(
        json['shadowColor'],
      ),
      shape: const NullableShapeBorderConverter().fromJson(
        json['shape'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(CardTheme? object) {
    if (object == null) return null;

    return <String, dynamic>{
      'clipBehavior': const NullableClipConverter().toJson(object.clipBehavior),
      'color': const NullableColorConverter().toJson(object.color),
      'elevation': object.elevation,
      'margin': const NullableEdgeInsetsGeometryConverter()
          .toJson(object.margin as EdgeInsets?),
      'shadowColor': const NullableColorConverter().toJson(object.shadowColor),
      'shape': const NullableShapeBorderConverter().toJson(object.shape),
    };
  }
}

class CardThemeConverter
    extends JsonConverter<CardTheme, Map<String, dynamic>> {
  const CardThemeConverter();

  @override
  CardTheme fromJson(Map<String, dynamic> json) {
    return const NullableCardThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(CardTheme object) {
    return const NullableCardThemeConverter().toJson(object)!;
  }
}
