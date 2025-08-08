
## NixOS Flake 配置模板，助你轻松管理和部署 NixOS 系统。Btw, I use NixOS!

### 简介
nixos-flakes-btw 是一个基于 Nix Flakes 的 NixOS 配置仓库模板。它旨在帮助用户快速上手 NixOS 的 Flake 配置管理，支持多主机、多用户和模块化配置，适合个人和团队使用。

### 特性
🧩 模块化配置：将配置拆分为多个模块，便于维护和复用

🖥️ 多主机支持：轻松为不同主机编写独立配置

🧑‍💻 开发者友好：内置常用开发环境和工具

🚀 快速部署：一条命令即可部署和切换配置

🧬 Flakes 支持：利用 Nix Flakes 的强大功能，提升配置可移植性和可复现性

### 目录结构
```text
.
├── flake.nix             # Flake 入口文件
├── flake.lock          # Flake 锁定文件
├── configuration.nix  #配置文件
├── hardware-configuration.nix         #硬件配置文件
├── home.nix           #home-manager配置文件
├── hosts/              # 各主机配置
│   ├── desktop.nix
│   └── laptop.nix
└── README.md
```
### 快速开始
```
1. 克隆仓库
git clone https://github.com/JaeGerW2016/nixos-flakes-btw.git
cd nixos-flakes-btw
### 2. 编辑主机配置
根据你的主机，编辑 hosts/ 目录下的配置文件，或新建一个：

# hosts/myhost.nix
{ config, pkgs, ... }:
{
  imports = [
    ../flake.nix 
    # 其他模块
  ];

  networking.hostName = "myhost";
  # 其他配置...
}
```
##3. 构建和切换配置
假设你的主机配置名为 myhost，运行：

sudo nixos-rebuild switch --flake .#myhost
### 4. 更新 Flake 输入
```
nix flake update
依赖
Nix >= 2.4 (需启用 flakes)
NixOS
常用命令
构建并切换配置：
sudo nixos-rebuild switch --flake .#<hostname>
检查配置：
nixos-rebuild dry-run --flake .#<hostname>
更新 flake 输入：
nix flake update
```
### 参考资料
[NixOS Wiki: Flakes](https://nixos.wiki/wiki/Flakes)

[NixOS 官方文档](https://nixos.org/manual/nixos/stable/)

### 贡献
欢迎提交 issue 和 PR！

### License
MIT
