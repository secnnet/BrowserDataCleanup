$browserNames = @("Chrome", "Firefox", "Edge", "Opera", "Brave", "Safari")

ForEach ($browserName in $browserNames) {
    $cachePath = ""
    $cookiePath = ""
    $historyPath = ""
    
    # Determine the cache, cookie, and history paths based on the browser
    Switch ($browserName) {
        "Chrome" {
            $cachePath = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache"
            $cookiePath = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cookies"
            $historyPath = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\History"
        }
        "Firefox" {
            $cachePath = "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles\*.default\cache2\entries"
            $cookiePath = "$env:APPDATA\Mozilla\Firefox\Profiles\*.default\cookies.sqlite"
            $historyPath = "$env:APPDATA\Mozilla\Firefox\Profiles\*.default\places.sqlite"
        }
        "Edge" {
            $cachePath = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cache"
            $cookiePath = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Cookies"
            $historyPath = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\History"
        }
        "Opera" {
            $cachePath = "$env:APPDATA\Opera Software\Opera Stable\Cache"
            $cookiePath = "$env:APPDATA\Opera Software\Opera Stable\Cookies"
            $historyPath = "$env:APPDATA\Opera Software\Opera Stable\History"
        }
        "Brave" {
            $cachePath = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Default\Cache"
            $cookiePath = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Default\Cookies"
            $historyPath = "$env:LOCALAPPDATA\BraveSoftware\Brave-Browser\User Data\Default\History"
        }
        "Safari" {
            $cachePath = "$env:LOCALAPPDATA\Apple Computer\Safari\Cache.db"
            $cookiePath = "$env:LOCALAPPDATA\Apple Computer\Safari\Cookies.db"
            $historyPath = "$env:LOCALAPPDATA\Apple Computer\Safari\History.db"
        }
    }

    # Let's unleash the power of destruction!
    if (Test-Path $cachePath) {
        Remove-Item -Path $cachePath -Recurse -Force
        Write-Host "Cache for $browserName annihilated!"
    }
    else {
        Write-Host "No cache found for $browserName. It's already been eradicated!"
    }

    if (Test-Path $cookiePath) {
        Remove-Item -Path $cookiePath -Force
        Write-Host "Cookies for $browserName obliterated!"
    }
    else {
        Write-Host "No cookies found for $browserName. They've vanished into thin air!"
    }

    if (Test-Path $historyPath) {
        Remove-Item -Path $historyPath -Force
        Write-Host "Browsing history for $browserName erased from existence!"
    }
    else {
        Write-Host "No browsing history found for $browserName. It's a blank slate!"
    }
}
