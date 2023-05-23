# Learning Flutter

In the way to learn Flutter, I'm going to create a simple app that will use the basic widgets and concepts of Flutter. Also, I'm going to use the following documentation and video tutorials:
 - [Flutter Documentation](https://flutter.dev/docs)
 - [Flutter Widgets](https://flutter.dev/docs/development/ui/widgets)
 - ["Aprendiendo Flutter desde Cero para Creación de Aplicación Móvil Nativas" by midulive](https://www.youtube.com/watch?v=2uZjsHFob5s)
 - ["Curso Introducción a Flutter" by Chia TK](https://www.youtube.com/playlist?list=PLl_hIu4u7P677H9f6zPOHiOz2izkvQq2E)

## 1. What is Flutter?

Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter uses the Dart programming language (also owned by Google). Flutter was released in May 2017 and actually is in version 3.10.1.
Flutter is based on widgets, which are the building blocks of the user interface. Each widget is an immutable declaration of part of the user interface. Unlike other frameworks that separate views, view controllers, layouts, and other properties, Flutter has a consistent, unified object model: the widget.

Flutter uses Dart as its programming language. Dart is a modern, object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript. Dart is easy to learn and offers the following features:

- A familiar syntax with a rich set of developer tools
- Every object is an instance of a class
- All variables store references to objects
- Supports top-level functions, variables, and classes
- Supports functions inside functions

## 2. Widgets

It is an element of the GUI (Graphi User Interface) that shows information or gives a specific way to interact with the user.
Widgets includes the following:
- Text
- Buttons
- Gestures
- Images
- Inputs
- Containers
- Icons
- Windows
- Forms
- etc.

On Flutter everyting is a widget, even the app itself is a widget. Every widget is a piece of a complex user interface. Widgets are nested inside each other to create the user interface. On Flutter already exists a lot of widgets, but you can create your own widgets.

### 2.1 Widget Tree
Widget trees are the way that Flutter builds the UI. It is the way that widgets are nested inside each other, for example, exists a main widget and then you can nest a son widget inside the main. For that reason, from the trunk or main widgets are created branches of widwets. The following image shows an example of a widget tree:

![Tux, the Linux mascot](/assets/images/WidgetTree.webp)

#### 2.1.1 Leaf Widgets
Leaf widgets are the widgets that don't have any son widget inside. For example, the Text widget is a leaf widget because it doesn't have any son widget inside. The following image shows an example of a leaf widget:
- Image
- Text
- RichText
- Icon

#### 2.1.2 Single Child Widgets
Single child widgets are the widgets that have only one son widget inside. For example, the Center widget is a single child widget because it has only one son widget inside. The following image shows an example of a single child widget:
- Center
- Container
- Padding
- RaisedButton/ElavatedButton
- Align
- Positioned

#### 2.1.3 Multiple Child Widgets
Multiple child widgets are the widgets that have more than one son widget inside. For example, the Row widget is a multiple child widget because it has more than one son widget inside. The following image shows an example of a multiple child widget:
- Row
- Column
- Stack
- Wrap
- ListView
- GridView

### 2.2 Stateless Widgets
Stateless widgets are the widgets that don't have any state. For example, the Text widget is a stateless widget because it doesn't have any state. The following code shows an example of a stateless widget:
```dart
class Frog extends StatelessWidget {
  // Constructor
  // If the constructor uses {} then the parameters are optional
  const Frog({
    // Key is used to identify the widget
    Key? key,
    // This are the parameters of the widget
    this.color,
    this.child,
}) : super(key: key);

  final Color? color;
  final Widget? child;

  // Build method is used to build the widget, it returns a Widget Tree
  @override
  Widget build(BuildContext context) {
    return Container(color: color, child: child,);
  }
}
```

### 2.3 Stateful Widgets
Stateful widgets are the widgets that have a state. For example, the Center widget is a stateful widget because it has a state. The following code shows an example of a stateful widget:
```dart
class Bird extends StatefulWidget {
    // Constructor
    const Bird({
        Key? key,
        this.color,
        this.child,
    }) : super(key: key);
    
    final Color? color;
    final Widget? child;
    
    // This method is used to create the state of the widget
    @override
    _BirdState createState() => _BirdState();
    }
    
    
class _BirdState extends State<Bird> {
  // This is the state of the widget
    double _size = 100;
    // This method is used to update the state of the widget
    void grown(){
      // setState is called to update the render of the widget and then call the build method
      setState(() { _size += 10; });
    }
    
    @override
    Widget build(BuildContext context) {
      return Container{
        color: widget.color,
      // This is the state of the widget
        transform: Matrix4.diagonal3Values(_size, _size, 1),
        child: widget.child,
      };
    }
  }
```

#### 2.3.1 Global State
Sometimes the app has too much parts that need to be updated constantly and individually, this makes that the Stateful Widgets are not the best option. For that reason, Flutter has the concept of Global State, which is a state that can be shared between widgets. The following architecture pattern is used to implement the Global State:
- Provider
- Bloc **(Most used)**
- Scoped Model
- Vanilla

## 3. Flutter Structure

Flutter has the following structure:

1. **pubspec.yaml**: This file is used to configure the app, for example, the name, version, description, dependencies, etc. 
   1. **name**: The name of the app 
   2. **description**: The description of the app 
   3. **version**: The version of the app. The description is composed by 3 numbers separated by dots, for example, 1.0.0. The first number is the major version, the second number is the minor version and the third number is the patch version. The major version is used when the app has a lot of changes, the minor version is used when the app has some changes and the patch version is used when the app has a few changes. Next of this numbers exist the syntax +<number>, for example, 1.0.0+1. This number is used to identify the build of the app. 
   4. **environment**: The environment of the app. This is used to specify the version of the SDK that the app uses. 
   5. **dependencies**: The dependencies of the app. This is used to specify the dependencies of the app, for example, the dependencies of the Flutter SDK, the dependencies of the Dart SDK, the dependencies of the Flutter plugins, etc. 
   6. **dev_dependencies**: The dev dependencies of the app. This is used to specify the dependencies of the app that are only used in development, for example, the dependencies of the Flutter SDK, the dependencies of the Dart SDK, the dependencies of the Flutter plugins, etc. 
   7. **flutter**: The flutter configuration of the app. This is used to specify the configuration of the app, for example, the assets, the fonts, the uses-material-design, etc.
2. **test/**: This folder is used to store the tests of the app.
3. **lib/**: This folder is used to store the code of the app. Stores all the dart files of the app.
4. **ios/**: This folder is used to store the code of the app for iOS. Stores all the configuration files of the app for iOS.
5. **android/**: This folder is used to store the code of the app for Android.
   1. **src/main/AndroidManifest.xml**: This file is used to configure the app for Android, for example, the name, the version, the description, the permissions, etc.
   2. **src/debug/AndroidManifest.xml**: This file is used to configure the app for Android in debug mode, for example, the name, the version, the description, the permissions, etc. It has a special permission to allow the app to connect with internet, this permission it is needed to be copied in the release AndroidManifest.xml.
   3. **build.gradle**: This file is used to configure the app for Android, for example, the name, the version, the description, the permissions, etc.
> It is important to know that the ios/, android/, web/, windows/, etc. files with flutter we will not touch them a lot, because the Flutter SDK will manage them for us and also is though to use plugins to do the work.
6. **web/**: This folder is used to store the code of the app for Web.
7. **windows/**: This folder is used to store the code of the app Desktop for Windows.

## 4. Starting the Basics

1. **MaterialApp()**: It is a predifined class of the system and it is used as one of the main component of the Flutter's SDK. MaterialApp allows the acces to the other resources and widget that Flutter offers.
2. **title**: It is a property of MaterialApp and it is used to set the title of the app. This title is used in the app bar of the app.
3. **home**: It is a property of MaterialApp and it is used to set the home of the app. This home is the first screen that the app shows.
4. **Scaffold()**: It is a predifined class of the system and it is used as one of the main component of the Flutter's SDK. Scaffold is used to create a basic structure of the app, for example, the app bar, the body, the floating action button, etc.
5. **Text()**: Is used to create a text widget. Text only receives a string as parameter.
6. **Center()**: Is used to center the widget that is inside of it.
7. **child**: It is a property of Scaffold and it is used to set the child of the Scaffold. This child is the body of the Scaffold.
8. **body**: It is a property of Scaffold and it is used to set the body of the Scaffold. This body is the body of the Scaffold.
9. **style**: It is a property of Text and it is used to set the style of the Text. This style is the style of the Text.
10. **TextStyle()**: Is used to create a text style. TextStyle receives a color, a font size, a font weight, a font style, a font family, a background color, a decoration, a decoration color, a decoration style, a decoration thickness, a decoration position, a word spacing, a letterSpacing, a height, a locale, a foreground, a background, a shadows, a font features, a text baseline, a text decoration, a text decoration color, a text decoration style, a text decoration thickness, a text decoration line, a text decoration color, a text decoration style, a text de
11. **AppBar()**: Is used to create an app bar widget.

Next is the code example created with this concepts:

```dart
import 'package:flutter/material.dart';

// This is the main function of the app
void main() {
  runApp(MyApp());
}

// This is the root widget of the app
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Title showed in the task manager
      title: 'Flutter Demo',
      // Theme of the app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

// This is the home page of the app. Stateless widget is used because the content of the page is not changed
class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  // This widget is the home page of your application.
  Widget build(BuildContext context) {
    // Scaffold is a widget that provides a default app bar, title, and a body property that holds the widget tree for the home screen.
    return Scaffold(
        // AppBar is a widget that is used to create Android-style top bars.
        appBar: AppBar(
          title: const Center(
              child: Text(
            "My AppBar",
            style: TextStyle(color: Colors.red),
          )),
        ),
        // body is the major part of the screen.
        // Center is a widget that centers its child widget.
        body: const Center(
          // Text is a widget that is used to display a string of text with single style.
          child: Text(
            "Hello World",
            // style property is used to style the text.
            // TextStyle is a class that is used to style the text.
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                backgroundColor: Colors.yellow),
          ),
        ));
  }
}
```

## 5. Network Images

Network images are images that are stored in a server and are accessed through a URL. To use network images we need to use the widget Image.network().

```dart
body: Center(
          child: Container(
              child: Image.network(
                // Image URL
                // Also you  can use gifs and svg images
                  "https://avatars.githubusercontent.com/u/81336230?v=4",
              // fit is used to set the image fit in the container 
              fit: BoxFit.fill,
              height: 200,
              width: 500,
              )),
        ),
```
Network images has some properties that can be used to customize the image:
1. **fit**: It is used to set the image fit in the container. Fit also has some values that can be used:
   1. **BoxFit.fill**: It is used to fill the container with the image.
   2. **BoxFit.contain**: It is used to contain the image in the container.
   3. **BoxFit.cover**: It is used to cover the container with the image.
   4. **BoxFit.fitWidth**: It is used to fit the width of the image in the container.
   5. **BoxFit.fitHeight**: It is used to fit the height of the image in the container.
   6. **BoxFit.none**: It is used to not fit the image in the container.
   7. **BoxFit.scaleDown**: It is used to scale down the image in the container.
2. **height**: It is used to set the height of the image.
3. **width**: It is used to set the width of the image.
4. **repeat**: It is used to set the repeat of the image. Repeat also has some values that can be used:
   1. **ImageRepeat.noRepeat**: It is used to not repeat the image.
   2. **ImageRepeat.repeat**: It is used to repeat the image.
   3. **ImageRepeat.repeatX**: It is used to repeat the image in the X axis.
   4. **ImageRepeat.repeatY**: It is used to repeat the image in the Y axis.
5. **color**: It is used to set the color of the image.
...

## 6. Icons

Icons are images that are used to represent an action or a product. To use icons we need to use the widget Icon().

```dart
          child: Icon(
            Icons.remove_circle_outline,
            color: Colors.red,
            size: 200
          ),
```
Also exist the widget IconButton() that is used to create an icon that can be pressed.

```dart
    child: IconButton(
      icon: const Icon(Icons.android),
      color: Colors.green,
      onPressed: null,
      iconSize: 100,
      )
```
Icons has some properties that can be used to customize the icon:
1. **icon**: It is used to set the icon of the icon button.
2. **color**: It is used to set the color of the icon button.
3. **iconSize**: It is used to set the size of the icon button.
4. **onPressed**: It is used to set the action of the icon button.
5. **disabledColor**: It is used to set the disabled color of the icon button.
6. **focusColor**: It is used to set the focus color of the icon button.

## 7. 