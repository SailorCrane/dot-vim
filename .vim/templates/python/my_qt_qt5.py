# =================== qt5  =====================
import sys
from PyQt5 import QtCore, QtWidgets, uic

qtCreatorFile = "/home/crane/test/qt/rate.ui" # Enter file here.

# ui_MainWindow, QtBaseClass = uic.loadUiType(qtCreatorFile)
ui_MainWindow, _ = uic.loadUiType(qtCreatorFile)


class MyWindow(QtWidgets.QMainWindow, ui_MainWindow):
    def __init__(self, parent = None):
        ui_MainWindow.__init__(self)
        QtWidgets.QMainWindow.__init__(self)
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
