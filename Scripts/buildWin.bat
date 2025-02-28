@echo off
echo 创建虚拟环境
uv venv
call .venv\Scripts\activate
echo 安装依赖
uv pip install -r requirements.txt
uv pip install nuitka imageio
echo 打包
python -m nuitka main.py ^
--enable-plugin=pyqt5 ^
--disable-console ^
--mode=standalone ^
-o"ClassWidgets" ^
--windows-icon-from-ico=img/favicon.icns ^
--product-name="Class Widgets" ^
--product-version="1.1.7.1" ^
--file-description="全新桌面课表" ^
--include-package=pyttsx3.drivers
