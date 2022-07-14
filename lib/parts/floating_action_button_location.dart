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
  String? toJson(FloatingActionButtonLocation? object) {
    if (object == null) return null;

    if (object == FloatingActionButtonLocation.centerDocked) {
      return 'centerDocked';
    } else if (object == FloatingActionButtonLocation.centerFloat) {
      return 'centerFloat';
    } else if (object == FloatingActionButtonLocation.centerTop) {
      return 'centerTop';
    } else if (object == FloatingActionButtonLocation.endDocked) {
      return 'endDocked';
    } else if (object == FloatingActionButtonLocation.endFloat) {
      return 'endFloat';
    } else if (object == FloatingActionButtonLocation.endTop) {
      return 'endTop';
    } else if (object == FloatingActionButtonLocation.miniCenterDocked) {
      return 'miniCenterDocked';
    } else if (object == FloatingActionButtonLocation.miniCenterFloat) {
      return 'miniCenterFloat';
    } else if (object == FloatingActionButtonLocation.miniCenterTop) {
      return 'miniCenterTop';
    } else if (object == FloatingActionButtonLocation.miniEndDocked) {
      return 'miniEndDocked';
    } else if (object == FloatingActionButtonLocation.miniEndFloat) {
      return 'miniEndFloat';
    } else if (object == FloatingActionButtonLocation.miniEndTop) {
      return 'miniEndTop';
    } else if (object == FloatingActionButtonLocation.miniStartDocked) {
      return 'miniStartDocked';
    } else if (object == FloatingActionButtonLocation.miniStartFloat) {
      return 'miniStartFloat';
    } else if (object == FloatingActionButtonLocation.miniStartTop) {
      return 'miniStartTop';
    } else if (object == FloatingActionButtonLocation.startDocked) {
      return 'startDocked';
    } else if (object == FloatingActionButtonLocation.startFloat) {
      return 'startFloat';
    } else if (object == FloatingActionButtonLocation.startTop) {
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
  String toJson(FloatingActionButtonLocation object) {
    return const NullableFloatingActionButtonLocationConverter()
        .toJson(object)!;
  }
}
