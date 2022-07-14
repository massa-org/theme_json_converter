part of theme_json_converter;

class NullableSwitchThemeDataConverter
    extends JsonConverter<SwitchThemeData?, Map<String, dynamic>?> {
  const NullableSwitchThemeDataConverter();

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

class SwitchThemeDataConverter
    extends JsonConverter<SwitchThemeData, Map<String, dynamic>> {
  const SwitchThemeDataConverter();

  @override
  SwitchThemeData fromJson(Map<String, dynamic> json) {
    return const NullableSwitchThemeDataConverter().fromJson(json)!;
  }

  @override
  Map<String, dynamic> toJson(SwitchThemeData object) {
    return const NullableSwitchThemeDataConverter().toJson(object)!;
  }
}
