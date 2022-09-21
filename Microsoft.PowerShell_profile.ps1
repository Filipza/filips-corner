function Get-CmdletAlias ($cmdletname) {
    Get-Alias |
    Where-Object -FilterScript {$_.Definition -like "$cmdletname"} |
    Format-Table -Property Definition, Name -AutoSize
}
Function Get-Zulu {
    Get-Date -Format u
}
Function dcub {
    Start-Process -Wait -NoNewWindow docker-compose -ArgumentList 'up', '--build', ' --remove-orphans'
}
Function dd {
    Start-Process -Wait -NoNewWindow docker-compose -ArgumentList 'down', ' --remove-orphans'
}
Function ds {
    docker-compose stop $args
}
Function c {
    code $args
}
Function e {
    explorer.exe $args
}

