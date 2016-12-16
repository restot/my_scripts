<# :
  @echo off
    powershell /command ^
    "&{[ScriptBlock]::Create((cat """%~f0""") -join [Char]10).Invoke(@(&{$args}%1))}"
   
#>
 
{
  param(
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [String]$ClassName
  )
 
  Add-Type -AssemblyName ($a = 'System.Windows.Forms')
 
  $FindWindow = ($unm = ($asm = [AppDomain]::CurrentDomain.GetAssemblies() | ? {
    $_.ManifestModule.ScopeName.Equals("$a.dll")
  }).GetType("$a.UnsafeNativeMethods")).GetMethod('FindWindow')
  $SetForegroundWindow = $unm.GetMethod('SetForegroundWindow')
  $ShowWindow = $asm.GetType("$a.SafeNativeMethods").GetMethod('ShowWindow')
 
  $SW_SHOW = 5
  
  if (($ptr = $FindWindow.Invoke($null, @($ClassName, $null))) -eq [IntPtr]::Zero) {
    "Could not find $($ClassName) window.`n"
    return
  }
 
  [Runtime.InteropServices.HandleRef]$href = New-Object Runtime.InteropServices.HandleRef(
    (New-Object IntPtr), $ptr
  )
  
  [void]$SetForegroundWindow.Invoke($null, @($href))
  [void]$ShowWindow.Invoke($null, @($href, $SW_SHOW))
}.Invoke($args)