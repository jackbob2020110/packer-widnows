# packer build --only=hyperv-iso `
#       --var disk_size=102400 `
#       --var iso_url=f:\\iso\\cn_windows_server_2016_vl_x64_dvd_11636695.iso `
#       --var iso_checksum=6d270bcccaaae844bdb6adbafe3a490009a2b3476a275ee1dff3c45c224a2854 `
#       --var autounattend=./answer_files/2016_hyperv/Autounattend.xml `
#       test_win2016_hv.json

packer build --only=hyperv-iso `
      --var disk_size=102400 `
      --var iso_url=f:\\iso\\cn_windows_server_2016_vl_x64_dvd_11636695.iso `
      --var iso_checksum=6d270bcccaaae844bdb6adbafe3a490009a2b3476a275ee1dff3c45c224a2854 `
      --var autounattend=./answer_files/2016/Autounattend.xml `
      test_win2016_hv.json