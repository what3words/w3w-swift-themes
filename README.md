# <img valign='top' src="https://what3words.com/assets/images/w3w_square_red.png" width="64" height="64" alt="what3words">&nbsp;w3w-swift-themes

# Overview

This contains colour and style definitions

### Themes

A `W3WTheme` conatins all colour or style information for an app or a component.  It is palette for making a `W3WScheme`.  These schemes are then to be applied to the part of an app or component.

Deprecated: It uysed to hold a dictionary of named `W3WScheme`.  These schemes were keyed by things like `base`, `textFeilds`, `cells`, `labels`, and so on.  Now the schemes are generally created by functions for specific purposes.

### Schemes

A `W3WScheme` holds a `W3WColors` and a `W3WStyles`.  It is intended to be all the colour and style information needed for a particular view.

### Styles

A `W3WStyles` struct holds various styling information for a particular view.  This includes things like: border, corner radius, shadow, fonts, text alignment, padding, separator, row height, line thickness, and so on.


### Colors

A `W3WColors` struct holds vaious colours for a particular view.  This includes things like: foreground, background, tint, secondary, brand, highlight, border, separator, shadow, placeholder, success, error, header, line, and so on.

The colours that are held by `W3WColors` are mostly `W3WColor`, though some are `W3WBasicColors`.

### Color

A `W3WColor` struct holds an array of two colours.  A `light` and `dark` value.  These are implemented as a dictionary keyed by `light` and `dark` in case new colour modes are ever introduced for any Apple platform.  It was implemented as an array to allow for futreproofing in case a new colour mode beyond `light` and `dark` are ever introduced.

These two values are of type `W3WCoreColor`.

### BasicColors

A `W3WBasicColors` contains a `foregrand` and a `background` colour of type `W3WColor`.

### Core Color

A `W3WCoreColor` struct holds a single colour in the form of four Float values: red, green, blue, & alpha.

This is used as opposed to the built in operating system provided colours because this is a multi-operating system design library.  Apple's various UI systems use `NScolor`, `UIColor`, `CGColor`, and `Color`.  Not all of these color types are available in a particular OS/UI system.  A neutral color definition was therefore required for interoperability. 

There are constructors that take `NScolor`, `UIColor`, `CGColor`, and `Color`, and these objects can produce them as well with the `cgColor`, `suColor`, `uiColor`, and `nsColor` computed variables.

### Predefined Values

In the `Presets' directory there are a number of predefined values for colours and styles.

Notably, there is a `W3WTheme.standard` and a `W3WTheme.what3words` which define slightly different colours. `.standard` mirrors typical iOS values, and `.what3words` changes a few of these values to show more of the what3words brand.




