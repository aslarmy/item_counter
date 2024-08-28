# Item_Counter

A flutter plugin for handling ecommerce app item count. Works on both Android & iOS.

<!-- [![Pub Package](https://img.shields.io/pub/v/advance_pdf_viewer.svg?style=flat-square)](https://pub.dartlang.org/packages/advance_pdf_viewer) -->


## Installation

Add  *item_counter*  as a dependency in [your pubspec.yaml file](https://flutter.io/platform-plugins/).
```
  item_counter:
    git:
      url: https://github.com/aslarmy/item_counter.git
      ref: main
```

---

## Android
No permissions required. Uses application cache directory.

## iOS
No permissions required.

## How-to:

#### Show item counter
```
// view item counter
Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ItemCounter(),
          ],
        ),
```

#### Customize parameter
```
// Change view
 ItemCounter(
              isVertical: false,
              maxLimit: 10,
              iconSize: 40,
            ),
```

This code produces the following view:

<img height="500px" src="https://raw.githubusercontent.com/lohanidamodar/pdf_viewer/master/demo.png" alt="Demo Screenshot 1"/>

---

## TODO

* ~~Create Item Counter~~
* Implement Animation
* Custom Icons
* Custom Color

---
<!--
#### Third-party packages used

| Name | Description  |
|-|-|
| [path_provider](https://pub.dartlang.org/packages/path_provider)               | A Flutter plugin for finding commonly used locations on the filesystem. Supports iOS and Android.            |
| [flutter_cache_manager](https://pub.dartlang.org/packages/flutter_cache_manager)       | A CacheManager to download and cache files in the cache directory of the app. Various settings on how long to keep a file can be changed. |
| [numberpicker](https://pub.dartlang.org/packages/numberpicker)                | NumberPicker is a custom widget designed for choosing an integer or decimal number by scrolling spinners. |
| [flutter_advanced_networkimage](https://pub.dartlang.org/packages/flutter_advanced_networkimage) | An advanced image provider provides caching and retrying for flutter app. Now with zoomable widget and transition to image widget. | ~~>
