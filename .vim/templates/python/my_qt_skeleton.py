#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.

"""

"""
import sys
from PyQt5 import QtCore, QtGui, QtWidgets, uic
# from PyQt4 import QtCore, QtGui, QtWidgets, uic

qtCreatorFile = "/home/crane/test/qt/rate.ui" # Enter file here.

Ui_MainWindow, QtBaseClass = uic.loadUiType(qtCreatorFile)

# class MyApp(QtGui.QMainWindow, Ui_MainWindow):
class MyApp(QtWidgets.QMainWindow, Ui_MainWindow):
    def __init__(self):
        # QtGui.QMainWindow.__init__(self)
        QtWidgets.QMainWindow.__init__(self)
        Ui_MainWindow.__init__(self)
        self.setupUi(self)


def main():
    app = QtWidgets.QApplication(sys.argv)
    # app = Qt.QApplication(sys.argv)
    window = MyApp()
    window.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
