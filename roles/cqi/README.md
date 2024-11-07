<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.citrix.cqi
Version: 1.2.1

This role installs Citrix Connection Quality Indicator on Windows systems.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2019</li><li>2022</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |
| community.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| ctxcqi_installer_path | <p>The path to the Citrix Connection Quality Indicator MSI installer.</p> | path | yes |  |  |
| ctxcqi_installer_log_path | <p>The path to the log file for the Citrix Connection Quality Indicator installer.</p> | path | no |  | C:\Windows\Temp\CitrixCQI.log |


## License
MIT

## Author and Project Information
Jim Tarpley
<!-- END_ANSIBLE_DOCS -->
