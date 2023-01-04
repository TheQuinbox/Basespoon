# Basespoon

Hammerspoon module that encodes and decodes Base64 strings with global hotkeys.

## Usage

Provided you have Hammerspoon installed, simply open the .spoon file, and then add the following two lines to your configuration:

```lua
hs.loadSpoon("Basespoon")
spoon.Basespoon:start()
```

After that, reload your config, and everything should work as expected.

## Keys

| Shortcut | Function |
| --- | --- |
| control+cmd+b | Encode a string as Base64 |
| control+cmd+shift+b | Decode a Base64 encoded string |
