# AstroNvim 用户配置示例

用户配置模板 [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ 安装

#### 备份当前的 nvim 和共享文件夹

```shell
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

#### 克隆 AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### 添加我的个人配置

```shell
git clone https://github.com/sunday70/astronvim-user.git ~/.config/nvim/lua/user
```

#### 启动 Neovim

```shell
nvim
```

#### 修改274行键冲突

```shell
nvim .config/nvim/lua/astronvim/utils/lsp.lua
```
