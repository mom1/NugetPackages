import-module au

$releases = 'https://www.ivideon.com/downloads/'
$NoCheckChocoVersion = 1

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases

    $url32   = $download_page.links | ? href -match 'win32_setup.exe$' | % href | select -Last 1
    $url64   = $url32
    $version = (Split-Path $url32 -Leaf).Split("_")[1]

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

update -NoCheckChocoVersion -Force
