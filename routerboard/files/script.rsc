:if ([/system routerboard get current-firmware] != [/system routerboard get upgrade-firmware]) do={
:log error "Bios need upgrade";
/system script add name="upgrade" source="/system routerboard upgrade";
/system script run upgrade;
:delay 1;
/system script remove [find name=upgrade];
:delay 1;
/system reboot}
#else={:log warning "Nothing"} 
