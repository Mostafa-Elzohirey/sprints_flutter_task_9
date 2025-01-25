# sprints_flutter_task_9

Building a Counter App with Flutter Bloc

the project consists of one screen implemented in two ways
1. [using separate BLoC builders and listeners](https://github.com/Mostafa-Elzohirey/sprints_flutter_task_8/blob/master/lib/counter_screen.dart)
2. [using a bloc consumer](https://github.com/Mostafa-Elzohirey/sprints_flutter_task_8/blob/master/lib/counter_screen_consumer.dart)

both screens contain:\
1. a text in the center that displays the counter
2. three floating action buttons:
    * reset button which resets the counter to 0
    * increment button which increases the counter by 1
    * decrement button which decrease the counter by 1

in the counter with a separate listener the screen displays a snackbar when the counter reaches negative
every time the counter reaches  a number that is divisible by 5 (except 0)it displays a snackbar that says that the number is divisible by 5


packages used
[flutter bloc](https://pub.dev/packages/flutter_bloc)
[awesome snackbar content](https://pub.dev/packages/awesome_snackbar_content)



