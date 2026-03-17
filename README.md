# 手机控制网页

这是一个用于网页端蓝牙控制的静态页面发布仓库。

## 文件说明

- `index.html`：GitHub Pages 实际发布的网页文件
- `sync-site.ps1`：同步脚本，会把源文件复制为 `index.html`
- `一键同步并发布.bat`：双击后可自动同步并推送到 GitHub

## 网页访问地址

启用 GitHub Pages 后，可通过下面的地址访问：

`https://shengzhangluo540-prog.github.io/bluetooth-web/`

如果刚开启 Pages，可能需要等待几分钟才会生效。

## 日常更新方法

1. 编辑源文件：

   `D:\project\freertos\web界面\手机网页\蓝牙V2.1.HTML`

2. 编辑完成后，双击运行：

   `D:\project\手机控制网页\一键同步并发布.bat`

3. 脚本会自动完成这些操作：

- 将源文件同步到当前仓库的 `index.html`
- 检测网页内容是否有变化
- 自动提交并推送到 GitHub

## 说明

- 本项目是静态网页，适合使用 GitHub Pages 免费发布
- 页面中使用了浏览器蓝牙能力，建议在支持 Web Bluetooth 的浏览器中访问
- GitHub Pages 默认是 HTTPS 访问，这对蓝牙网页功能是有帮助的
