# Changelog

All notable changes to this project will be documented in this file.

## [1.3.2] - 2025-01-08

### Collection

- Added Changelog.
- Updated collection README documentation.

## [1.3.1] - 2024-12-06

### Role - win_server_vda

- Refactored the steps to disable services and scheduled tasks to reduce the number of tasks.

## [1.3.0] - 2024-11-12

### Role - win_server_vda

- Removed step to disable pagefile. Any page file configuration should be done outside of the role.

## [1.2.1] - 2024-11-07

### Role - pvs_console

- Added support for 2402 CU1 to be installed.

### Role - pvs_server

- Added support for 2402 CU1 to be installed.

### Role - pvs_target

- Added support for 2402 CU1 to be installed.

### Role - win_server_vda

- Added support for 2402 CU1 to be installed.

## [1.2.0] - 2024-10-28

### Collection

- *wem_agent* role added.

## [1.1.0] - 2024-10-24

### Collection

- *licensing* role added.

## [1.0.1] - 2024-09-21

### Role - win_server_vda

- Added `ctxvda_installer_path` variable to the role argument spec that was missing by mistake.

## [1.0.0] - 2024-09-20

### Collection

- Initial release.
- *cqi* role - Role added.
- *pvs_console* role added.
- *pvs_server* role added.
- *pvs_target* role added.
- *win_server_vda* role added.
