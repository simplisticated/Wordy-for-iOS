<p align="center" >
	<img src="/Images/logo_2048_600.png" alt="Wordy" title="Wordy">
</p>
<p align="center">
	<a href="https://swift.org">
		<img src="https://img.shields.io/badge/Swift-4.1-orange.svg?style=flat">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/v/Wordy.svg">
	</a>
	<a href="https://cocoapods.org">
		<img src="https://img.shields.io/cocoapods/dt/Wordy.svg">
	</a>
	<a href="https://tldrlegal.com/license/mit-license">
		<img src="https://img.shields.io/badge/License-Apache 2.0-blue.svg?style=flat">
	</a>
</p>

## At a Glance

`Wordy` is a powerful text processor that provides an easy way to manage content in `String` object.

## How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Wordy` cocoapod

## Requirements

* iOS 9 and later
* Xcode 9 and later
* Swift 4.1

## Usage

Everything starts with `Wordy` class. This is your entry point to all tools provided by the library.

### Text Effects

Let's start with a very simple example of text effect:

```swift
let filteredText = Wordy.effects(for: "Hi!")
    .apply(effect: InversionEffect())
    .result

print(filteredText) // "!iH"
```

This is how it works: `Wordy.effects(for: _)` gives you an `EffectManager` instance configured for your source text. Then, you can apply some effects and retrieve the final text by `.result` call.

In the example above, the `InversionEffect` will be applied to the entire string. The same time, you can apply effect to a particular substring:

```swift
let filteredText = Wordy.effects(for: "Hi!")
    .apply(effect: InversionEffect(), startIndex: 0, endIndex: 1)
    .result

print(filteredText) // "iH!"
```

You can add as many effects as you want:

```swift
let filteredText = Wordy.effects(for: "This text will be rotated")
    .apply(effect: RotationEffect(rotation: .inverted))
    .apply(effect: InversionEffect())
    .result

print(filteredText) // "рǝʇɐʇоɹ ǝq llıм ʇxǝʇ sıɥʇ"
```

#### Case Effect

Represented by `CaseEffect` class. Changes case for the entire text or letters at particular positions.

Constructor example:

```swift
CaseEffect(textCase: .firstUpperNextLower)
```

[`TextCase`](#text-case) is the only setting that defines `CaseEffect`'s behavior.

#### Rotation Effect

Represented by `RotationEffect` class. Rotates letters. For example,

`p` becomes `d`

and

`h` becomes `ɥ`.

`RotationEffect` has two available constructors. The most detailed version of constructor:

```swift
RotationEffect(rotation: .inverted, caseSensitive: true)
```

The first parameter is a [`TextRotation`](#text-rotation) value that defines the way to rotate symbols.

The second parameter of boolean type defines whether the rotation alrorithm should be case sensitive. If it equals to `false`, some uppercased symbols might become lowercased as a result of rotation.

The second constructor is a simplified version of the first one:

```swift
RotationEffect(rotation: .inverted)
```

It's case sensitive by default. Usually, it's enough to use the second constructor excepting cases when you need more flexibility.

#### Inversion Effect

Represented by `InversionEffect` class. Flips text from right to left, so

`Hi!`

turns into

`!iH`

`InversionEffect`'s constructor is very simple and doesn't require any parameters:

```swift
InversionEffect()
```

### Transliteration

Example of transliteration:

```java
let transliteratedText = Wordy.transliterate(from: .russian, to: .english)
    .result(for: "Привет!")

print(transliteratedText) // "Privet!", which means "Hi!"
```

Currently supported languages are:

- English
- Russian

### Options

#### Text Case

`TextCase` is used as a setting for `CaseEffect` instance. Available values are:

- `allUpper` - Makes the entire text uppercased.
- `allLower` - Makes the entire text lowercased.
- `firstUpperNextLower` - The first symbol is uppercased, other text is lowercased.
- `firstLowerNextUpper` - The first symbol is lowercased, other text is uppercased.
- `alternating(firstUppercased: Bool)`: If `firstUppercased` is `true`, odd symbols are uppercased, even symbols are lowercased. Otherwise, odd symbols are lowercased, even symbols are uppercased.

#### Text Rotation

`TextRotation` defines the conditions of symbol rotation. Available values:

- `normal`: Forces all symbols to be rotated to normal position. It means that `ʎ` would become `y` and `h` would stay `h`.
- `upsideDown`: Forces all symbols to be rotated upside down. In this case, `y` would turn into `ʎ`, but `ɥ` wouldn't change at all.
- `inverted`: Normal symbols are forced to be rotated meanwhile rotated symbols become normal. So, `y` becomes `ʎ` and `ɥ` turns into `h`.

#### Language

The `Language` type is used for transliterations. Possible values:

- `english`
- `russian`

### Plugins

You can extend the functionality of `Wordy` without making changes to the library. Instead of sending pull request, simply create your own plugin.

Each plugin is a subclass of the class named `Plugin`. Take a look at the example below:

```java
class Repeat: Plugin {

    override func result() -> String {
        return self.sourceText
            + self.sourceText
    }
}
```

This is a plugin that repeats the source text two times. All that you need to implement is the `result()` method that returns `String` with filtered text. It is the core of your plugin's implementation where you should put the logic. To access the source text, simply use `self.sourceText`.

Now let's try to use the plugin:

```java
let repeatedText = Wordy.plugin(Repeat.self, for: "Test.")
    .result()

print(repeatedText) // "Test.Test."
```

As you can see, creating and using plugins for `Wordy` is quite easy. You can publish your plugins as separate library or send as a pull request if you want it to be included in the library after reviewal process.

## License

`Wordy` is available under the Apache 2.0 license. See the [LICENSE](./LICENSE) file for more info.
