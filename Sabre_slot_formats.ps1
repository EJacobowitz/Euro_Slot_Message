
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
        
    }
    
    process {

        $message = " 
-TITLE SAM
-ARCID $arcid
-IFPLID $ifplid
-ADEP $adep 
-ADES $ades
-EOBT $eobt
-CTOT $ctot
-REGUL $regul
-TAXITIME $taxitime
-EOBD $eobd
-REGCAUSE $regcause
"

        $message | Out-File -FilePath $filepath -Force
    }
    
    end {
        
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
        
    }
    
    process {

        $message = " 
-TITLE SRM
-ARCID $arcid
-IFPLID $ifplid
-ADEP $adep 
-ADES $ades
-EOBD $eobd
-EOBT $eobt
-NEWCTOT $ctot
-REGUL $regul
-TAXITIME $taxitime
-REGCAUSE $regcause
"

        $message | Out-File -FilePath $filepath -Force
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
        
    }
    
    process {

        $message = " 
-TITLE SLC
-ARCID $arcid
-IFPLID $ifplid
-ADEP $adep 
-ADES $ades
-EOBD $eobd
-EOBT $eobt
-REGCAUSE $regcause
-TAXITIME $taxitime
"

        $message | Out-File -FilePath $filepath -Force
    }
    
    end {
        
    }
}

