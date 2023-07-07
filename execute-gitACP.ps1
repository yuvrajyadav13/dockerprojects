function gitacm {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$false)]
        [String]$CommitMessage
    )
    
    Begin {
        if ($CommitMessage.length -ne 0) {
            $message = $CommitMessage
        } else {
            $message = "Update"
        }
    }

    process {
        git add . 
        git commit -m "$message"
        git push
    }

    End {
        Write-Output "Push Successfull!!!"
    }
    
}