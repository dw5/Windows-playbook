# Define the path to add
$newPath = "C:\clishared"

# Get the current system PATH
$currentPath = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine)

# Check if the path already exists in the PATH variable
if ($currentPath -notcontains $newPath) {
    # Append the new path to the current PATH
    $newPathToAdd = "$newPath;$currentPath"

    # Update the system PATH
    [Environment]::SetEnvironmentVariable('PATH', $newPathToAdd, [EnvironmentVariableTarget]::Machine)

    Write-Host "Added $newPath to the system PATH."
} else {
    Write-Host "$newPath is already in the system PATH."
}