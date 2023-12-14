part of theme_json_converter;

class NullableCardThemeConverter extends JsonConverter<CardTheme?, dynamic> {
  const NullableCardThemeConverter();

  @override
  CardTheme? fromJson(json) => const TypedNullableCardThemeConverter()
      .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableCardThemeConverter().toJson(object);
}

class TypedNullableCardThemeConverter
    extends JsonConverter<CardTheme?, Map<String, dynamic>?> {
  const TypedNullableCardThemeConverter();
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
  Map<String, dynamic>? toJson(CardTheme? value) {
    if (value == null) return null;

    return <String, dynamic>{
      'clipBehavior': const NullableClipConverter().toJson(value.clipBehavior),
      'color': const NullableColorConverter().toJson(value.color),
      'elevation': value.elevation,
      'margin': const NullableEdgeInsetsGeometryConverter()
          .toJson(value.margin as EdgeInsets?),
      'shadowColor': const NullableColorConverter().toJson(value.shadowColor),
      'shape': const NullableShapeBorderConverter().toJson(value.shape),
    };

    throw 'Json_Unsuported_Value';
  }
}

class CardThemeConverter extends JsonConverter<CardTheme, dynamic> {
  const CardThemeConverter();

  @override
  CardTheme fromJson(json) => const TypedCardThemeConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) => const TypedCardThemeConverter().toJson(object);
}

class TypedCardThemeConverter
    extends JsonConverter<CardTheme, Map<String, dynamic>> {
  const TypedCardThemeConverter();
  @override
  CardTheme fromJson(Map<String, dynamic> json) {
    return const NullableCardThemeConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(CardTheme value) {
    return const NullableCardThemeConverter().toJson(value)!;
  }
}
