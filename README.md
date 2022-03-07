 <h1 align="center"> Flutter Range Slider </h1>

 <p align="center">


A Range Slider  that you can customize with the options you need, without any limits. You can also customize the appearance of the Range Slider with  simple smooth animations, providing a nice and clean UI/UX.



## Getting Started

To install, add it to your `pubspec.yaml` file:

```
dependencies:
    flutter_range_slider:

```

```dart
import 'package:flutter_range_slider/flutter_range_slider.dart';
```

## How to use it

 call `flutter_range_slider`'s constructor:


## basic implementation

```dart
 FlutterRangeSlider(
            // key: Key('3343'),
            values: [_lowerValue, _upperValue],
            rangeSlider: true,
            tooltip: FlutterRangeSliderTooltip(
              alwaysShowTooltip: true,
            ),
            max: 20000,
            textPositionTop: -100,
            handlerHeight: 30,
            trackBar: FlutterRangeSliderTrackBar(
              activeTrackBarHeight: 10,
              inactiveTrackBarHeight: 10,
              activeTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              inactiveTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),

            min: 0,
            fontSize: 15,

            onDragging: (handlerIndex, lowerValue, upperValue) {
              _lowerValue = lowerValue;
              _upperValue = upperValue;
              setState(() {});
            },
          ),

```

The constructor has 17 attributes related to the Widget:

- `values`: A list of tabs to display, ie `Min Value`and  `Max value`
- `rangeSlider`:bool to convert the slider to Range Slider if not it's just Slider.
- `tooltip`:the range value is always true change it if you want it to hidden.
- `max`:Max Range.
- `textPositionTop`: The positions of the text box (use -ve integer).
- `handlerHeight`:The size of range bull point.
- `trackBar`:decoration for the Flutter Range Slider.
- `min`: Min Range.
- `fontSize`: label Font Size.
- `onDragging`:Callback function on Slider value changed.
