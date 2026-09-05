# 5x5 Lifts

A minimal SwiftUI iPhone application that provides the foundation for a 5x5
lifting tracker. The initial screen presents an accessible “Hello, World!”
greeting.

## Requirements

- macOS 15 or later
- Xcode 26.x (the project and CI use the Swift 6.2 compiler)
- An iOS 17.0-or-later iPhone or simulator

The deployment target is iOS 17.0. The project uses Xcode's `SWIFT_VERSION =
6.0` language-mode setting; Xcode 26 supplies the Swift 6.2 compiler and builds
the code in Swift 6 language mode with complete concurrency checking.

## Open the project

Clone the repository, then either double-click `FiveByFiveLifts.xcodeproj` or
run:

```sh
open FiveByFiveLifts.xcodeproj
```

Select the **FiveByFiveLifts** scheme and an iPhone simulator before running.

## Build and test locally

The commands below choose an installed simulator dynamically, avoiding a
dependency on a particular iPhone model:

```sh
DESTINATION="$(xcrun simctl list devices available -j | python3 -c 'import json,sys; data=json.load(sys.stdin); print("platform=iOS Simulator,id=" + next(device["udid"] for runtime in data["devices"].values() for device in runtime if "iPhone" in device["name"]))')"
xcodebuild build -project FiveByFiveLifts.xcodeproj -scheme FiveByFiveLifts -destination "$DESTINATION" CODE_SIGNING_ALLOWED=NO
xcodebuild test -project FiveByFiveLifts.xcodeproj -scheme FiveByFiveLifts -destination "$DESTINATION" CODE_SIGNING_ALLOWED=NO
```

CI performs the same build and test operations on macOS after selecting Xcode
26, which includes Swift 6.2.
