<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.citrix.pvs_server
Version: 1.0.1

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


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
