<h1 align="center">Bye Bye<img src="https://github.com/mitul3737/mitul3737/blob/main/Wave.gif" height="55px" width="55px">Aspect Ratio, Welcome auto_height_grid_view 😎</h1>

# Why auto_height_grid_view?

A Flutter package that automatically adjusts the height of grid tiles based on their content, making it easy to create dynamic and responsive grid layouts. It automatically adjusts the height of each grid item based on its content.

## 💡 Overview

<img src="https://user-images.githubusercontent.com/77343380/235384723-b76f3942-f801-4bb6-9b2a-a02c2c343a4c.png" alt="auto height grid view"
width="250" height="500">

## 💻 Usage ##

To use this library in your code:

* add a dependency in your `pubspec.yaml` :

  ```yaml
  dependencies:
    auto_height_grid_view:
  ```

* add import in your `dart` code:

  ```dart
  import 'package:auto_height_grid_view/auto_height_grid_view.dart';

#### main.dart

```dart

AutoHeightGridView(
itemCount: 10,
crossAxisCount: 2,
mainAxisSpacing: 10,
crossAxisSpacing: 10,
physics: const BouncingScrollPhysics(),
padding: const EdgeInsets.all(12),
shrinkWrap: true,
builder: (context, index) {
return Container(
width: double.infinity,
height: 150,
color: Colors.red,);
},
),

```

## 🗞️ Properties

The auto_height_grid_view includes the following properties.

| Property              | Type                        |
|-----------------------|-----------------------------|
| key:                  | key                         |
| itemCount             | int                         |
| crossAxisCount        | int                         |
| crossAxisSpacing      | int                         |
| mainAxisSpacing       | int                         |
| rowCrossAxisAlignment | CrossAxisAlignment          |
| controller            | ScrollController            |
| shrinkWrap            | bool                        |
| physics               | ScrollPhysics               |
| padding               | EdgeInsets                  |
| builder               | Function(BuildContext, int) |


## 💪🏻 Contribution Guide

I would be happy to have your contributions 💙

You are welcome to open a *[ticket](https://github.com/3kdeveloper/auto_height_grid_view/issues)* on github if any problems arise. New ideas are always welcome.  
If you fixed a bug or implemented a feature, please send a [Pull Request](https://github.com/3kdeveloper/auto_height_grid_view/pulls).

## 👱 Maintainer
**[Kamran Khan](https://github.com/3kdeveloper)**

## Copyright and License

>Copyright © 2023 **[3kdveloper](https://github.com/3kdeveloper)**. Licensed under the *[MIT LICENSE](https://github.com/3kdeveloper/flags/blob/main/LICENSE)*.