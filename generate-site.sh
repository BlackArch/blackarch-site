#Counter of all tools
export TOOL_COUNT=`wc -l < data/tools`

export AFORENSIC_COUNT=`wc -l < data/anti-forensic`
export AUTOMATION_COUNT=`wc -l < data/automation`
export AUTOMOBILE_COUNT=`wc -l < data/automobile`
export BACKDOOR_COUNT=`wc -l < data/backdoor`
export BINARY_COUNT=`wc -l < data/binary`
export BLACKARCH_COUNT=`wc -l < data/blackarch`
export BLUETOOTH_COUNT=`wc -l < data/bluetooth`
export AUDIT_COUNT=`wc -l < data/code-audit`
export CRACKER_COUNT=`wc -l < data/cracker`
export CRYPTO_COUNT=`wc -l < data/crypto`
export DATABASE_COUNT=`wc -l < data/database`
export DEBUGGER_COUNT=`wc -l < data/debugger`
export DECOMPILER_COUNT=`wc -l < data/decompiler`
export DEFENSIVE_COUNT=`wc -l < data/defensive`
export DEVEL_COUNT=`wc -l < data/devel`
export DISASSEMBLER_COUNT=`wc -l < data/disassembler`
export DOS_COUNT=`wc -l < data/dos`
export DRONE_COUNT=`wc -l < data/drone`
export EXPLOITATION_COUNT=`wc -l < data/exploitation`
export FINGERPRINT_COUNT=`wc -l < data/fingerprint`
export FIRMWARE_COUNT=`wc -l < data/firmware`
export FORENSIC_COUNT=`wc -l < data/forensic`
export FUZZER_COUNT=`wc -l < data/fuzzer`
export HARDWARE_COUNT=`wc -l < data/hardware`
export HONEYPOT_COUNT=`wc -l < data/honeypot`
export IDS_COUNT=`wc -l < data/ids`
export KEYLOGGER_COUNT=`wc -l < data/keylogger`
export MALWARE_COUNT=`wc -l < data/malware`
export MISC_COUNT=`wc -l < data/misc`
export MOBILE_COUNT=`wc -l < data/mobile`
export NETWORKING_COUNT=`wc -l < data/networking`
export NFC_COUNT=`wc -l < data/nfc`
export PACKER_COUNT=`wc -l < data/packer`
export PROXY_COUNT=`wc -l < data/proxy`
export RADIO_COUNT=`wc -l < data/radio`
export RECON_COUNT=`wc -l < data/recon`
export REVERSING_COUNT=`wc -l < data/reversing`
export SCANNER_COUNT=`wc -l < data/scanner`
export SNIFFER_COUNT=`wc -l < data/sniffer`
export SOCIAL_COUNT=`wc -l < data/social`
export SPOOF_COUNT=`wc -l < data/spoof`
export THREAT_COUNT=`wc -l < data/threat-model`
export TOOLS_COUNT=`wc -l < data/tools`
export TUNNEL_COUNT=`wc -l < data/tunnel`
export VOIP_COUNT=`wc -l < data/voip`
export WEBAPP_COUNT=`wc -l < data/webapp`
export WINDOWS_COUNT=`wc -l < data/windows`
export WIRELESS_COUNT=`wc -l< data/wireless`


for i in generators/*.sh ; do
	sh $i > `basename $i .sh`
done
