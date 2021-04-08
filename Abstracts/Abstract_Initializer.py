
from abc import ABCMeta, abstractmethod

class Abstract_Initializer:
    __metaclass__ = ABCMeta

    @staticmethod
    @abstractmethod
    def Initialize(myObject):
        '''Initialize rig attrs, groups, display layers'''
        pass















