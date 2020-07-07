
from .Data.Joint_Manager import Joint_Manager
from .Data.Limb_Manager import Limb_Manager

from .Properties.Joint_Properties import Joint_Properties
from .Properties.Limb_Properties import Limb_Properties

from .Hierarchies.Joint_Hierarchy import Joint_Hierarchy
from .Hierarchies.Limb_Hierarchy import Limb_Hierarchy

# MISSING TEMPLATE STUFF

class Skeleton():
    def __init__(self):
        self.jntMng = Joint_Manager()
        self.limbMng = Limb_Manager()
        self.jntProp = Joint_Properties(self.jntMng)
        self.limbProp = Limb_Properties(self.limbMng, self.jntMng)
        self.jntHier = Joint_Hierarchy(self.jntMng)
        self.limbHier = Limb_Hierarchy(self.limbMng,self.jntMng)





















