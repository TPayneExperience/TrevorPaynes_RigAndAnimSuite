
import sys
from Qt import QtWidgets, QtCore, QtGui
    

class RigSetup_UI(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(RigSetup_UI, self).__init__(parent)
        self._setup()

    def _setup(self):
        v_layout = QtWidgets.QVBoxLayout(self)
        v_layout.addWidget(self._setup_AssetDetails())
        v_layout.addWidget(self._setup_RigNaming())
        v_layout.addWidget(self._setup_ExampleResults())
        v_layout.addLayout(self._setup_SaveCancel())
        self.setWindowTitle('Rig Setup')
        self.resize(220, 450)
    
    def _setup_AssetDetails(self):
        gb = QtWidgets.QGroupBox('Asset Details')
        vl = QtWidgets.QVBoxLayout(gb)

        hl1 = QtWidgets.QHBoxLayout()
        hl1.addWidget(QtWidgets.QLabel('Asset Prefix (3-5)'))
        self.prefix_le = QtWidgets.QLineEdit()
        self.prefix_le.setPlaceholderText('CAT, ELF, ...')
        hl1.addWidget(self.prefix_le)
        vl.addLayout(hl1)

        gb2 = QtWidgets.QGroupBox('Mesh Path')
        hl2  = QtWidgets.QHBoxLayout(gb2)
        self.meshPath_l = QtWidgets.QLabel('C:/Some/File/Path.ma')
        hl2.addWidget(self.meshPath_l)
        self.meshPath_btn = QtWidgets.QToolButton()
        hl2.addWidget(self.meshPath_btn)
        vl.addWidget(gb2)

        return gb

    def _setup_RigNaming(self):
        gb = QtWidgets.QGroupBox('Rig Naming Scheme')
        vl = QtWidgets.QVBoxLayout(gb)

        self.resultNaming_l = QtWidgets.QLabel('asdf')
        vl.addWidget(self.resultNaming_l)

        self.namingOrder_lw = QtWidgets.QListWidget()
        self.namingOrder_lw.addItems([  'Prefix (CAT, ELF)',
                                        'Limb (ARM, LEG)',
                                        'LimbPart (ELBOW, KNEE)',
                                        'Side (L, M, R)',
                                        'Number (03, 07)',
                                        'Type (JNT, CTR)'])
        self.namingOrder_lw.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove) 
        # self.namingOrder_lw.setAlternatingRowColor(True)                                
        vl.addWidget(self.namingOrder_lw)

        return gb
    
    def _setup_ExampleResults(self):
        gb = QtWidgets.QGroupBox('Rig Naming Scheme')
        vl = QtWidgets.QVBoxLayout(gb)

        self.example1_l = QtWidgets.QLabel('asdf1')
        self.example2_l = QtWidgets.QLabel('asdf2')
        self.example3_l = QtWidgets.QLabel('asdf3')
        vl.addWidget(self.example1_l)
        vl.addWidget(self.example2_l)
        vl.addWidget(self.example3_l)

        return gb
    
    def _setup_SaveCancel(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')
        self.save_btn = QtWidgets.QPushButton('Save')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.save_btn)
        return hl


if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = RigSetup_UI()
    ex.show()
    sys.exit(app.exec_())


