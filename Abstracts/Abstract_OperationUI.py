
from abc import ABCMeta, abstractmethod, abstractproperty

class Abstract_OperationUI:
    __metaclass__ = ABCMeta

    @abstractproperty
    def uiName(self):       # str | 'Limb Setup'
        pass 

    @abstractproperty
    def orderIndex(self):   # int | 0, 100, 200...
        pass 

    @abstractproperty
    def operation(self):    # class | .py file
        pass 

    @abstractmethod
    def Setup_UI(self, rigRoot, allRigRoots):     # parent should cleanup
        pass
    




















