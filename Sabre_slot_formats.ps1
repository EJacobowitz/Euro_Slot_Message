
function write-SAM {
    [CmdletBinding()]
    param (

        [Parameter(Mandatory = $true)] $arcid, 
        [Parameter(Mandatory = $true)] $ifplid,
        [Parameter(Mandatory = $true)] $adep,
        [Parameter(Mandatory = $true)] $ades,
        [Parameter(Mandatory = $true)] $eobt,
        [Parameter(Mandatory = $true)] $ctot,
        [Parameter(Mandatory = $false)] $regul,
        [Parameter(Mandatory = $false)] $taxitime,
        [Parameter(Mandatory = $true)] $eobd,
        [Parameter(Mandatory = $false)] $regcause,
        [Parameter(Mandatory = $true)]$filepath
        
    )
    
    begin {
        if ($PSVersionTable.PSVersion.Major -lt 7) {
            Write-Host "Error: Need to run in Powershell 7 or above" -ForegroundColor Red
            Break #Do not run function.
        }

        
        
    }
    
    process {
        $ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
        $filename = "SAM" + (get-date).ToString("yyyyMMddHHmmss") + ".txt"
        $fullfilepath = "$($ScriptDir)\$($filename)"

        "-TITLE SAM" | Out-File -FilePath $fullfilepath -Force -Encoding utf8NoBOM
        "-ARCID $($arcid)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-IFPLID $($ifplid)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-ADEP $($adep)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-ADES $($ades)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-EOBD $($eobd)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-EOBT $($eobt)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-CTOT $($ctot)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-REGUL $($regul)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-TAXITIME $($taxitime)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM
        "-REGCAUSE $($regcause)" | Out-File -FilePath $fullfilepath -Force -Append -Encoding utf8NoBOM -NoNewline

    }
    
    end {
        Move-Item -path $fullfilepath -Destination $filename -Force
    }
}

function write-SRM {
    [CmdletBinding()]
    param (

        [Parameter(Mandatory = $true)] $arcid, 
        [Parameter(Mandatory = $true)] $ifplid,
        [Parameter(Mandatory = $true)] $adep,
        [Parameter(Mandatory = $true)] $ades,
        [Parameter(Mandatory = $true)] $eobt,
        [Parameter(Mandatory = $true)] $ctot,
        [Parameter(Mandatory = $false)] $regul,
        [Parameter(Mandatory = $false)] $taxitime,
        [Parameter(Mandatory = $true)] $eobd,
        [Parameter(Mandatory = $false)] $regcause,
        [Parameter(Mandatory = $true)]$filepath
        
    )
    
    begin {
        if ($PSVersionTable.PSVersion.Major -lt 7) {
            Write-Host "Error: Need to run in Powershell 7 or above" -ForegroundColor Red
            Break #Do not run function.
        }
    }
    
    process {

        "-TITLE SRM" | Out-File -FilePath $filepath -Force -Encoding utf8NoBOM
        "-ARCID $($arcid)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-IFPLID $($ifplid)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-ADEP $($adep)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-ADES $($ades)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-EOBD $($eobd)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-EOBT $($eobt)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-NEWCTOT $($ctot)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-REGUL $($regul)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-TAXITIME $($taxitime)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-REGCAUSE $($regcause)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM -NoNewline

    }
    
    end {
        
    }
}

function write-SLC {
    [CmdletBinding()]
    param (

        [Parameter(Mandatory = $true)] $arcid, 
        [Parameter(Mandatory = $true)] $ifplid,
        [Parameter(Mandatory = $true)] $adep,
        [Parameter(Mandatory = $true)] $ades,
        [Parameter(Mandatory = $true)] $eobt,
        [Parameter(Mandatory = $false)] $regul,
        [Parameter(Mandatory = $false)] $taxitime,
        [Parameter(Mandatory = $true)] $eobd,
        [Parameter(Mandatory = $false)] $regcause,
        [Parameter(Mandatory = $true)]$filepath
        
    )
    
    begin {
        if ($PSVersionTable.PSVersion.Major -lt 7) {
            Write-Host "Error: Need to run in Powershell 7 or above" -ForegroundColor Red
            Break #Do not run function.
        }
    }
    
    process {

        "-TITLE SLC" | Out-File -FilePath $filepath -Force -Encoding utf8NoBOM
        "-ARCID $($arcid)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-IFPLID $($ifplid)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-ADEP $($adep)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-ADES $($ades)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-EOBD $($eobd)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-EOBT $($eobt)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-TAXITIME $($taxitime)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM
        "-REGCAUSE $($regcause)" | Out-File -FilePath $filepath -Force -Append -Encoding utf8NoBOM -NoNewline

    }
    
    end {
        
    }
}

