import warnings
warnings.simplefilter('once', DeprecationWarning)
warnings.warn("OCC.GccIter is deprecated since pythonocc-0.18.2. Use OCC.Core.GccIter", DeprecationWarning)

from OCC.Core.GccIter import *
