# =================== qt4  =====================
import sys
from PyQt4 import QtCore, QtGui, uic

qtCreatorFile = "/home/crane/test/qt/rate.ui"

# ui_MainWindow, QtBaseClass = uic.loadUiType(qtCreatorFile)
ui_MainWindow, _ = uic.loadUiType(qtCreatorFile)


class MyWindow(QtGui.QMainWindow, ui_MainWindow):
    def __init__(self, parent = None):
        ui_MainWindow.__init__(self)
        QtGui.QMainWindow.__init__(self)
        super(MyWindow, self).__init__()
        self.setupUi(self)


def qt_skeleton():
    app = QtGui.QApplication(sys.argv)
    window = MyWindow()
    window.show()

    result = app.exec_()
    sys.exit(result)


def main():
    qt_skeleton()

if __name__ == "__main__":
    main()
