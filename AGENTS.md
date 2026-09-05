# Repository Guidelines

## Swift and architecture

- Use the Swift 6.2 compiler in Swift 6 language mode. Keep strict concurrency
  checking enabled and resolve warnings rather than weakening compiler checks.
- Build screens with SwiftUI. Keep views small and declarative, put testable
  presentation state outside view bodies, and prefer value types and immutable
  state.
- Isolate UI-owned mutable state to `@MainActor`. Make values crossing isolation
  boundaries `Sendable`, favor structured concurrency, and avoid unchecked
  concurrency annotations unless their safety is documented.

## Accessibility

- Every interactive control must have a meaningful accessibility label and an
  appropriate trait or role. Combine related children where that improves the
  spoken experience, support Dynamic Type, and never rely on color alone.
- Verify new interfaces with VoiceOver, larger text sizes, increased contrast,
  and Reduce Motion where relevant.

## Tests

- Add deterministic unit tests for new behavior and regression tests for fixes.
- Tests must not depend on the network, locale, wall clock, execution order, or
  a particular simulator model. Inject these dependencies when needed.
- Before submitting, build and run the full test suite with code signing off.

## Formatting

- Follow Swift API Design Guidelines and Xcode's standard indentation.
- Use four spaces, no tabs, one primary type per file, trailing commas in
  multiline literals, and a final newline. Keep imports minimal and sorted.

## Supported commands

```sh
xcodebuild build -project FiveByFiveLifts.xcodeproj -scheme FiveByFiveLifts -destination 'platform=iOS Simulator,id=<AVAILABLE_IPHONE_UDID>' CODE_SIGNING_ALLOWED=NO
xcodebuild test -project FiveByFiveLifts.xcodeproj -scheme FiveByFiveLifts -destination 'platform=iOS Simulator,id=<AVAILABLE_IPHONE_UDID>' CODE_SIGNING_ALLOWED=NO
```

Use `xcrun simctl list devices available` to find an available iPhone UDID.
Keep GitHub Actions dependencies pinned to the latest stable major version,
checking each GitHub-maintained action's official repository whenever CI is
changed.
