
import pymel.core as pm

import Common.Utilities as util
reload(util)
import Data.Rig_Data as rigData
reload(rigData)


class Root_Manager:
    def __init__(self, parent):
        self.parent = parent

