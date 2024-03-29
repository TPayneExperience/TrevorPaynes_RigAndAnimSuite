
from abc import ABCMeta, abstractmethod, abstractproperty

class Abstract_Autobuild:
    __metaclass__ = ABCMeta
    @abstractproperty
    def uiName(self):           # str | 'By Hierarchy'
        pass 

    @abstractproperty
    def uiOrderIndex(self):           # int | 100, 200
        pass 

    @abstractmethod
    def Execute(self, rigRoot):
        pass


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"




















