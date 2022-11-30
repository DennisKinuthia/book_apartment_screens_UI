# Flutter UI screens for Apartment Booking App IOS

## [Video Of The Screen Recording](https://drive.google.com/file/d/1SrgKE7U1Lp_TFIkLXXOQmrTLv1If2ncU/view?usp=share_link)

## Pre-requisite

1. Flutter SDK.
2. Vitual or physical Device.
3. Text Editor or IDE.
4. Internet Connection

## How to manually test this

1. Clone this repository. `git clone <repo url>`.
2. Open the project folder with your text editor or IDE.
3. Install dependencies. `flutter pub get'.
4. Connect a virtual or physical device.
5. Run the project and view the screens.

## NB: 
The custom slider widget that books the apartment uses the 
flutter `Animated Controler` class and it is demanding to the system 
especially when using a virtual device. There might be some lag 
if the computer running the virtual device is not powerful enough.

## Dependencies

1. GoRouter
2. shimmer
3. flutter slider indicator
4. flutter rating bar
5. google fonts
6. intl

## Learning Points.

These sample screens are not part of a larger project but simply
 practise exercises for building flutter UI.
The following are the highlights of the key areas practised on the project.

1. The `Align` widget. This widget aligns its child according the 
property `Alignment` or physical passed to it.
2. `GoRouter` package. The project uses GoRouter for navigation instead on Navigator 1.0.
3. Project Structure/Composition. The project has taken advantage of composition aggresively. 
Many of the widget are custom components made of a few Flutter in build widgets. 
Each screen has its own file accompanied by a `components` folder
 to hold the various various components.
4. The `Stack` widget by Flutter to place widgets ontop of other widgets.
5. The `PageView.builder()` from Flutter to build pages 
on demand for the apartment details page images.
6. A `Custom Slider` as the bottom naviation bar section that 
allows apartment booking on slide to the end.
7. The `DraggableScrollableSheet` widget from flutter 
that Creates a widget that can be dragged and scrolled in a single gesture.

## Credits

1. [Dribbble](https://dribbble.com/shots/4830223-Flat-2-Dribbble-Invites)
2. [Robby Rahmana](https://www.youtube.com/@RobbyRahmana)

ScreenShots.

