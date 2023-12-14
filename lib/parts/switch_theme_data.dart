part of theme_json_converter;

class NullableSwitchThemeDataConverter
    extends JsonConverter<SwitchThemeData?, dynamic> {
  const NullableSwitchThemeDataConverter();

  @override
  SwitchThemeData? fromJson(json) =>
      const TypedNullableSwitchThemeDataConverter()
          .fromJson(json == null ? null : Map<String, dynamic>.from(json));

  @override
  dynamic toJson(object) =>
      const TypedNullableSwitchThemeDataConverter().toJson(object);
}

class TypedNullableSwitchThemeDataConverter
    extends JsonConverter<SwitchThemeData?, Map<String, dynamic>?> {
  const TypedNullableSwitchThemeDataConverter();
  @override
  SwitchThemeData? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    return SwitchThemeData(
      materialTapTargetSize:
          const NullableMaterialTapTargetSizeConverter().fromJson(
        json['materialTapTargetSize'],
      ),
      mouseCursor:
          const NullableMaterialStatePropertyMouseCursorConverter().fromJson(
        json['mouseCursor'],
      ),
      overlayColor:
          const NullableMaterialStatePropertyColorConverter().fromJson(
        json['overlayColor'],
      ),
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      thumbColor: const NullableMaterialStatePropertyColorConverter().fromJson(
        json['thumbColor'],
      ),
      trackColor: const NullableMaterialStatePropertyColorConverter().fromJson(
        json['trackColor'],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(SwitchThemeData? object) {
    throw UnimplementedError();
  }
}

class SwitchThemeDataConverter extends JsonConverter<SwitchThemeData, dynamic> {
  const SwitchThemeDataConverter();

  @override
  SwitchThemeData fromJson(json) => const TypedSwitchThemeDataConverter()
      .fromJson(Map<String, dynamic>.from(json!));

  @override
  dynamic toJson(object) =>
      const TypedSwitchThemeDataConverter().toJson(object);
}

class TypedSwitchThemeDataConverter
    extends JsonConverter<SwitchThemeData, Map<String, dynamic>> {
  const TypedSwitchThemeDataConverter();
  @override
  SwitchThemeData fromJson(Map<String, dynamic> json) {
    return const NullableSwitchThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SwitchThemeData value) {
    return const NullableSwitchThemeDataConverter().toJson(value)!;
  }
}
