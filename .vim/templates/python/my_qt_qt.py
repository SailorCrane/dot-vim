import sys

# pyqt4=False
pyqt4=True

if pyqt4:
    from PyQt4 import QtCore
    from PyQt4 import QtGui as QtWidgets
    from PyQt4 import uic
else:
    from PyQt5 import QtCore, QtWidgets, uic


def load_ui_file():
    # TODO
    qtCreatorFile = "./crane_files.ui"

    # 如果不理解ui_Base工作方式,可以使用 pyuic4/pyuic5 .ui查看生成qt代码
    ui_Base, BaseClass = uic.loadUiType(qtCreatorFile)

    # print(ui_Base, BaseClass)
    return BaseClass, ui_Base


class MyWindow( *load_ui_file() ):
    def __init__(self, parent = None):
        super(MyWindow, self).__init__()
        self.setupUi(self)


def qt_skeleton():
    app = QtWidgets.QApplication(sys.argv)
    window = MyWindow()
    window.show()

    result = app.exec_()
    sys.exit(result)


def main():
    qt_skeleton()

if __name__ == "__main__":
    main()
