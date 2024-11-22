# Shaped Widgets

A simple customizable shaped widget for Flutter.

## Installation

Add `shaped_widget` to your `pubspec.yaml`:

```yaml
dependencies:
  shaped_widget:
    version: ^1.2.1
```

## Usage

### Single Dot Widget

```dart
import 'package:shaped_widget/shaped_widget.dart';

Dot(
  size: 20.0,
  color: Colors.blue,
  borderColor: Colors.red,
  borderWidth: 2.0,
  gap: 7.0
);

```

### Dash Line Widget

```dart
import 'package:shaped_widget/shaped_widget.dart';

DashLine(
  length: 100.0,
  thickness: 2.0,
  color: Colors.blue,
  dashLength: 5.0,
  dashGap: 3.0,
);

```

### Triangle Widget

```dart
import 'package:shaped_widget/shaped_widget.dart';

Triangle(
  size: 50.0,
  color: Colors.green,
  isEquilateral: true,
  borderWidth: 2.0,
  borderColor: Colors.red,
);

```

### Star Widget

```dart
import 'package:shaped_widget/shaped_widget.dart';

Star(
    size: 100.0,
    color: Colors.yellow,
    numPoints: 5,
  ),

```

### Heart Shape Widget

```dart
import 'package:shaped_widget/shaped_widget.dart';

HeartShapeWidget(
    color: Colors.grey,
    size: 20.0,
    padding: EdgeInsets.all(8.0),
    text: 'Heart Shape',
  ),

```

### Arrow Shape Widget

```dart
import 'package:shaped_widget/shaped_widget.dart';

ArrowShapeWidget(
    color: Colors.grey,
    height: 30.0,
    width: 50.0,
    padding: EdgeInsets.all(8.0),
    text: 'Arrow Shape',
  ),

```

### Explanation

- **Installation**: Clearly instructs users how to add `shaped_widget` to their Flutter project by specifying the version (`^1.2.1`). This version range (`^1.2.1`) allows users to automatically fetch compatible versions up to, but not including, `2.0.0`.

- **Version**: Provides a dedicated section where users can easily reference the recommended version to use in their `pubspec.yaml`.

Including this section makes your README.md more informative and user-friendly, ensuring that developers understand how to integrate and stay updated with the latest version of your `shaped_widget` package.
