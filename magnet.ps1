# The directory to receive .torrent files (include trailing \)
$watch = "C:\Users\user\Dropbox\torrent\"

$m = $args[0]
$torrent = "d10:magnet-uri" + $m.length + ":" + $m +"e"
if ($m -match "xt=urn:btih:([^&/]+)") 
{
	$file = $watch + "meta-" + $matches[1] + ".torrent"
	$wshell = New-Object -ComObject Wscript.Shell
	Out-File -FilePath $file -InputObject $torrent -Encoding ASCII
	if ( -Not $Error ) {
		$wshell.Popup("Torrent file " + $file + " created.",0,"Torrent Added",0x0)
		exit 0
	}
	else
	{
		$null = $wshell.Popup($Error[0],0,"Torrent Failed",0x10)
		exit 2
	}
}
else
{
	exit 1
}
