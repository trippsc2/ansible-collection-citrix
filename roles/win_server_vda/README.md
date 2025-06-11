<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.citrix.win_server_vda
Version: 1.5.1

This role installs and configures Citrix Virtual Delivery Agent for Multi-session OS on Windows servers.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2025</li><li>2022</li><li>2019</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |
| chocolatey.chocolatey |
| community.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| ctxvda_installer_path | <p>Path to the VDA installer.</p> | path | yes |  |  |
| ctxvda_reduce_c_drive_permissions | <p>Whether to reduce the permissions on the C drive.</p> | bool | no |  | True |
| ctxvda_install_remote_assistance | <p>Whether to install the Remote Assistance feature.</p> | bool | no |  | True |
| ctxvda_install_type | <p>The type of VDA installation to perform.</p> | str | no | <ul><li>mcs</li><li>pvs</li><li>remotepc</li></ul> | mcs |
| ctxvda_installer_log_path | <p>Path to the installer log.</p> | path | no |  | C:\Windows\Temp\CitrixVDA.log |
| ctxvda_controllers | <p>List of Delivery Controllers (or Cloud Connectors if Citrix DaaS).</p><p>If not provided, the role will not configure the VDA with controllers.</p> | list of 'str' | no |  |  |
| ctxvda_configure_windows_firewall | <p>Whether to configure the Windows Firewall.</p><p>This takes into account optional features and components, like Real-Time Transport and Screen Sharing, if enabled.</p> | bool | no |  | True |
| ctxvda_enable_real_time_transport | <p>Whether to enable Real-Time Transport.</p> | bool | no |  | True |
| ctxvda_enable_screen_sharing | <p>Whether to enable Screen Sharing.</p> | bool | no |  | True |
| ctxvda_install_rendezvous | <p>Whether to install **Citrix Rendezvous V2**.</p> | bool | no |  | False |
| ctxvda_install_vda_upgrade_agent | <p>Whether to install the **Citrix VDA Upgrade Agent**.</p><p>If *ctxvda_install_type* is set to `remotepc`, this defaults to `true`.</p><p>Otherwise, this defaults to `false`.</p> | bool | no |  |  |
| ctxvda_install_profile_management | <p>Whether to install **Citrix Profile Management** and **Citrix Profile Management WMI Plug-in**.</p> | bool | no |  | True |
| ctxvda_install_mcs_io_driver | <p>Whether to install **Citrix MCS IODriver**.</p><p>If *ctxvda_install_type* is set to `mcs`, this defaults to `true`.</p><p>Otherwise, this defaults to `false`.</p> | bool | no |  |  |
| ctxvda_install_appv_personalization | <p>Whether to install **Citrix Personalization for App-V - VDA**.</p> | bool | no |  | False |
| ctxvda_rendezvous_proxy_config | <p>Configuration for Rendezvous Proxy.</p><p>The configuration should either be a URL in `<protocol>://<host>:<port>` format or a URL path to a `.pac` file.</p><p>If *ctxvda_install_rendezvous_proxy* is `false`, this is ignored.</p> | str | no |  |  |
| ctxvda_enable_deletion_of_per_user_firewall_rules | <p>Whether to enable the deletion of per-user firewall rules.</p> | bool | no |  | True |
| ctxvda_disable_background_auto_layout | <p>Whether to disable background auto layout.</p> | bool | no |  | True |
| ctxvda_disable_background_disk_defragmentation | <p>Whether to disable background disk defragmentation.</p><p>If *ctxvda_install_type* is set to `remotepc`, this defaults to `false`.</p><p>Otherwise, this defaults to `true`.</p> | bool | no |  |  |
| ctxvda_disable_memory_dump_creation | <p>Whether to disable memory dump creation.</p><p>If *ctxvda_install_type* is set to `remotepc`, this defaults to `false`.</p><p>Otherwise, this defaults to `true`.</p> | bool | no |  |  |
| ctxvda_disable_ntfs_last_access_time | <p>Whether to disable NTFS last access time.</p><p>If *ctxvda_install_type* is set to `remotepc`, this defaults to `false`.</p><p>Otherwise, this defaults to `true`.</p> | bool | no |  |  |
| ctxvda_disable_hard_error_messages | <p>Whether to disable hard error messages.</p> | bool | no |  | True |
| ctxvda_set_disk_io_timeout | <p>Whether to set disk I/O timeout.</p> | bool | no |  | True |
| ctxvda_disk_io_timeout_in_seconds | <p>Disk I/O timeout in seconds.</p><p>If *ctxvda_set_disk_io_timeout* is `false`, this value is ignored.</p> | int | no |  | 200 |
| ctxvda_manage_services | <p>Whether to manage the Citrix services.</p> | bool | no |  | True |
| ctxvda_disabled_services | <p>List of services to disable.</p><p>If `ctxvda_install_type` is set to `remotepc`, the `Superfetch` service is removed from the default value.</p> | list of dicts of 'ctxvda_disabled_services' options | no |  | [{'display_name': 'AllJoyn Router Service', 'name': 'AJRouter'}, {'display_name': 'Application Layer Gateway Service', 'name': 'ALG'}, {'display_name': 'Bluetooth Audio Gateway Service', 'name': 'BTAGService'}, {'display_name': 'Bluetooth Support Service', 'name': 'bthserv'}, {'display_name': 'Diagnostic Policy Service', 'name': 'DPS'}, {'display_name': 'Diagnostic Service Host', 'name': 'WdiServiceHost'}, {'display_name': 'Diagnostic System Host', 'name': 'WdiSystemHost'}, {'display_name': 'Downloaded Maps Manager', 'name': 'MapsBroker'}, {'display_name': 'Encrypting File System (EFS)', 'name': 'EFS'}, {'display_name': 'Function Discovery Provider Host', 'name': 'fdPHost'}, {'display_name': 'Function Discovery Resource Publication', 'name': 'FDResPub'}, {'display_name': 'Internet Connection Sharing (ICS)', 'name': 'SharedAccess'}, {'display_name': 'Offline Files', 'name': 'CscService'}, {'display_name': 'Payments and NFC/SE Manager', 'name': 'SEMgrSvc'}, {'display_name': 'Secure Socket Tunneling Protocol Service', 'name': 'SstpSvc'}, {'display_name': 'Sensor Monitoring Service', 'name': 'SensrSvc'}, {'display_name': 'Shared PC Account Manager', 'name': 'shpamsvc'}, {'display_name': 'SSDP Discovery', 'name': 'SSDPSRV'}, {'display_name': 'UPnP Device Host', 'name': 'upnphost'}, {'display_name': 'Windows Media Player Network Sharing Service', 'name': 'WMPNetworkSvc'}, {'display_name': 'Windows Mobile Hotspot Service', 'name': 'icssvc'}, {'display_name': 'Superfetch', 'name': 'SysMain'}, {'display_name': 'Windows Error Reporting Service', 'name': 'WerSvc'}] |
| ctxvda_manage_scheduled_tasks | <p>Whether to manage the Citrix scheduled tasks.</p> | bool | no |  | True |
| ctxvda_disabled_scheduled_tasks | <p>List of scheduled tasks to disable.</p><p>If `ctxvda_install_type` is set to `remotepc`, the `Microsoft-Windows-DiskDiagnosticResolver`, `RegIdleBackup`, and `ScheduledDefrag` tasks are removed from the default value.</p> | list of dicts of 'ctxvda_disabled_scheduled_tasks' options | no |  | [{'name': 'AnalyzeSystem', 'path': '\\Microsoft\\Windows\\Power Efficiency Diagnostics'}, {'name': 'BfeOnServiceStartTypeChange', 'path': '\\Microsoft\\Windows\\Windows Filtering Platform'}, {'name': 'Consolidator', 'path': '\\Microsoft\\Windows\\Customer Experience Improvement Program'}, {'name': 'CreateObjectTask', 'path': '\\Microsoft\\Windows\\Shell'}, {'name': 'IndexerAutomaticMaintenance', 'path': '\\Microsoft\\Windows\\Shell'}, {'name': 'MapsToastTask', 'path': '\\Microsoft\\Windows\\Maps'}, {'name': 'Microsoft Compatibility Appraiser', 'path': '\\Microsoft\\Windows\\Application Experience'}, {'name': 'Microsoft-Windows-DiskDiagnosticDataCollector', 'path': '\\Microsoft\\Windows\\DiskDiagnostic'}, {'name': 'Microsoft-Windows-DiskDiagnosticResolver', 'path': '\\Microsoft\\Windows\\DiskDiagnostic'}, {'name': 'MNO Metadata Parser', 'path': '\\Microsoft\\Windows\\Mobile Broadband Accounts'}, {'name': 'MobilityManager', 'path': '\\Microsoft\\Windows\\Ras'}, {'name': 'Notifications', 'path': '\\Microsoft\\Windows\\Location'}, {'name': 'ProactiveScan', 'path': '\\Microsoft\\Windows\\Chkdsk'}, {'name': 'ProcessMemoryDiagnosticEvents', 'path': '\\Microsoft\\Windows\\MemoryDiagnostic'}, {'name': 'ProgramDataUpdater', 'path': '\\Microsoft\\Windows\\Application Experience'}, {'name': 'Proxy', 'path': '\\Microsoft\\Windows\\Autochk'}, {'name': 'QueueReporting', 'path': '\\Microsoft\\Windows\\Windows Error Reporting'}, {'name': 'RegIdleBackup', 'path': '\\Microsoft\\Windows\\Registry'}, {'name': 'ResolutionHost', 'path': '\\Microsoft\\Windows\\WDI'}, {'name': 'RunFullMemoryDiagnostic', 'path': '\\Microsoft\\Windows\\MemoryDiagnostic'}, {'name': 'Scheduled', 'path': '\\Microsoft\\Windows\\Diagnosis'}, {'name': 'ScheduledDefrag', 'path': '\\Microsoft\\Windows\\Defrag'}, {'name': 'ServerManager', 'path': '\\Microsoft\\Windows\\Server Manager'}, {'name': 'StartComponentCleanup', 'path': '\\Microsoft\\Windows\\Servicing'}, {'name': 'StartupAppTask', 'path': '\\Microsoft\\Windows\\Application Experience'}, {'name': 'TPM-Maintenance', 'path': '\\Microsoft\\Windows\\TPM'}, {'name': 'UninstallDeviceTask', 'path': '\\Microsoft\\Windows\\Bluetooth'}, {'name': 'UPnPHostConfig', 'path': '\\Microsoft\\Windows\\UPnP'}, {'name': 'UsbCeip', 'path': '\\Microsoft\\Windows\\Customer Experience Improvement Program'}, {'name': 'VerifyWinRE', 'path': '\\Microsoft\\Windows\\RecoveryEnvironment'}, {'name': 'Windows Defender Cache Maintenance', 'path': '\\Microsoft\\Windows\\Windows Defender'}, {'name': 'Windows Defender Cleanup', 'path': '\\Microsoft\\Windows\\Windows Defender'}, {'name': 'Windows Defender Verification', 'path': '\\Microsoft\\Windows\\Windows Defender'}, {'name': 'UpdateLibrary', 'path': '\\Microsoft\\Windows\\Windows Media Sharing'}, {'name': 'WinSAT', 'path': '\\Microsoft\\Windows\\Maintenance'}, {'name': 'Recovery-Check', 'path': '\\Microsoft\\Windows\\Workplace Join'}] |

### Options for ctxvda_disabled_services
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| display_name | <p>Display name of the service.</p> | str | yes |  |  |
| name | <p>Name of the service.</p> | str | yes |  |  |

### Options for ctxvda_disabled_scheduled_tasks
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| name | <p>Name of the scheduled task.</p> | str | yes |  |  |
| path | <p>Path of the scheduled task.</p> | str | yes |  |  |


## License
MIT

## Author and Project Information
Jim Tarpley (@trippsc2)
<!-- END_ANSIBLE_DOCS -->
