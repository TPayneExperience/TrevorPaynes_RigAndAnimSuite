
from abc import ABCMeta, abstractmethod

class Abstract_OperationUI:
    __metaclass__ = ABCMeta
    uiName = 'PLACEHOLDER'
    orderIndex = -100 # in hundreds
    operation = None

    @abstractmethod
    def Setup_UI(self): # Return nothing, parent should cleanup
        pass
    
    # @abstractmethod
    # def Setup_UI(self, parentUI): # Return nothing, parent should cleanup
    #     pass
    




















