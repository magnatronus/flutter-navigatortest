# navigatortest

A test project to try and understand why the parent build() method of a widget higher up in the widget tree is being run each time a child  state chnages or the child build() is run.

Basically I have

HomeScreen
|_ChildScreen
   |_ChildScreen
     |_{etc}

There is a debug print only in the HomeScreen build(), but the widget state os being updated each time a new ChildScreen is created (or updated), but should this happen?

I though the state changes propagated  down the widget tree, not back up.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
