import warnings
warnings.simplefilter('once', DeprecationWarning)
warnings.warn("OCC.PLib is deprecated since pythonocc-0.18.2. Use OCC.Core.PLib", DeprecationWarning)

from OCC.Core.PLib import *
