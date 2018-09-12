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

```java
let invertedText = TextFilter(sourceText: "Hi!")
    .apply(effect: InversionEffect())
    .result
print(invertedText) // "!iH"
```

This is how it works. You have to get an instance of `TextFilter` and transfer source text to it. Then, apply some effects and retrieve the final text by `.result` call.

In the example above, the `InversionEffect` will be applied to the entire string. The same time, you can apply effect to a particular substring:

```java
let filteredText = TextFilter(sourceText: "Hi!")
    .apply(effect: InversionEffect())
    .apply(effect: InversionEffect(), startIndex: 0, endIndex: 1)
    .result
print(filteredText) // "iH!"
```

You can add as many effects as you want:

```java
let filteredText = TextFilter(sourceText: "This text will be rotated")
    .apply(effect: RotationEffect(rotation: .inverted))
    .apply(effect: InversionEffect())
    .result
print(filteredText) // "рǝʇɐʇоɹ ǝq llıм ʇxǝʇ sıɥʇ"
```

## License

`Wordy` is available under the Apache 2.0 license. See the [LICENSE](./LICENSE) file for more info.
