#SingleInstance force

; ctrl + shift + [F13 - F19]
^+F13::chooseHandler(0)
^+F14::chooseHandler(1)
^+F15::chooseHandler(2)
^+F16::chooseHandler(3)
^+F17::chooseHandler(4)
^+F18::chooseHandler(5)
^+F19::chooseHandler(6)

chooseHandler(keyNum){
    Winget,AppName,ProcessName,A ; A = active window
    
    if (AppName = "Code.exe"){
        actionHandler_VSCode(keyNum)
    }
    else if (AppName = "reaper.exe"){
        actionHandler_Reaper(keyNum)
    }
    ; else: swallow keypress

    ; TEST, remove
    if (keyNum = 6){
        MsgBox, Button 7 press registered.
    }
}

actionHandler_VSCode(keyNum){
    if (keyNum = 0){
        Send, ^+p ; ctrl + shit + p
        Send, !+r ; alt + shift + r: reveal in file explorer
    }
    if (keyNum = 1){
        Send, ^+p ; ctrl + shit + p
        Send, !+f ; alt + shift + f: format document
    }
    
    
}

actionHandler_Reaper(keyNum){
    if (keyNum = 0){
        ; stop, undo
        Send, {Space}
        Send, {^z} ; ctrl + z
    }
    if (keyNum = 1){
        ; stop, undo, record
        Send, {Space}
        Send, {^z} ; ctrl + z
        Send, {^r} ; ctrl + r
    }
}