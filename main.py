# This Python file uses the following encoding: utf-8
import sys
import os

from PySide2.QtGui import QGuiApplication
from PySide2.QtCore import QObject, Slot, Property, Signal
from PySide2.QtQml import QQmlApplicationEngine


class ProcessData(QObject):
    name_changed = Signal()

    def __init__(self):
        super().__init__()

        self._name = "Hello!!"
        self._address = None
        self._phone = None

    @Slot(str, str, str)
    def set_data(self, name, address, phone):
        self._name = name
        self.name_changed.emit()

        self._address = address
        self._phone = phone

    def _get_name(self):
        return self._name

    name = Property(str, _get_name, notify=name_changed)


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
