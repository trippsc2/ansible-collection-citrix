# Changelog

All notable changes to this project will be documented in this file.

## [1.3.2] - 2025-01-08

- Added Changelog.
- Updated collection README documentation.

## [1.3.1] - 2024-12-06

- *trippsc2.citrix.win_server_vda* role - Refactored the steps to disable services and scheduled tasks to reduce the number of tasks.

## [1.3.0] - 2024-11-12

- *trippsc2.citrix.win_server_vda* role - Removed step to disable pagefile. Any page file configuration should be done outside of the role.

## [1.2.1] - 2024-11-07

- *trippsc2.citrix.pvs_console* role - Added support for 2402 CU1 to be installed.
- *trippsc2.citrix.pvs_server* role - Added support for 2402 CU1 to be installed.
- *trippsc2.citrix.pvs_target* role - Added support for 2402 CU1 to be installed.
- *trippsc2.citrix.win_server_vda* role - Added support for 2402 CU1 to be installed.

## [1.2.0] - 2024-10-28

- *trippsc2.citrix.wem_agent* role - Role added.

## [1.1.0] - 2024-10-24

- *trippsc2.citrix.licensing* role - Role added.

## [1.0.1] - 2024-09-21

- *trippsc2.citrix_win_server_vda* role - Added `ctxvda_installer_path` variable to the role argument spec that was missing by mistake.

## [1.0.0] - 2024-09-20

- Initial release.
- *trippsc2.citrix.cqi* role - Role added.
- *trippsc2.citrix.pvs_console* role - Role added.
- *trippsc2.citrix.pvs_server* role - Role added.
- *trippsc2.citrix.pvs_target* role - Role added.
- *trippsc2.citrix.win_server_vda* role - Role added.
