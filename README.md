# InternationalizedVapor

Internationalizes your Vapor's HTTP requests by wrapping the [swift-foundation-icu](https://github.com/apple/swift-foundation-icu).

Wrapper which provides `NSFoundation`-free `Locale` stands as a [separate library](https://github.com/kkiermasz/SwiftLocale).

## Description

For example, a browser sends the web server the HTTP `Accept-Language` header indicating which locales, with a ranking, are acceptable to the user.
The server must determine which locale to use when returning content to the user.

The negotiation result for `ja;q=0.5, en-us;q=0.8, tlh` will be `en_US`.

## Usage example

```swift
app.get("hello") { req in 
    let locale = try req.locale 
    return response
}
```

Locale negotiation examples can be found [here](https://github.com/kkiermasz/SwiftLocale/blob/ff7a159e76f3f59674e6366a18a96fb88e41d3c0/Tests/SwiftLocaleTests/Locale_AcceptLanguage_Tests.swift#L31).

## Installation

### Swift Package Manager

Use [Swift Package Manager](https://swift.org/package-manager/) by adding below dependency to your `Package.swift` file:

```swift
.package(url: "https://github.com/kkiermasz/InternationalizedVapor.git", from: "1.1.0")
```

## License

InternationalizedVapor is shared under the MIT license. See both [LICENSE](./LICENSE) and [ICU4C's License](https://github.com/unicode-org/icu/blob/main/icu4c/LICENSE) for more info.
