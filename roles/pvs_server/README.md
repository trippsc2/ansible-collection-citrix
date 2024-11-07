<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.citrix.pvs_server
Version: 1.2.1

This role installs the Citrix Provisioning Server software on Windows servers.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies
| Role |
| ---- |
| trippsc2.citrix.pvs_console |

| Collection |
| ---------- |
| ansible.windows |
| community.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| ctxpvs_server_installer_path | <p>The path to the Citrix Provisioning Server installer executable.</p> | path | yes |  |  |
| ctxpvs_ip_service_type | <p>The type of local service that provides IP addresses to target devices.</p><p>If not defined, another service must provide IP addresses to target devices.</p><p>If set to 'microsoft_dhcp', the role will use the Microsoft DHCP service on this server.</p><p>If set to 'citrix_bootp', the role will use the Citrix BootP service on this server.</p><p>If set to 'other', the role will rely on a third-party service on this server.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no | <ul><li>microsoft_dhcp</li><li>citrix_bootp</li><li>other</li></ul> |  |
| ctxpvs_pxe_service_type | <p>The type of local service that provides PXE boot services to target devices.</p><p>If *ctxpvs_ip_service_type* is set to 'citrix_bootp', this value is ignored and will be treated as 'citrix_pxe'.</p><p>Otherwise, this is required.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no | <ul><li>citrix_pxe</li><li>other</li></ul> |  |
| ctxpvs_first_farm_server | <p>If the role performs a fresh install, this will indicate to the configuration wizard whether this server is creating a new farm.</p><p>If the role performs an upgrade, the older farm configuration will be preserved.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_first_site_server | <p>If the role performs a fresh install, this will indicate to the configuration wizard whether this server is creating a new site.</p><p>If the role performs an upgrade, the older site configuration will be preserved.</p><p>If *ctxpvs_first_farm_server* is set to `true`, this is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_first_store_server | <p>If the role performs a fresh install, this will indicate to the configuration wizard whether this server is creating a new store.</p><p>If the role performs an upgrade, the older store configuration will be preserved.</p><p>If *ctxpvs_first_farm_server* is set to `true`, this is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_database_admin_authentication | <p>The type of authentication to use when creating and configuring the database.</p><p>If set to `ad`, the role will use the Active Directory account that is running the Citrix PVS Configuration Wizard.</p><p>If set to `sql`, the *ctxpvs_database_admin_username* and *ctxpvs_database_admin_password* options are required.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no | <ul><li>ad</li><li>sql</li></ul> | ad |
| ctxpvs_database_admin_username | <p>The SQL Server username to use when creating and configuring the database.</p><p>If *ctxpvs_database_admin_authentication* is set to `sql`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_database_admin_password | <p>The password for the SQL Server username to use when creating and configuring the database.</p><p>If *ctxpvs_database_admin_authentication* is set to `sql`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_database_authentication | <p>The type of authentication to use when connecting to the database.</p><p>If set to `ad`, the user running the Provisioning service will connect to the database.</p><p>If set to `sql`, the *ctxpvs_database_username* and *ctxpvs_database_password* options are required.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no | <ul><li>ad</li><li>sql</li></ul> | ad |
| ctxpvs_database_username | <p>The SQL Server username to use when connecting to the database.</p><p>If *ctxpvs_database_authentication* is set to `sql`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_database_password | <p>The password for the SQL Server username to use when connecting to the database.</p><p>If *ctxpvs_database_authentication* is set to `sql`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_database_server | <p>The name of the SQL Server to configure for the Citrix Provisioning server.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| ctxpvs_database_port | <p>The port number to use when connecting to the SQL Server.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 1433 |
| ctxpvs_multisubnet_failover | <p>If the SQL Server is configured for multisubnet failover, set this to `true`.</p><p>This is used for SQL Server Always On Availability Groups that span multiple subnets.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_failover_database_server | <p>The name of the SQL Server to use when the primary SQL Server is unavailable.</p><p>This is used when SQL Server Mirroring is used.</p><p>If not defined, this will not be configured.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_failover_database_port | <p>The port number to use when connecting to the failover SQL Server.</p><p>If *ctxpvs_failover_database_server* is not defined, this will not be configured.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 1433 |
| ctxpvs_database_name | <p>The name of the database to configure for the Citrix Provisioning server.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| ctxpvs_farm_name | <p>The name of the farm to create or join.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| ctxpvs_site_name | <p>The name of the site to create or join.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| ctxpvs_collection_name | <p>The name of the collection to create or join.</p><p>If *ctxpvs_first_site_server* or *ctxpvs_first_farm_server* is set to `true`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_store_name | <p>The name of the store to create or join.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| ctxpvs_default_store_path | <p>The default path to configure on the store.</p><p>If *ctxpvs_first_store_server* or *ctxpvs_first_farm_server* is set to `true`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | path | no |  |  |
| ctxpvs_ad_admin_group | <p>The Active Directory group to use when creating a new farm.</p><p>If *ctxpvs_first_farm_server* is set to `true`, this is required. Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_license_server | <p>The name of the Citrix License Server to use.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| ctxpvs_license_server_port | <p>The port number to use when connecting to the Citrix License Server.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 27000 |
| ctxpvs_use_cloud_licenses | <p>Whether to use Citrix Cloud licenses.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_enable_license_trade_up | <p>Whether to enable license trade-up.</p><p>This allows licenses of greater functionality to be used in place of lesser licenses.</p><p>If *ctxpvs_use_cloud_licenses* is set to `true`, this is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | true |
| ctxpvs_use_network_service_account | <p>Whether to use the Network Service account for the Citrix Provisioning Server service.</p><p>If set to `false`, the *ctxpvs_service_username* and *ctxpvs_service_password* options are required.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_service_username | <p>The username to use for the Citrix Provisioning Server service.</p><p>If *ctxpvs_use_network_service_account* is set to `false`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_service_password | <p>The password for the username to use for the Citrix Provisioning Server service.</p><p>If *ctxpvs_use_network_service_account* is set to `false`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_password_mgmt_interval | <p>The number of days between password changes for the Citrix Provisioning created machine accounts.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 7 |
| ctxpvs_stream_adapter_ip_addresses | <p>A list of IP addresses to use for the Citrix Provisioning Server stream adapters.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | list of 'str' | yes |  |  |
| ctxpvs_mgmt_ip_address | <p>The IP address to use for the Citrix Provisioning Server management interface.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| ctxpvs_ipc_starting_port | <p>The starting port number to use for the Citrix Provisioning Server inter-process communication.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 6890 |
| ctxpvs_ipc_port_count | <p>The number of ports to use for the Citrix Provisioning Server inter-process communication.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 20 |
| ctxpvs_soap_port | <p>The port number to use for the Citrix Provisioning Server SOAP service.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 54321 |
| ctxpvs_stream_servers | <p>A list of stream servers to configure.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | list of dicts of 'ctxpvs_stream_servers' options | yes |  |  |
| ctxpvs_verbose_mode | <p>Whether to configure the stream service to run in Verbose mode.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_interrupt_safe_mode | <p>Whether to configure the stream service to interrupt safe mode.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_advanced_memory_support | <p>Whether to configure the stream service to use advanced memory support.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | true |
| ctxpvs_network_recovery_method | <p>The recovery method to use when the network connection is lost.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no | <ul><li>restore_network_connection</li><li>reboot_to_hard_drive</li></ul> | restore_network_connection |
| ctxpvs_network_recovery_timeout_in_seconds | <p>The number of seconds to wait before attempting to recover the network connection.</p><p>If *ctxpvs_network_recovery_method* is set to `restore_network_connection`, this is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 50 |
| ctxpvs_login_polling_timeout_in_milliseconds | <p>The number of milliseconds to wait between polling the machines for logged-in users.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 5000 |
| ctxpvs_login_general_timeout_in_milliseconds | <p>The number of milliseconds to wait for a machine login.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 30000 |
| ctxpvs_configure_soap_ssl | <p>Whether to configure the SOAP service to use SSL.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | bool | no |  | false |
| ctxpvs_soap_ssl_port | <p>The port number to use for the SOAP service when SSL is enabled.</p><p>If *ctxpvs_configure_soap_ssl* is set to `false`, this is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 54323 |
| ctxpvs_soap_ssl_certificate | <p>The serial number or thumbprint of the certificate to use for the SOAP service when SSL is enabled.</p><p>If *ctxpvs_configure_soap_ssl* is set to `true`, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_cis_username | <p>The username to use for the Citrix Insight Services.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |
| ctxpvs_cis_password | <p>The password for the username to use for the Citrix Insight Services.</p><p>If *ctxpvs_cis_username* is defined, this is required.  Otherwise, it is ignored.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  |  |

### Options for ctxpvs_stream_servers
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| ip_address | <p>The IP address of the stream server.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | yes |  |  |
| subnet_mask | <p>The subnet mask of the stream server.</p><p>If the server receives a DHCP address, this should not be set or should be set to `0.0.0.0`.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  | 0.0.0.0 |
| gateway_ip | <p>The gateway IP address of the stream server.</p><p>If the server receives a DHCP address, this should not be set or should be set to `0.0.0.0`.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | str | no |  | 0.0.0.0 |
| port | <p>The port number to use for the stream server.</p><p>Reference: https://docs.citrix.com/en-us/provisioning/current-release/install/install-wizard-silent</p> | int | no |  | 6910 |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
