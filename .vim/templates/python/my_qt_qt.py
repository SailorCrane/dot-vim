import sys

# pyqt4=False
pyqt4=True

if pyqt4:
    from PyQt4 import QtCore
    from PyQt4 import QtGui as QtWidgets
    from PyQt4 import uic

    from PyQt4.QtCore import *
    from PyQt4.QtGui import *
else:
    from PyQt5 import QtCore, QtWidgets, uic

    from PyQt5.QtCore import *
    from PyQt5.QtWidgets import *


def load_ui_file():
    # TODO
    qtCreatorFile = "./crane_files.ui"

    # 如果不理解ui_Base工作方式,可以使用 pyuic4/pyuic5 .ui查看生成qt代码
    ui_Base, BaseClass = uic.loadUiType(qtCreatorFile)

    # print(ui_Base, BaseClass)
    return BaseClass, ui_Base


def create_action(parent, text, slot=None, shortcut=None, icon=None,
                 tip=None, checkable=False, signal="triggered()"):
    # note: signal传入 "toggled(bool)", 而不会SIGNAL('toggled(bool)'),当前函数内部会做处理.(triggled()不要忘记括号)

    # example:
    # action = create_action(self, '&Motion', self.edit, QKeySequence.New, None, 'edit tip')
    # action = create_action(self, '&Motion', self.edit, 'Ctrl+N', None, 'edit tip')
    # action = create_action(self, '&Motion', self.edit, 'Ctrl+N', None, 'edit tip', True, 'toggled(bool)')
    action = QAction(text, parent)
    if icon is not None:
        # pass
        action.setIcon(QIcon(":/{}.png".format(icon)))
    if shortcut is not None:
        action.setShortcut(shortcut)
    if tip is not None:
        action.setToolTip(tip)
        action.setStatusTip(tip)
    if slot is not None:
        action.connect(action, SIGNAL(signal), slot)
    # 可以发出toggled三要素: 1, action.setCheckable()  2, connect SIGNAL('toggled(bool)'), 3, slot(can has or has no is_checked)
    if checkable:
        action.setCheckable(True)
    return action


def add_actions(menu_bar, actions):
    # actions ------> menu_bar
    # actions ------> act_group
    for action in actions:
        if action is None:
            menu_bar.addSeparator()
        else:
            menu_bar.addAction(action)


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
