
import os

import pymel.core as pm
from maya import mel

import Skinning.Data.PFRS_Paint as paint
reload(paint)

class PW_Brush_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.meshMng = parent.meshMng
        self.skinMng = parent.skinMng
        
        self.ctx = 'pfrsPaintCtx'
        self._onName = '>> SELECT LIMB <<'
        self._offName = 'Brush Properties'

        self._SetupPFRSPaint()
        self._Setup()

    def _SetupPFRSPaint(self):
        sourcePath = os.path.dirname(__file__)
        source = os.path.join(sourcePath, 'pfrsPaint')
        source = source.replace('\\', '/')
        mel.eval('source "%s";' %source)
        # mel.eval('pfrsPaint("pfrsPaintCtx");')

#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.frameLayout(self._onName, bv=1, en=0) as self.brush_fl:
            with pm.columnLayout(adj=1) as self.brush_cl:
                pm.radioCollection()
                pm.radioButton(l='Add', sl=1, onc=self.AddMode)
                pm.radioButton(l='Replace', onc=self.ReplaceMode)
                # pm.radioButton(l='Smooth', onc=self.SmoothMode)
                self.val_sl = pm.floatSliderGrp( l='Value', f=1, min=0.0, 
                                        max=1.0, v=1, s=0.01,
                                        cw=((1, 50), (2, 40), (3, 60)),
                                        cc=pm.Callback(self.ValueChanged))
                self.rad_sl = pm.floatSliderGrp( l='Radius', f=1, min=0.01, 
                                        max=10.0, v=1, s=0.01, fmn=0.001, fmx=1000.0,
                                        cw=((1, 50), (2, 40), (3, 60)),
                                        cc=pm.Callback(self.RadiusChanged))
                self.soft_sl = pm.floatSliderGrp( l='Softness', f=1, min=0.01, 
                                        max=10.0, v=1, s=0.01, fmn=0.001, fmx=1000.0,
                                        cw=((1, 50), (2, 40), (3, 60)),
                                        cc=pm.Callback(self.SoftnessChanged))
                pm.button(l='Flood', c=self.Flood)
                self.inf_txt = pm.text(l='TEMP')
                # pm.attrControlGrp( l='Interactive Mirror', a='defaultResolution.width' )
                # pm.attrControlGrp( l='Dist Removed Weights', a='defaultResolution.width' )

#=========== BRUSH ON / OFF ==============================================
    
    def BrushOn(self): # call whenever limb/joint clicked
        pm.frameLayout(self.brush_fl, e=1, en=1, l=self._offName)
        setDefault = False
        if not pm.artUserPaintCtx(self.ctx, ex=1):
            print 'creating brush...'
            pm.artUserPaintCtx(self.ctx, dl=1, cl='both',
                                    whichTool='userPaint') 
            setDefault = True
        if (pm.currentCtx() != self.ctx) or setDefault:
            print 'Setting ctx...'
            pm.setToolTo(self.ctx)
            if setDefault:
                print 'Is Default...'
                self.AddMode(0) 
                self.ValueChanged()
                self.RadiusChanged()
                self.SoftnessChanged()
            else:
                value = pm.artUserPaintCtx(self.ctx, q=1, val=1) 
                pm.floatSliderGrp(self.val_sl, e=1, v=value)

                radius = pm.artUserPaintCtx(self.ctx, q=1, r=1) 
                pm.floatSliderGrp(self.rad_sl, e=1, v=radius)

                soft = pm.artUserPaintCtx(self.ctx, q=1, lr=1) 
                pm.floatSliderGrp(self.soft_sl, e=1, v=soft)
        mel.eval('pfrsPaint("pfrsPaintCtx");')
        pm.polyOptions(cs=1)

    def BrushOff(self):
        pm.frameLayout(self.brush_fl, e=1, en=0, l=self._onName)
        pm.polyOptions(cs=0)
        pm.setToolTo('selectSuperContext')

#=========== RADIO BUTTONS ==============================================
    
    def AddMode(self, ignore):
        mel.eval('artAttrPaintOperation artUserPaintCtx Add;')

    def ReplaceMode(self, ignore):
        mel.eval('artAttrPaintOperation artUserPaintCtx Replace;')

    # def SmoothMode(self, ignore):
    #     mel.eval('artAttrPaintOperation artUserPaintCtx Smooth;')

#=========== SLIDERS ==============================================
    
    def ValueChanged(self):
        value = pm.floatSliderGrp(self.val_sl, q=1, v=1)
        pm.artUserPaintCtx(self.ctx, e=1, val=value) 

    def RadiusChanged(self):
        radius = pm.floatSliderGrp(self.rad_sl, q=1, v=1)
        pm.artUserPaintCtx(self.ctx, e=1, r=radius) 

    def SoftnessChanged(self):
        radius = pm.floatSliderGrp(self.rad_sl, q=1, v=1)
        softVal = pm.floatSliderGrp(self.soft_sl, q=1, v=1)
        soft = min(softVal, radius)
        if soft != softVal:
            pm.floatSliderGrp(self.soft_sl, e=1, v=soft)
        pm.artUserPaintCtx(self.ctx, e=1, lr=soft) 

#=========== MISC ==============================================
    
    def Flood(self, ignore):
        value = pm.floatSliderGrp(self.val_sl, q=1, v=1)
        attr = paint.PFRS_ATTR
        mesh = self.parent.curMesh
        print 'FLOODING: %s.%s as %f' % (mesh, attr, value)
        self.skinMng.Flood(mesh, attr, value)

    def UpdateInfluenceCount(self): # Not sure when to call this...
        joints = set([])
        for mesh in pm.listConnections(self.pfrs.root.meshes):
            joints = joints | set(self.skinMng.GetUsedInfJoints(mesh))
        inf = len(joints)
        pm.text(self.inf_txt, e=1, l='Total Influence Joints: %d' % inf)











