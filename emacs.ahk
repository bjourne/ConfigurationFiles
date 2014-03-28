#t::
Process, Exist, emacs.exe
{
    if (errorLevel = 0)
    {
        Run, "C:\p\emacs2\bin\emacssrv.cmd"
        Return
    }
    else
    {
        IfWinActive ahk_class Emacs
        {
            WinMinimize, A
            Return
        }
        DetectHiddenWindows, On
        IfWinExist ahk_class Emacs
        WinActivate
        Return
    }
}
