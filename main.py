# This Python file uses the following encoding: utf-8
import sys
import os

from PySide2.QtGui import QGuiApplication
from PySide2.QtCore import QObject, Slot
from PySide2.QtQml import QQmlApplicationEngine


class ProcessData(QObject):
    @Slot(str, str, str)
    def print_data(self, name, address, phone):
        print("print_data called:", name, address, phone)


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    context = engine.rootContext()

    process_data = ProcessData()
    context.setContextProperty("ProcessData", process_data)

    engine.load(os.path.join(os.path.dirname(__file__), "main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
