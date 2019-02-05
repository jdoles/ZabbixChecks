# Windows Disk Performance
The checks in this section monitor various performance counters for disk activity.
## Configuration
1. Copy ZabbixWPMDisk-LLD.ps1 to your Zabbix scripts directory
2. Add zabbix_agentd.userparams.conf to your Zabbix conf directory (Optionally, you may add the content of this file to an existing user params file.)
3. Restart the Zabbix agent
4. Import Windows Disk Performance.xml into your Zabbix server
5. Assign the template to your host
