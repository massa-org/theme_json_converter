Set of JsonConverters that help to process material theme types.

## Motivation
Main goal of this package is to provide `json_serializable` ability to serialize theme types without manualy serialization.

Other packages with similar functionality
 - [json_theme](https://pub.dev/packages/json_theme)


## Tip
All converter has same name convention
and two version plain `{MaterialThemeType}Converter` and nullable `Nullable{MaterialThemeType}Converter`

Right now all converter code auto generated from [json_theme](https://pub.dev/packages/json_theme) package

## Getting started
Install like other packages, nothing new, just add to deps.

## Usage

Just put it above your model yep
```dart
import 'package:theme_json_converter/theme_json_converter.dart';

@JsonSerializable()
@ColorConverter()
@NullableTextStyleConverter()
class Model{
    final Color color;
    final TextStyle? style;
}

```

