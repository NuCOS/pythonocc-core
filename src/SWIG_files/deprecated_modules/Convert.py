import warnings
warnings.simplefilter('once', DeprecationWarning)
warnings.warn("OCC.Convert is deprecated since pythonocc-0.18.2. Use OCC.Core.Convert", DeprecationWarning)

from OCC.Core.Convert import *
