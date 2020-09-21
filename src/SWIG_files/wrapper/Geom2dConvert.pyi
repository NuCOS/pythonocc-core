from enum import IntEnum
from typing import overload, NewType, Optional, Tuple

from OCC.Core.Standard import *
from OCC.Core.NCollection import *
from OCC.Core.Geom2d import *
from OCC.Core.TColGeom2d import *
from OCC.Core.TColStd import *
from OCC.Core.Convert import *
from OCC.Core.GeomAbs import *
from OCC.Core.Adaptor2d import *


class geom2dconvert:
	@overload
	@staticmethod
	def C0BSplineToArrayOfC1BSplineCurve(BS: Geom2d_BSplineCurve, tabBS: TColGeom2d_HArray1OfBSplineCurve, Tolerance: float) -> None: ...
	@overload
	@staticmethod
	def C0BSplineToArrayOfC1BSplineCurve(BS: Geom2d_BSplineCurve, tabBS: TColGeom2d_HArray1OfBSplineCurve, AngularTolerance: float, Tolerance: float) -> None: ...
	@staticmethod
	def C0BSplineToC1BSplineCurve(BS: Geom2d_BSplineCurve, Tolerance: float) -> None: ...
	@overload
	@staticmethod
	def ConcatC1(ArrayOfCurves: TColGeom2d_Array1OfBSplineCurve, ArrayOfToler: TColStd_Array1OfReal, ArrayOfIndices: TColStd_HArray1OfInteger, ArrayOfConcatenated: TColGeom2d_HArray1OfBSplineCurve, ClosedTolerance: float) -> bool: ...
	@overload
	@staticmethod
	def ConcatC1(ArrayOfCurves: TColGeom2d_Array1OfBSplineCurve, ArrayOfToler: TColStd_Array1OfReal, ArrayOfIndices: TColStd_HArray1OfInteger, ArrayOfConcatenated: TColGeom2d_HArray1OfBSplineCurve, ClosedTolerance: float, AngularTolerance: float) -> bool: ...
	@staticmethod
	def ConcatG1(ArrayOfCurves: TColGeom2d_Array1OfBSplineCurve, ArrayOfToler: TColStd_Array1OfReal, ArrayOfConcatenated: TColGeom2d_HArray1OfBSplineCurve, ClosedTolerance: float) -> bool: ...
	@staticmethod
	def CurveToBSplineCurve(C: Geom2d_Curve, Parameterisation: Optional[Convert_ParameterisationType] = Convert_TgtThetaOver2) -> Geom2d_BSplineCurve: ...
	@overload
	@staticmethod
	def SplitBSplineCurve(C: Geom2d_BSplineCurve, FromK1: int, ToK2: int, SameOrientation: Optional[bool] = True) -> Geom2d_BSplineCurve: ...
	@overload
	@staticmethod
	def SplitBSplineCurve(C: Geom2d_BSplineCurve, FromU1: float, ToU2: float, ParametricTolerance: float, SameOrientation: Optional[bool] = True) -> Geom2d_BSplineCurve: ...

class Geom2dConvert_ApproxCurve:
	@overload
	def __init__(self, Curve: Geom2d_Curve, Tol2d: float, Order: GeomAbs_Shape, MaxSegments: int, MaxDegree: int) -> None: ...
	@overload
	def __init__(self, Curve: Adaptor2d_HCurve2d, Tol2d: float, Order: GeomAbs_Shape, MaxSegments: int, MaxDegree: int) -> None: ...
	def Curve(self) -> Geom2d_BSplineCurve: ...
	def HasResult(self) -> bool: ...
	def IsDone(self) -> bool: ...
	def MaxError(self) -> float: ...

class Geom2dConvert_BSplineCurveKnotSplitting:
	def __init__(self, BasisCurve: Geom2d_BSplineCurve, ContinuityRange: int) -> None: ...
	def NbSplits(self) -> int: ...
	def SplitValue(self, Index: int) -> int: ...
	def Splitting(self, SplitValues: TColStd_Array1OfInteger) -> None: ...

class Geom2dConvert_BSplineCurveToBezierCurve:
	@overload
	def __init__(self, BasisCurve: Geom2d_BSplineCurve) -> None: ...
	@overload
	def __init__(self, BasisCurve: Geom2d_BSplineCurve, U1: float, U2: float, ParametricTolerance: float) -> None: ...
	def Arc(self, Index: int) -> Geom2d_BezierCurve: ...
	def Arcs(self, Curves: TColGeom2d_Array1OfBezierCurve) -> None: ...
	def Knots(self, TKnots: TColStd_Array1OfReal) -> None: ...
	def NbArcs(self) -> int: ...

class Geom2dConvert_CompCurveToBSplineCurve:
	@overload
	def __init__(self, Parameterisation: Optional[Convert_ParameterisationType] = Convert_TgtThetaOver2) -> None: ...
	@overload
	def __init__(self, BasisCurve: Geom2d_BoundedCurve, Parameterisation: Optional[Convert_ParameterisationType] = Convert_TgtThetaOver2) -> None: ...
	def Add(self, NewCurve: Geom2d_BoundedCurve, Tolerance: float, After: Optional[bool] = False) -> bool: ...
	def BSplineCurve(self) -> Geom2d_BSplineCurve: ...
	def Clear(self) -> None: ...

# harray1 classes
# harray2 classes
# hsequence classes

geom2dconvert_C0BSplineToArrayOfC1BSplineCurve = geom2dconvert.C0BSplineToArrayOfC1BSplineCurve
geom2dconvert_C0BSplineToArrayOfC1BSplineCurve = geom2dconvert.C0BSplineToArrayOfC1BSplineCurve
geom2dconvert_C0BSplineToC1BSplineCurve = geom2dconvert.C0BSplineToC1BSplineCurve
geom2dconvert_ConcatC1 = geom2dconvert.ConcatC1
geom2dconvert_ConcatC1 = geom2dconvert.ConcatC1
geom2dconvert_ConcatG1 = geom2dconvert.ConcatG1
geom2dconvert_CurveToBSplineCurve = geom2dconvert.CurveToBSplineCurve
geom2dconvert_SplitBSplineCurve = geom2dconvert.SplitBSplineCurve
geom2dconvert_SplitBSplineCurve = geom2dconvert.SplitBSplineCurve
