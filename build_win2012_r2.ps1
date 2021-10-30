packer build --only=hyperv-iso `
      --var disk_size=102400 `
      --var iso_url=f:\\iso\\win2012r2.iso `
      --var iso_checksum=f18f500fe9f9f08b4857747a6770a6e4 `
      --var autounattend=./answer_files/2012_r2/Autounattend.xml `
      --var hyperv_switchname=Public `
      test_windows_2012_r2.json