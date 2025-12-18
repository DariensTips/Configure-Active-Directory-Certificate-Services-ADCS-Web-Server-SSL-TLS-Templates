<################################################################################

  _____             _                _   _______ _           
 |  __ \           (_)              ( ) |__   __(_)          
 | |  | | __ _ _ __ _  ___ _ __  ___|/     | |   _ _ __  ___ 
 | |  | |/ _` | '__| |/ _ \ '_ \/ __|      | |  | | '_ \/ __|
 | |__| | (_| | |  | |  __/ | | \__ \      | |  | | |_) \__ \
 |_____/ \__,_|_|  |_|\___|_| |_|___/      |_|  |_| .__/|___/
                                                  | |        
                                                  |_|        
 
              _            _                _   _           ___  _  _    ___   ___  
    ____     | |          (_)              | | (_)         / _ \| || |  / _ \ / _ \ 
   / __ \  __| | __ _ _ __ _  ___ _ __  ___| |_ _ _ __  __| (_) | || |_| | | | (_) |
  / / _` |/ _` |/ _` | '__| |/ _ \ '_ \/ __| __| | '_ \/ __\__, |__   _| | | |\__, |
 | | (_| | (_| | (_| | |  | |  __/ | | \__ \ |_| | |_) \__ \ / /   | | | |_| |  / / 
  \ \__,_|\__,_|\__,_|_|  |_|\___|_| |_|___/\__|_| .__/|___//_/    |_|  \___/  /_/  
   \____/                                        | |                                
                                                 |_|                                



 Title :   	Configure Active Directory Certificate Services (ADCS) Web Server SSL-TLS Templates
 Channel:		https://www.youtube.com/@darienstips9409
 Link:			https://youtu.be/iWceWlxwQac

################################################################################>


Get-ChildItem Cert:\LocalMachine\my
$daCert=Get-ChildItem Cert:\LocalMachine\my\[thumbprint]
$mypwd = ConvertTo-SecureString -String 'yourGoodPwssd' -Force -AsPlainText
Export-PfxCertificate -Cert $daCert -FilePath [path]\[filename].pfx -Password $mypwd

certutil.exe -dump [path]\[filename].pfx.pfx
certutil.exe -p a -dumppfx [path]\[filename].pfx
Get-PfxCertificate [path]\[filename].pfx | Select-Object *
Get-PfxCertificate [path]\[filename].pfx | Select-Object -ExpandProperty DnsNameList
