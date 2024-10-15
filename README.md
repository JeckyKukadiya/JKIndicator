<img src="https://raw.githubusercontent.com/exyte/media/master/ActivityIndicatorView/demo.gif" width="480" />

<p><h1 align="left">ActivityIndicatorView</h1></p>

<p><h4>A number of preset loading indicators created with SwiftUI</h4></p>

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fexyte%2FActivityIndicatorView%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/exyte/ActivityIndicatorView)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fexyte%2FActivityIndicatorView%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/exyte/ActivityIndicatorView)
[![SPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swiftpackageindex.com/exyte/ActivityIndicatorView)
[![Cocoapods Compatible](https://img.shields.io/badge/cocoapods-Compatible-brightgreen.svg)](https://cocoapods.org/pods/ActivityIndicatorView)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/License-MIT-black.svg)](https://opensource.org/licenses/MIT)

# Usage

Create an indicator like this:
   ```swift
   ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .default)
   ```
   where  
   `showLoadingIndicator` - bool value you may change to display or hide the indicator  
   `type` - value from `ActivityIndicatorView.IndicatorType` enum  

You may alter it with standard SwiftUI means like this: 
   ```swift
   ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .default)
        .frame(width: 50.0, height: 50.0)
        .foregroundColor(.red)
   ```
Or specify another indicator type:

   ```swift
   ActivityIndicatorView(isVisible: $showLoadingIndicator, type: .growingArc(.red, lineWidth: 4))
       .frame(width: 50.0, height: 50.0)
   ```

### Indicator types
Each indicator type has a number of parameters that have reasonable defaults. You can change them as you see fit, but it is advised to not set them too high or too low.

`default` - iOS UIActivityIndicator style  
```swift
.default(count: 8)
```
`arcs`    
```swift
.arcs(count: 3, lineWidth: 2)
```
`rotatingDots`    
```swift
.rotatingDots(count: 5)
```
`flickeringDots`    
```swift
.flickeringDots(count: 8)
```
`scalingDots`     
```swift
.scalingDots(count: 3, inset: 2)
``` 
`opacityDots`  
```swift
.opacityDots(count: 3, inset: 4)
``` 
`equalizer`  
```swift
.equalizer(count: 5)
```
`growingArc` - add custom color for growing Arc, the default value is `Color.black`      
```swift
.growingArc(.red, lineWidth: 4)
```
`growingCircle` - no parameters   
`gradient` - circle with angular gradient border stroke, pass colors like this:    
```swift
.gradient([.white, .red], lineWidth: 4)
```  

## Examples

To try out the ActivityIndicatorView examples:
- Clone the repo `git clone git@github.com:exyte/ActivityIndicatorView.git`
- Open terminal and run `cd <ActivityIndicatorViewRepo>/Example`
- Run `pod install` to install all dependencies
- Run `xed .` to open project in the Xcode
- Try it!

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/exyte/ActivityIndicatorView.git")
]
```

### CocoaPods

```ruby
pod 'ActivityIndicatorView'
```

### Carthage

```ogdl
github "Exyte/ActivityIndicatorView"
```

## Requirements

* iOS 13+ / watchOS 6+ / tvOS 13+ / macOS 10.15+
* Xcode 11+
