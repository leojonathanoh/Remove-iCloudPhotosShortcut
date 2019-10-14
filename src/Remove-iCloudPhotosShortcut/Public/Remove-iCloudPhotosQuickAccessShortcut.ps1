function Remove-iCloudPhotosQuickAccessShortcut {
    [CmdletBinding()]
    param()
    # iCloud Photos Quick access shortcut's item path
    [string]$QA_ITEM_PATH = '::{20D04FE0-3AEA-1069-A2D8-08002B30309D}\::{F0D63F85-37EC-4097-B30D-61B4A8917118}'
    try {
        "Removing the iCloud Photos Quick access shortcut" | Write-Verbose
        Remove-QuickAccessItem -Path $QA_ITEM_PATH -ErrorAction Stop
    }catch {
        throw
    }
}
