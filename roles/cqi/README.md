<!-- BEGIN_ANSIBLE_DOCS -->

# Ansible Role: trippsc2.citrix.cqi
Version: 1.5.1

This role installs Citrix Connection Quality Indicator on Windows systems.

## Requirements

| Platform | Versions |
| -------- | -------- |
| Windows | <ul><li>2025</li><li>2022</li><li>2019</li></ul> |

## Dependencies

| Collection |
| ---------- |
| ansible.windows |

## Role Arguments
|Option|Description|Type|Required|Choices|Default|
|---|---|---|---|---|---|
| ctxcqi_installer_path | <p>The path to the Citrix Connection Quality Indicator MSI installer.</p> | path | yes |  |  |
| ctxcqi_installer_log_path | <p>The path to the log file for the Citrix Connection Quality Indicator installer.</p> | path | no |  | C:\Windows\Temp\CitrixCQI.log |


## License
MIT

## Author and Project Information
Jim Tarpley (@trippsc2)
<!-- END_ANSIBLE_DOCS -->
