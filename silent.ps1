$path = "D:\Apps\silent.wav"

Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public static class WinMM {
  [DllImport("winmm.dll")]
  public static extern bool PlaySound(string s, IntPtr h, uint f);
  public const uint SND_FILENAME = 0x20000;
  public const uint SND_ASYNC = 0x1;
  public const uint SND_LOOP = 0x8;
}
"@

[WinMM]::PlaySound($path, [IntPtr]::Zero,
  [WinMM]::SND_FILENAME -bor [WinMM]::SND_ASYNC -bor [WinMM]::SND_LOOP)

while ($true) { Start-Sleep 60 }