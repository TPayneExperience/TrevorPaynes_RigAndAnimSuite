
from abc import ABCMeta, abstractmethod

class Abstract_Operation:
    __metaclass__ = ABCMeta
    operationName = 'PLACEHOLDER'
    version = 0
    orderIndex = 100
    isRigBuilt = False
    validRigStates = () # 0 = Setup, 1 = Anim

#=========== INIT RIG ROOT ====================================

    @staticmethod
    @abstractmethod
    def IsRigSetup(rigRoot):
        '''Does rig has necessary attrs/connections?'''
        return False

    @staticmethod
    @abstractmethod
    def InitRig(rigRoot):
        '''Update rig attrs and connections'''

#=========== SETUP UI ====================================

    @abstractmethod
    def Setup_UI(self, parentUI): # Return nothing, parent should cleanup
        pass
    
    # @staticmethod
    # @abstractmethod
    # def IsValid(rigRoot):
    #     '''???'''
    #     return False















# from abc import ABCMeta, abstractmethod

# class xx:
#     __metaclass__ = ABCMeta
#     aaa = 3
#     @abstractmethod
#     def test(self):
#         pass

# class yy(xx):
#     aaa = 4
#     def test(self):
#         print ('asdf')
#         print (self.aaa)

# xx.register(yy)

# # xx()
# y = yy()
# y.test()
# print (y.aaa)



















