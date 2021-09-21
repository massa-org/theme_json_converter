part of theme_json_converter;

class NullableFloatingActionButtonLocationConverter
    extends JsonConverter<FloatingActionButtonLocation?, String?> {
  const NullableFloatingActionButtonLocationConverter();

  @override
  FloatingActionButtonLocation? fromJson(String? json) {
    if (json == null) return null;

    switch (json) {
      case 'centerDocked':
        return FloatingActionButtonLocation.centerDocked;

      case 'centerFloat':
        return FloatingActionButtonLocation.centerFloat;

      case 'centerTop':
        return FloatingActionButtonLocation.centerTop;

      case 'endDocked':
        return FloatingActionButtonLocation.endDocked;

      case 'endFloat':
        return FloatingActionButtonLocation.endFloat;

      case 'endTop':
        return FloatingActionButtonLocation.endTop;

      case 'miniCenterDocked':
        return FloatingActionButtonLocation.miniCenterDocked;

      case 'miniCenterFloat':
        return FloatingActionButtonLocation.miniCenterFloat;

      case 'miniCenterTop':
        return FloatingActionButtonLocation.miniCenterTop;

      case 'miniEndDocked':
        return FloatingActionButtonLocation.miniEndDocked;

      case 'miniEndFloat':
        return FloatingActionButtonLocation.miniEndFloat;

      case 'miniEndTop':
        return FloatingActionButtonLocation.miniEndTop;

      case 'miniStartDocked':
        return FloatingActionButtonLocation.miniStartDocked;

      case 'miniStartFloat':
        return FloatingActionButtonLocation.miniStartFloat;

      case 'miniStartTop':
        return FloatingActionButtonLocation.miniStartTop;

      case 'startDocked':
        return FloatingActionButtonLocation.startDocked;

      case 'startFloat':
        return FloatingActionButtonLocation.startFloat;

      case 'startTop':
        return FloatingActionButtonLocation.startTop;
    }

    throw 'Unsuported_Json_Value';
  }

  @override
  String? toJson(FloatingActionButtonLocation? value) {
    if (value == null) return null;

    if (value == FloatingActionButtonLocation.centerDocked) {
      return 'centerDocked';
    } else if (value == FloatingActionButtonLocation.centerFloat) {
      return 'centerFloat';
    } else if (value == FloatingActionButtonLocation.centerTop) {
      return 'centerTop';
    } else if (value == FloatingActionButtonLocation.endDocked) {
      return 'endDocked';
    } else if (value == FloatingActionButtonLocation.endFloat) {
      return 'endFloat';
    } else if (value == FloatingActionButtonLocation.endTop) {
      return 'endTop';
    } else if (value == FloatingActionButtonLocation.miniCenterDocked) {
      return 'miniCenterDocked';
    } else if (value == FloatingActionButtonLocation.miniCenterFloat) {
      return 'miniCenterFloat';
    } else if (value == FloatingActionButtonLocation.miniCenterTop) {
      return 'miniCenterTop';
    } else if (value == FloatingActionButtonLocation.miniEndDocked) {
      return 'miniEndDocked';
    } else if (value == FloatingActionButtonLocation.miniEndFloat) {
      return 'miniEndFloat';
    } else if (value == FloatingActionButtonLocation.miniEndTop) {
      return 'miniEndTop';
    } else if (value == FloatingActionButtonLocation.miniStartDocked) {
      return 'miniStartDocked';
    } else if (value == FloatingActionButtonLocation.miniStartFloat) {
      return 'miniStartFloat';
    } else if (value == FloatingActionButtonLocation.miniStartTop) {
      return 'miniStartTop';
    } else if (value == FloatingActionButtonLocation.startDocked) {
      return 'startDocked';
    } else if (value == FloatingActionButtonLocation.startFloat) {
      return 'startFloat';
    } else if (value == FloatingActionButtonLocation.startTop) {
      return 'startTop';
    }

    throw 'Json_Unsuported_Value';
  }
}

class FloatingActionButtonLocationConverter
    extends JsonConverter<FloatingActionButtonLocation, String> {
  const FloatingActionButtonLocationConverter();

  @override
  FloatingActionButtonLocation fromJson(String json) {
    return const NullableFloatingActionButtonLocationConverter()
        .fromJson(json)!;
  }

  @override
  String toJson(FloatingActionButtonLocation value) {
    return const NullableFloatingActionButtonLocationConverter().toJson(value)!;
  }
}
