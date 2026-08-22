Windows 11 Recovery Partition Remover

A Windows 11 utility for manually identifying and removing an unwanted Windows Recovery partition using built-in Windows tools.

«⚠️ WARNING: Recovery partitions contain Windows Recovery Environment (WinRE) files. Removing the wrong partition can make recovery features unavailable or cause data loss. Back up important files before continuing.»

Features

- Windows 11 focused
- Uses built-in Windows tools
- DiskPart-based workflow
- Shows how to identify the recovery partition
- Does not automatically select a disk
- Designed for advanced users

Requirements

- Windows 11
- Administrator privileges
- A backup of important data
- Basic knowledge of Disk Management / DiskPart

Before You Start

Open an Administrator Command Prompt or PowerShell and check whether WinRE is enabled:

reagentc /info

If WinRE is enabled, disable it before removing its partition:

reagentc /disable

Verify the result:

reagentc /info

Identify the Recovery Partition

Start DiskPart:

diskpart

List disks:

list disk

Select the correct Windows disk:

select disk 0

«Replace "0" with the correct disk number. Do not assume Disk 0 is the correct disk.»

List partitions:

list partition

Look for a partition identified as Recovery.

You can inspect the disk layout with:

list volume

Remove the Recovery Partition

Only after verifying that you selected the correct recovery partition:

select partition X

Replace "X" with the recovery partition number.

Then:

delete partition override

Exit DiskPart:

exit

«Do not use "delete partition override" on a partition unless you have positively verified that it is the recovery partition you intend to remove.»

Re-enable WinRE

After modifying the partition layout, check:

reagentc /info

If you have configured a new recovery environment, WinRE can be enabled with:

reagentc /enable

Then verify:

reagentc /info

Important Notes

Removing the recovery partition may:

- Remove the local Windows Recovery Environment
- Prevent some built-in recovery options from working
- Require Windows installation/recovery media for troubleshooting
- Leave unallocated space that may need to be managed separately

Windows may also recreate a recovery partition during a future upgrade or feature update.

Recommended Alternative

If the goal is simply to recover disk space, first check whether the recovery partition can safely be left alone. Recovery partitions are normally relatively small, so deleting one may provide little usable space compared with the risk.

Disclaimer

This project is provided for educational and administrative purposes.

The author is not responsible for:

- Data loss
- Incorrect partition deletion
- Windows boot problems
- Loss of Windows Recovery Environment
- Damaged disks or partitions

Always verify the disk and partition numbers before executing destructive DiskPart commands.

License

Choose an appropriate open-source license before publishing this repository, such as MIT, GPL-3.0, or Apache-2.0.