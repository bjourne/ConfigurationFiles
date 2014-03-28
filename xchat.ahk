#x::
Process, Exist, xchat.exe
{
    if (errorLevel = 0)
    {
        Run, "xchat.exe"
        Return
    }
    else
    {
        WinGet, mmState, MinMax, YChat
        if (mmState = 1)
        {
            WinMinimize YChat
            Return
        }
        SetTitleMatchMode, 2
        DetectHiddenWindows, On
        IfWinExist YChat
        WinActivate
        return
    }
}
