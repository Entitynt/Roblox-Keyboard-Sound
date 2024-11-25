local UserInputService = game:GetService("UserInputService")

local soundMapping = {
    A = "rbxasset://KeyboardSounds/key4.wav",
    B = "rbxasset://KeyboardSounds/key3.wav",
    C = "rbxasset://KeyboardSounds/key2.wav",
    D = "rbxasset://KeyboardSounds/key4.wav",
    E = "rbxasset://KeyboardSounds/key5.wav",
    F = "rbxasset://KeyboardSounds/key6.wav",
    G = "rbxasset://KeyboardSounds/key1.wav",
    H = "rbxasset://KeyboardSounds/key3.wav",
    I = "rbxasset://KeyboardSounds/key2.wav",
    J = "rbxasset://KeyboardSounds/key4.wav",
    K = "rbxasset://KeyboardSounds/key5.wav",
    L = "rbxasset://KeyboardSounds/key6.wav",
    M = "rbxasset://KeyboardSounds/key1.wav",
    N = "rbxasset://KeyboardSounds/key2.wav",
    O = "rbxasset://KeyboardSounds/key3.wav",
    P = "rbxasset://KeyboardSounds/key4.wav",
    Q = "rbxasset://KeyboardSounds/key5.wav",
    R = "rbxasset://KeyboardSounds/key6.wav",
    S = "rbxasset://KeyboardSounds/key4.wav",
    T = "rbxasset://KeyboardSounds/key3.wav",
    U = "rbxasset://KeyboardSounds/key2.wav",
    V = "rbxasset://KeyboardSounds/key5.wav",
    W = "rbxasset://KeyboardSounds/key6.wav",
    X = "rbxasset://KeyboardSounds/key1.wav",
    Y = "rbxasset://KeyboardSounds/key2.wav",
    Z = "rbxasset://KeyboardSounds/key3.wav",

    Space = "rbxasset://KeyboardSounds/space1.wav",
    Return       = "rbxasset://KeyboardSounds/ent.wav",
    Backspace = "rbxasset://KeyboardSounds/back.wav",
    LeftShift = "rbxasset://KeyboardSounds/shift.wav",
    RightShift = "rbxasset://KeyboardSounds/rshift.wav",
    CapsLock = "rbxasset://KeyboardSounds/caps.wav",
    LeftControl = "rbxasset://KeyboardSounds/ctrl.wav",
    RightControl = "rbxasset://KeyboardSounds/ctrl.wav",
    LeftAlt = "rbxasset://KeyboardSounds/alt.wav",
    RightAlt = "rbxasset://KeyboardSounds/alt.wav",
    Backquote = "rbxasset://KeyboardSounds/key2.wav",
    Escape = "rbxasset://KeyboardSounds/nO.wav",
    Insert = "rbxasset://KeyboardSounds/key4.wav",
    Delete = "rbxasset://KeyboardSounds/key5.wav",
    Home = "rbxasset://KeyboardSounds/key1.wav",
    End = "rbxasset://KeyboardSounds/key6.wav",
    PageUp = "rbxasset://KeyboardSounds/key3.wav",
    PageDown = "rbxasset://KeyboardSounds/key2.wav",

    F1 = "rbxasset://KeyboardSounds/key5.wav",
    F2 = "rbxasset://KeyboardSounds/key4.wav",
    F3 = "rbxasset://KeyboardSounds/key6.wav",
    F4 = "rbxasset://KeyboardSounds/key5.wav",
    F5 = "rbxasset://KeyboardSounds/key1.wav",
    F6 = "rbxasset://KeyboardSounds/key2.wav",
    F7 = "rbxasset://KeyboardSounds/key6.wav",
    F8 = "rbxasset://KeyboardSounds/key3.wav",
    F9 = "rbxasset://KeyboardSounds/key4.wav",
    F10 = "rbxasset://KeyboardSounds/key1.wav",
    F11 = "rbxasset://KeyboardSounds/key5.wav",
    F12 = "rbxasset://KeyboardSounds/key6.wav",

    -- NumPad keys
    Keypad0 = "rbxasset://KeyboardSounds/key1.wav",
    Keypad1 = "rbxasset://KeyboardSounds/key2.wav",
    Keypad2 = "rbxasset://KeyboardSounds/key3.wav",
    Keypad3 = "rbxasset://KeyboardSounds/key4.wav",
    Keypad4 = "rbxasset://KeyboardSounds/key5.wav",
    Keypad5 = "rbxasset://KeyboardSounds/key6.wav",
    Keypad6 = "rbxasset://KeyboardSounds/key1.wav",
    Keypad7 = "rbxasset://KeyboardSounds/key2.wav",
    Keypad8 = "rbxasset://KeyboardSounds/key3.wav",
    Keypad9 = "rbxasset://KeyboardSounds/key4.wav",
    KeypadPlus = "rbxasset://KeyboardSounds/key5.wav",
    KeypadMinus = "rbxasset://KeyboardSounds/key6.wav",
    KeypadMultiply = "rbxasset://KeyboardSounds/key1.wav",
    KeypadDivide = "rbxasset://KeyboardSounds/key2.wav",
    
    One = "rbxasset://KeyboardSounds/key1.wav",
    Two = "rbxasset://KeyboardSounds/key2.wav",
    Three = "rbxasset://KeyboardSounds/key3.wav",
    Four = "rbxasset://KeyboardSounds/key4.wav",
    Five = "rbxasset://KeyboardSounds/key5.wav",
    Six = "rbxasset://KeyboardSounds/key6.wav",
    Seven = "rbxasset://KeyboardSounds/key1.wav",
    Eight = "rbxasset://KeyboardSounds/key2.wav",
    Nine = "rbxasset://KeyboardSounds/key3.wav",
}

local function playSound(key)
    local soundId = soundMapping[key]
    if soundId then
        local sound = Instance.new("Sound")
        sound.SoundId = soundId
        sound.Volume = 1 --Set it for self benefit
        sound.PlayOnRemove = true 
        sound.Parent = workspace
        sound:Destroy()
    end
end

UserInputService.InputBegan:Connect(function(input, isProcessed)
    if not isProcessed then
        local keyName = input.KeyCode.Name
        playSound(keyName)
    end
end)
