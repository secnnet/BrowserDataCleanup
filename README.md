# BrowserDataCleanup

## Overview

The Browser Data Cleanup Script is a PowerShell script designed to clear the cache, cookies, and browsing history for popular web browsers on Windows devices. It provides an automated way to remove browser data, ensuring a clean and private browsing experience.

## Compatibility

The script is compatible with the following browsers:
- Google Chrome
- Mozilla Firefox
- Microsoft Edge
- Opera
- Brave
- Safari

## Prerequisites

To use this script, you need to have PowerShell installed on your Windows device. PowerShell is a powerful command-line tool that comes pre-installed on most Windows systems. If you're unsure whether PowerShell is installed or need to update it, refer to the official Microsoft documentation for guidance.

## Usage

1. Download the `BrowserDataCleanup.ps1` script from this repository.

2. Open a PowerShell session with administrative privileges. To do this:
   - Press `Win + X` on your keyboard and select "Windows PowerShell (Admin)" from the menu.
   - Alternatively, you can search for PowerShell in the Start Menu, right-click on "Windows PowerShell," and choose "Run as administrator."

3. Navigate to the directory where you saved the script using the `cd` command. For example, if you saved it in the Downloads folder, use the following command:

`cd C:\Users\YourUsername\Downloads`

4. Execute the script by running the following command:

`.\BrowserDataCleanup.ps1`

5. The script will prompt you for permission to run because it contains execution policies. Type `Y` and press Enter to continue.

6. The script will then proceed to clear the cache, cookies, and browsing history for each supported browser installed on your device. The progress and status will be displayed in the PowerShell window.

7. Once the script has completed, it will provide a summary of the actions taken for each browser.

## Caution

- This script is intended for advanced users who understand the consequences of removing browser data. Make sure to review the script and understand the actions it performs before executing it.

- The script requires administrative privileges to delete browser data. Ensure that you run it as an administrator.

- Use this script responsibly and at your own risk. Always have backups of any important data before performing any cleanup actions.

## Acknowledgments

This script is provided as-is and does not guarantee the complete removal of all browser data. It may not account for all possible browser configurations or future updates to the browsers. Use it responsibly and ensure that you have appropriate backups and safeguards in place.

## License

This project is licensed under the [MIT License](LICENSE).
