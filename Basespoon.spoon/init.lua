local Basespoon = {}
Basespoon.name = "Basespoon"
Basespoon.version = "1.0"
Basespoon.author = "Quin Marilyn <quin.marilyn05@gmail.com>"
Basespoon.license = "MIT"
Basespoon.homepage = "https://www.github.com/TheQuinbox/Basespoon"

local function encode()
    local btn, text = hs.dialog.textPrompt(
        "String",
        "String to encode",
        "",
        "Encode",
        "Cancel"
    )
    if btn == "Cancel" then
        return
    end
    local final = hs.base64.encode(text)
    local btn2 = hs.dialog.blockAlert("Result", final, "OK", "Copy")
    if btn2 == "Copy" then
        hs.pasteboard.setContents(final)
    end
end

local function decode()
    local btn, text = hs.dialog.textPrompt(
        "String",
        "String to decode",
        "",
        "Decode",
        "Cancel"
    )
    if btn == "Cancel" then
        return
    end
    local final = hs.base64.decode(text)
    local btn2 = hs.dialog.blockAlert("Result", final, "OK", "Copy")
    if btn2 == "Copy" then
        hs.pasteboard.setContents(final)
    end
end

local encodeHotkey = hs.hotkey.new("control-cmd", "b", encode)
local decodeHotkey = hs.hotkey.new("control-shift-cmd", "b", decode)

function Basespoon.start()
    encodeHotkey:enable()
    decodeHotkey:enable()
end

function Basespoon.stop()
    encodeHotkey:disable()
    decodeHotkey:disable()
end

return Basespoon
