import warnings
warnings.simplefilter('once', DeprecationWarning)
warnings.warn("OCC.FEmTool is deprecated since pythonocc-0.18.2. Use OCC.Core.FEmTool", DeprecationWarning)

from OCC.Core.FEmTool import *
