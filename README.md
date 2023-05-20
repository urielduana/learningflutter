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
2. **