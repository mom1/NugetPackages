$package = 'PuntoSwitcher'

try {
  $msiArgs = "/X{57B1BFB9-44BD-4190-954C-37ABB193A557} /qb-! REBOOT=ReallySuppress"
  Start-ChocolateyProcessAsAdmin "$msiArgs" 'msiexec'

  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}