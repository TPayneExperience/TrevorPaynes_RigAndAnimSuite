

class TreeData():
    def __init__(self):
        self._parent = None
        self.id = -1
        self._children = []
    
    def GetChildren(self):
        return self._children
    
    def GetParent(self):
        return self._parent

    def SetParent(self, newParent):
        if(self._IsValidParent(newParent)):
            self.Unparent()
            self._parent = newParent
            newParent._children.append(self)

    def Unparent(self):
        if (self._parent != None):
            self._parent._children.remove(self)
            self._parent = None

    def InsertAbove(self, futureChild):
        self.SetParent(futureChild.GetParent())
        futureChild.SetParent(self)
    
    def RemoveFromTree(self):
        for c in self.GetChildren():
            c.SetParent(self.GetParent())
        self.Unparent()

    def _IsValidParent(self, newParent):
        if (newParent == self):
            return False
        while(newParent._parent != None):
            if (newParent._parent == self):
                return False
            newParent = newParent._parent
        return True
    
    def PrintTree(self, spacing=''):
        print(spacing + str(self))
        for c in self._children:
            c.PrintTree(spacing + '\t')

if __name__ == '__main__':
    t1 = TreeData()
    t2 = TreeData()
    t3 = TreeData()

    t3.SetParent(t2)
    t2.SetParent(t1)

    t1.PrintTree()


