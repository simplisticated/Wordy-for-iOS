<p align="center" >
	<img src="/Images/logo_2048_600.png" alt="Wordy" title="Wordy">
</p>
<p align="center">
	<a href="https://swift.org">
		<img src="https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat">
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
* Swift 4

## Usage

### Text Filter

First of all, you need to get to know `TextFilter` class. Instance of `TextFilter` is your entry point to the world of amazing effects. Look at example below:

```swift
let filteredText = TextFilter(sourceText: "Hi!")
    .apply(effect: InversionEffect())
    .result
print(filteredText) // "!iH"
```

This is how it works. You have to get an instance of `TextFilter` and transfer source text to it. Then, apply some effects and retrieve the final text by `.result` call.

In the example above, the `InversionEffect` will be applied to the entire string. The same time, you can apply effect to a particular substring:

```swift
let filteredText = TextFilter(sourceText: "Hi!")
    .apply(effect: InversionEffect(), startIndex: 0, endIndex: 1)
    .result
print(filteredText) // "iH!"
```

You can add as many effects as you want:

```swift
let filteredText = TextFilter(sourceText: "This text will be rotated")
    .apply(effect: RotationEffect(rotation: .inverted))
    .apply(effect: InversionEffect())
    .result
print(filteredText) // "рǝʇɐʇоɹ ǝq llıм ʇxǝʇ sıɥʇ"
```

## Text Effects

### Case Effect

Represented by `CaseEffect` class. Changes case for the entire text or letters at particular positions.

Constructor example:

```swift
CaseEffect(textCase: .firstUpperNextLower)
```

[`TextCase`](#text-case) is the only setting that defines `CaseEffect`'s behavior.

### Rotation Effect

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

### Inversion Effect

Represented by `InversionEffect` class. Flips text from right to left, so

`Hi!`

turns into

`!iH`

`InversionEffect`'s constructor is very simple and doesn't require any parameters:

```swift
InversionEffect()
```

## Options

### Text Case

`TextCase` is used as a setting for `CaseEffect` instance. Available values are:

- `allUpper` - Makes the entire text uppercased.
- `allLower` - Makes the entire text lowercased.
- `firstUpperNextLower` - The first symbol is uppercased, other text is lowercased.
- `firstLowerNextUpper` - The first symbol is lowercased, other text is uppercased.
- `alternating(firstUppercased: Bool)`: If `firstUppercased` is `true`, odd symbols are uppercased, even symbols are lowercased. Otherwise, odd symbols are lowercased, even symbols are uppercased.

### Text Rotation

`TextRotation` defines the conditions of symbol rotation. Available values:

- `normal`: Forces all symbols to be rotated to normal position. It means that `ʎ` would become `y` and `h` would stay `h`.
- `upsideDown`: Forces all symbols to be rotated upside down. In this case, `y` would turn into `ʎ`, but `ɥ` wouldn't change at all.
- `inverted`: Normal symbols are forced to be rotated meanwhile rotated symbols become normal. So, `y` becomes `ʎ` and `ɥ` turns into `h`.

## License

`Wordy` is available under the Apache 2.0 license. See the [LICENSE](./LICENSE) file for more info.
