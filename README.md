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

