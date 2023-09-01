# RANDOM COLOR GENERATION

## Overview

This Flutter application is a simple example that demonstrates the usage of RxDart for managing state and includes unit tests for the business logic.

## Features

- Display "Hello there" text in the middle of the screen.
- Change the background color to a randomly generated color upon tapping the screen.
- Reset the background color to black using a floating action button.
- Fade animation for the "Hello there" text.
- Displays RGB values of the background color.
- Includes unit and widget tests for the `ColorGeneratorScreen` and `ColorBloc` class using the `test` package.


## Libraries and Dependencies

- Flutter: [https://flutter.dev/](https://flutter.dev/)
- RxDart: [https://pub.dev/packages/rxdart](https://pub.dev/packages/rxdart)
- Flutter Testing Library: [https://pub.dev/packages/flutter_test](https://pub.dev/packages/flutter_test)


## Getting Started

To get started with the application, follow these steps:

1. Clone the repository to your local machine:
    - git clone https://github.com/theakanfecode1/random_color_generator.git

2. Navigate to the project directory:
    - cd random_color_generator

3. Install the dependencies:
    - flutter pub get

4. Run the application:
    - flutter run


## Running Tests

The application includes unit tests to ensure the functionality is working correctly. To execute the
tests, follow these steps:

1. Navigate to the project directory if you're not already there:
    - cd random_color_generator

2. Run the tests:
    - run flutter test --coverage --test-randomize-ordering-seed random
