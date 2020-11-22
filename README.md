# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

Here will use it to record my study process.

Just some simple usage.

## Use true devices:
### 🚀 Android 
>please run in terminal at first: 
```yaml
flutter config --android-sdk +your android sdk path
```

Then you detect your devices and run your app. (gradle will download the corresponding libraries automatically, if you meet something wrong,
please download **SDK Plateform** and **Android SDK Build-Tools** in SDK Manager by yourself)
more detail please see [Flutter](https://flutter.dev/docs/get-started/codelab)

## 🔩 Localization
Add to your pubspec.yaml:
```yaml
dependencies:
  easy_localization: <last_version>
```

Create a folder and add Localization files
```
assets
└── langs
    ├── en-.json                  //only language code
    └── zh-cn.json    //or full locale code
```

Declare your assets localization directory in `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/translations/
```

use in your app:
```dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', ''), Locale('de', ''), Locale('zh', 'CN')],
        path: 'langs', // <-- change patch to your
        fallbackLocale: Locale('zh', 'CN'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Text('title').tr(),
    );
  }
}
```

more information, please see [**Full example**](https://github.com/aissat/easy_localization/blob/master/example/lib/main.dart)

Note:
ctrl+Q Expand more options
stless & Tab  create a class extends StatelessWidget