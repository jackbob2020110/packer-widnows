# packer-widnows
使用packer 快速构建hyper-v镜像


使用前提：

1.安装vagrant和Packer
2.安装HyperV、Vmware Workstation、VirtualBox（这里使用Hyperv)

快速入门：

以Windows 为例，启用HyperV后

1.拉取代码
   git clone https://github.com/jackbob2020110/packer-widnows.git

   cd packer-widnows

2. 运行packer命令

    a.构建Windows 2012 R2
    packer build --only=hyperv-iso `
        --var disk_size=102400 `
        --var iso_url=f:\\iso\\win2012r2.iso `
        --var iso_checksum=f18f500fe9f9f08b4857747a6770a6e4 `
        --var autounattend=./answer_files/2012_r2/Autounattend.xml `
        --var hyperv_switchname=Public `
        test_windows_2012_r2.json