<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.citrix.licensing
Version: 1.3.2

This role installs the Citrix Licensing server on Windows servers.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| ctxlic_installer_path | <p>The path to the Citrix Licensing installer MSI.</p> | path | yes |  |  |
| ctxlic_install_log_file | <p>The path to the log file that will be created during the installation process.</p> | path | no |  |  |
| ctxlic_install_directory | <p>The directory where the Citrix Licensing server will be installed.</p><p>If not defined, the role will use the default installation directory.</p> | path | no |  |  |
| ctxlic_web_services_for_licensing_port | <p>The port number for the Citrix Licensing web services.</p><p>If not defined, the role will use the default port number of 8083.</p> | int | no |  |  |
| ctxlic_license_server_port | <p>The port number for the Citrix Licensing server.</p><p>If not defined, the role will use the default port number of 27000.</p> | int | no |  |  |
| ctxlic_vendor_daemon_port | <p>The port number for the Citrix Licensing vendor daemon.</p><p>If not defined, the role will use the default port number of 7279.</p> | int | no |  |  |
| ctxlic_ceip_optin | <p>The Citrix Customer Experience Improvement Program (CEIP) opt-in setting.</p><p>If not defined, the role will use the default setting of 'none'.</p> | str | no | <ul><li>diagnostic</li><li>unidentified</li><li>none</li></ul> |  |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
