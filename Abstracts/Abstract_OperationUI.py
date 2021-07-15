
from abc import ABCMeta, abstractmethod, abstractproperty

class Abstract_OperationUI:
    __metaclass__ = ABCMeta

    @abstractproperty
    def uiName(self):       # str | 'Limb Setup'
        pass 

    @abstractproperty
    def uiOrderIndex(self):   # int | 0, 100, 200...
        pass 

    @abstractproperty
    def operation(self):    # class | .py file
        pass 

    @abstractmethod
    def Setup_UI(self, rigRoot, allRigRoots):
        pass
    
    @abstractmethod
    def Teardown_UI(self, rigRoot, allRigRoots):
        pass
    


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"



















