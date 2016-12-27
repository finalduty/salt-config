windows.regkeys.WUServer:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate
    - vname: WUServer
    - vtype: REG_DWORD
    - vdata: 'http://wsus.webhost.co.nz'

windows.regkeys.WUStatusServer:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate
    - vname: WUStatusServer
    - vtype: REG_DWORD
    - vdata: 'http://wsus.webhost.co.nz'

windows.regkeys.AUOptions:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
    - vname: AUOptions
    - vtype: REG_DWORD
    - vdata: 3

windows.regkeys.AutoInstallMinorUpdates:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
    - vname: AutoInstallMinorUpdates
    - vtype: REG_DWORD
    - vdata: 1

windows.regkeys.IncludeRecommendedUpdates:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
    - vname: IncludeRecommenededUpdates
    - vtype: REG_DWORD
    - vdata: 1

windows.regkeys.NoAutoUpdate:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
    - vname: NoAutoUpdate
    - vtype: REG_DWORD
    - vdata: 1

windows.regkeys.ScheduledInstallDay:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
    - vname: ScheduledInstallDay
    - vtype: REG_DWORD
    - vdata: 1

windows.regkeys.ScheduledInstallTime:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
    - vname: ScheduledInstallTime
    - vtype: REG_DWORD
    - vdata: 3

windows.regkeys.UseWUServer:
  reg.present:
    - name: HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
    - vname: UseWUServer
    - vtype: REG_DWORD
    - vdata: 1

