/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
This file was automatically generated using the pythonocc_generator, see
https://github.com/tpaviot/pythonocc-generator.

This file is platform independant, but was generated under the following
conditions:

- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define HLRTOPOBREPDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=HLRTOPOBREPDOCSTRING) HLRTopoBRep

#pragma SWIG nowarn=504,325,503,520,350,351,383,389,394,395, 404

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include HLRTopoBRep_headers.i

/* public enums */
/* end public enums declaration */

/* handles */
%wrap_handle(HLRTopoBRep_OutLiner)
/* end handles declaration */

/* templates */
%template(HLRTopoBRep_DataMapOfShapeFaceData) NCollection_DataMap <TopoDS_Shape , HLRTopoBRep_FaceData , TopTools_ShapeMapHasher>;
%template(HLRTopoBRep_ListOfVData) NCollection_List <HLRTopoBRep_VData>;
%template(HLRTopoBRep_ListIteratorOfListOfVData) NCollection_TListIterator<HLRTopoBRep_VData>;
%template(HLRTopoBRep_MapOfShapeListOfVData) NCollection_DataMap <TopoDS_Shape , HLRTopoBRep_ListOfVData , TopTools_ShapeMapHasher>;
/* end templates declaration */

/* typedefs */
typedef NCollection_DataMap <TopoDS_Shape , HLRTopoBRep_FaceData , TopTools_ShapeMapHasher> HLRTopoBRep_DataMapOfShapeFaceData;
typedef NCollection_DataMap <TopoDS_Shape , HLRTopoBRep_FaceData , TopTools_ShapeMapHasher>::Iterator HLRTopoBRep_DataMapIteratorOfDataMapOfShapeFaceData;
typedef NCollection_List <HLRTopoBRep_VData> HLRTopoBRep_ListOfVData;
typedef NCollection_List <HLRTopoBRep_VData>::Iterator HLRTopoBRep_ListIteratorOfListOfVData;
typedef NCollection_DataMap <TopoDS_Shape , HLRTopoBRep_ListOfVData , TopTools_ShapeMapHasher> HLRTopoBRep_MapOfShapeListOfVData;
typedef NCollection_DataMap <TopoDS_Shape , HLRTopoBRep_ListOfVData , TopTools_ShapeMapHasher>::Iterator HLRTopoBRep_DataMapIteratorOfMapOfShapeListOfVData;
/* end typedefs declaration */

class HLRTopoBRep_DSFiller {
	public:
		%feature("compactdefaultargs") Insert;
		%feature("autodoc", "	* Stores in <DS> the outlines of <S> using the current outliner and stores the isolines in <DS> using a Hatcher.

	:param S:
	:type S: TopoDS_Shape &
	:param FO:
	:type FO: Contap_Contour &
	:param DS:
	:type DS: HLRTopoBRep_Data &
	:param MST:
	:type MST: BRepTopAdaptor_MapOfShapeTool &
	:param nbIso:
	:type nbIso: int
	:rtype: void
") Insert;
		static void Insert (const TopoDS_Shape & S,Contap_Contour & FO,HLRTopoBRep_Data & DS,BRepTopAdaptor_MapOfShapeTool & MST,const Standard_Integer nbIso);
};


%extend HLRTopoBRep_DSFiller {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor HLRTopoBRep_Data;
class HLRTopoBRep_Data {
	public:
		%feature("compactdefaultargs") AddIntL;
		%feature("autodoc", "	:param F:
	:type F: TopoDS_Face &
	:rtype: TopTools_ListOfShape
") AddIntL;
		TopTools_ListOfShape & AddIntL (const TopoDS_Face & F);
		%feature("compactdefaultargs") AddIntV;
		%feature("autodoc", "	:param V:
	:type V: TopoDS_Vertex &
	:rtype: None
") AddIntV;
		void AddIntV (const TopoDS_Vertex & V);
		%feature("compactdefaultargs") AddIsoL;
		%feature("autodoc", "	:param F:
	:type F: TopoDS_Face &
	:rtype: TopTools_ListOfShape
") AddIsoL;
		TopTools_ListOfShape & AddIsoL (const TopoDS_Face & F);
		%feature("compactdefaultargs") AddOldS;
		%feature("autodoc", "	:param NewS:
	:type NewS: TopoDS_Shape &
	:param OldS:
	:type OldS: TopoDS_Shape &
	:rtype: None
") AddOldS;
		void AddOldS (const TopoDS_Shape & NewS,const TopoDS_Shape & OldS);
		%feature("compactdefaultargs") AddOutL;
		%feature("autodoc", "	:param F:
	:type F: TopoDS_Face &
	:rtype: TopTools_ListOfShape
") AddOutL;
		TopTools_ListOfShape & AddOutL (const TopoDS_Face & F);
		%feature("compactdefaultargs") AddOutV;
		%feature("autodoc", "	:param V:
	:type V: TopoDS_Vertex &
	:rtype: None
") AddOutV;
		void AddOutV (const TopoDS_Vertex & V);
		%feature("compactdefaultargs") AddSplE;
		%feature("autodoc", "	:param E:
	:type E: TopoDS_Edge &
	:rtype: TopTools_ListOfShape
") AddSplE;
		TopTools_ListOfShape & AddSplE (const TopoDS_Edge & E);
		%feature("compactdefaultargs") Append;
		%feature("autodoc", "	:param V:
	:type V: TopoDS_Vertex &
	:param P:
	:type P: float
	:rtype: None
") Append;
		void Append (const TopoDS_Vertex & V,const Standard_Real P);
		%feature("compactdefaultargs") Clean;
		%feature("autodoc", "	* Clear of all the data not needed during and after the hiding process.

	:rtype: None
") Clean;
		void Clean ();
		%feature("compactdefaultargs") Clear;
		%feature("autodoc", "	* Clear of all the maps.

	:rtype: None
") Clear;
		void Clear ();
		%feature("compactdefaultargs") Edge;
		%feature("autodoc", "	:rtype: TopoDS_Edge
") Edge;
		const TopoDS_Edge  Edge ();
		%feature("compactdefaultargs") EdgeHasSplE;
		%feature("autodoc", "	* Returns True if the Edge is split.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") EdgeHasSplE;
		Standard_Boolean EdgeHasSplE (const TopoDS_Edge & E);
		%feature("compactdefaultargs") EdgeSplE;
		%feature("autodoc", "	* Returns the list of the edges.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: TopTools_ListOfShape
") EdgeSplE;
		const TopTools_ListOfShape & EdgeSplE (const TopoDS_Edge & E);
		%feature("compactdefaultargs") FaceHasIntL;
		%feature("autodoc", "	* Returns True if the Face has internal outline.

	:param F:
	:type F: TopoDS_Face &
	:rtype: bool
") FaceHasIntL;
		Standard_Boolean FaceHasIntL (const TopoDS_Face & F);
		%feature("compactdefaultargs") FaceHasIsoL;
		%feature("autodoc", "	* Returns True if the Face has isolines.

	:param F:
	:type F: TopoDS_Face &
	:rtype: bool
") FaceHasIsoL;
		Standard_Boolean FaceHasIsoL (const TopoDS_Face & F);
		%feature("compactdefaultargs") FaceHasOutL;
		%feature("autodoc", "	* Returns True if the Face has outlines on restriction.

	:param F:
	:type F: TopoDS_Face &
	:rtype: bool
") FaceHasOutL;
		Standard_Boolean FaceHasOutL (const TopoDS_Face & F);
		%feature("compactdefaultargs") FaceIntL;
		%feature("autodoc", "	* Returns the list of the internal OutLines.

	:param F:
	:type F: TopoDS_Face &
	:rtype: TopTools_ListOfShape
") FaceIntL;
		const TopTools_ListOfShape & FaceIntL (const TopoDS_Face & F);
		%feature("compactdefaultargs") FaceIsoL;
		%feature("autodoc", "	* Returns the list of the IsoLines.

	:param F:
	:type F: TopoDS_Face &
	:rtype: TopTools_ListOfShape
") FaceIsoL;
		const TopTools_ListOfShape & FaceIsoL (const TopoDS_Face & F);
		%feature("compactdefaultargs") FaceOutL;
		%feature("autodoc", "	* Returns the list of the OutLines on restriction.

	:param F:
	:type F: TopoDS_Face &
	:rtype: TopTools_ListOfShape
") FaceOutL;
		const TopTools_ListOfShape & FaceOutL (const TopoDS_Face & F);
		%feature("compactdefaultargs") HLRTopoBRep_Data;
		%feature("autodoc", "	:rtype: None
") HLRTopoBRep_Data;
		 HLRTopoBRep_Data ();
		%feature("compactdefaultargs") InitEdge;
		%feature("autodoc", "	:rtype: None
") InitEdge;
		void InitEdge ();
		%feature("compactdefaultargs") InitVertex;
		%feature("autodoc", "	* Start an iteration on the vertices of E.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: None
") InitVertex;
		void InitVertex (const TopoDS_Edge & E);
		%feature("compactdefaultargs") InsertBefore;
		%feature("autodoc", "	* Insert before the current position.

	:param V:
	:type V: TopoDS_Vertex &
	:param P:
	:type P: float
	:rtype: None
") InsertBefore;
		void InsertBefore (const TopoDS_Vertex & V,const Standard_Real P);
		%feature("compactdefaultargs") IsIntLFaceEdge;
		%feature("autodoc", "	:param F:
	:type F: TopoDS_Face &
	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") IsIntLFaceEdge;
		Standard_Boolean IsIntLFaceEdge (const TopoDS_Face & F,const TopoDS_Edge & E);
		%feature("compactdefaultargs") IsIntV;
		%feature("autodoc", "	* Returns True if V is an internal outline vertex.

	:param V:
	:type V: TopoDS_Vertex &
	:rtype: bool
") IsIntV;
		Standard_Boolean IsIntV (const TopoDS_Vertex & V);
		%feature("compactdefaultargs") IsIsoLFaceEdge;
		%feature("autodoc", "	:param F:
	:type F: TopoDS_Face &
	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") IsIsoLFaceEdge;
		Standard_Boolean IsIsoLFaceEdge (const TopoDS_Face & F,const TopoDS_Edge & E);
		%feature("compactdefaultargs") IsOutLFaceEdge;
		%feature("autodoc", "	:param F:
	:type F: TopoDS_Face &
	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") IsOutLFaceEdge;
		Standard_Boolean IsOutLFaceEdge (const TopoDS_Face & F,const TopoDS_Edge & E);
		%feature("compactdefaultargs") IsOutV;
		%feature("autodoc", "	* Returns True if V is an outline vertex on a restriction.

	:param V:
	:type V: TopoDS_Vertex &
	:rtype: bool
") IsOutV;
		Standard_Boolean IsOutV (const TopoDS_Vertex & V);
		%feature("compactdefaultargs") IsSplEEdgeEdge;
		%feature("autodoc", "	:param E1:
	:type E1: TopoDS_Edge &
	:param E2:
	:type E2: TopoDS_Edge &
	:rtype: bool
") IsSplEEdgeEdge;
		Standard_Boolean IsSplEEdgeEdge (const TopoDS_Edge & E1,const TopoDS_Edge & E2);
		%feature("compactdefaultargs") MoreEdge;
		%feature("autodoc", "	:rtype: bool
") MoreEdge;
		Standard_Boolean MoreEdge ();
		%feature("compactdefaultargs") MoreVertex;
		%feature("autodoc", "	:rtype: bool
") MoreVertex;
		Standard_Boolean MoreVertex ();
		%feature("compactdefaultargs") NewSOldS;
		%feature("autodoc", "	:param New:
	:type New: TopoDS_Shape &
	:rtype: TopoDS_Shape
") NewSOldS;
		TopoDS_Shape NewSOldS (const TopoDS_Shape & New);
		%feature("compactdefaultargs") NextEdge;
		%feature("autodoc", "	:rtype: None
") NextEdge;
		void NextEdge ();
		%feature("compactdefaultargs") NextVertex;
		%feature("autodoc", "	:rtype: None
") NextVertex;
		void NextVertex ();
		%feature("compactdefaultargs") Parameter;
		%feature("autodoc", "	:rtype: float
") Parameter;
		Standard_Real Parameter ();
		%feature("compactdefaultargs") Vertex;
		%feature("autodoc", "	:rtype: TopoDS_Vertex
") Vertex;
		const TopoDS_Vertex  Vertex ();
};


%extend HLRTopoBRep_Data {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor HLRTopoBRep_FaceData;
class HLRTopoBRep_FaceData {
	public:
		%feature("compactdefaultargs") AddIntL;
		%feature("autodoc", "	:rtype: TopTools_ListOfShape
") AddIntL;
		TopTools_ListOfShape & AddIntL ();
		%feature("compactdefaultargs") AddIsoL;
		%feature("autodoc", "	:rtype: TopTools_ListOfShape
") AddIsoL;
		TopTools_ListOfShape & AddIsoL ();
		%feature("compactdefaultargs") AddOutL;
		%feature("autodoc", "	:rtype: TopTools_ListOfShape
") AddOutL;
		TopTools_ListOfShape & AddOutL ();
		%feature("compactdefaultargs") FaceIntL;
		%feature("autodoc", "	:rtype: TopTools_ListOfShape
") FaceIntL;
		const TopTools_ListOfShape & FaceIntL ();
		%feature("compactdefaultargs") FaceIsoL;
		%feature("autodoc", "	:rtype: TopTools_ListOfShape
") FaceIsoL;
		const TopTools_ListOfShape & FaceIsoL ();
		%feature("compactdefaultargs") FaceOutL;
		%feature("autodoc", "	:rtype: TopTools_ListOfShape
") FaceOutL;
		const TopTools_ListOfShape & FaceOutL ();
		%feature("compactdefaultargs") HLRTopoBRep_FaceData;
		%feature("autodoc", "	:rtype: None
") HLRTopoBRep_FaceData;
		 HLRTopoBRep_FaceData ();
};


%extend HLRTopoBRep_FaceData {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
class HLRTopoBRep_FaceIsoLiner {
	public:
		%feature("compactdefaultargs") MakeIsoLine;
		%feature("autodoc", "	:param F:
	:type F: TopoDS_Face &
	:param Iso:
	:type Iso: opencascade::handle<Geom2d_Line> &
	:param V1:
	:type V1: TopoDS_Vertex &
	:param V2:
	:type V2: TopoDS_Vertex &
	:param U1:
	:type U1: float
	:param U2:
	:type U2: float
	:param Tol:
	:type Tol: float
	:param DS:
	:type DS: HLRTopoBRep_Data &
	:rtype: void
") MakeIsoLine;
		static void MakeIsoLine (const TopoDS_Face & F,const opencascade::handle<Geom2d_Line> & Iso,TopoDS_Vertex & V1,TopoDS_Vertex & V2,const Standard_Real U1,const Standard_Real U2,const Standard_Real Tol,HLRTopoBRep_Data & DS);
		%feature("compactdefaultargs") MakeVertex;
		%feature("autodoc", "	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: gp_Pnt
	:param Par:
	:type Par: float
	:param Tol:
	:type Tol: float
	:param DS:
	:type DS: HLRTopoBRep_Data &
	:rtype: TopoDS_Vertex
") MakeVertex;
		static TopoDS_Vertex MakeVertex (const TopoDS_Edge & E,const gp_Pnt & P,const Standard_Real Par,const Standard_Real Tol,HLRTopoBRep_Data & DS);
		%feature("compactdefaultargs") Perform;
		%feature("autodoc", "	:param FI:
	:type FI: int
	:param F:
	:type F: TopoDS_Face &
	:param DS:
	:type DS: HLRTopoBRep_Data &
	:param nbIsos:
	:type nbIsos: int
	:rtype: void
") Perform;
		static void Perform (const Standard_Integer FI,const TopoDS_Face & F,HLRTopoBRep_Data & DS,const Standard_Integer nbIsos);
};


%extend HLRTopoBRep_FaceIsoLiner {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor HLRTopoBRep_OutLiner;
class HLRTopoBRep_OutLiner : public Standard_Transient {
	public:
		%feature("compactdefaultargs") DataStructure;
		%feature("autodoc", "	:rtype: HLRTopoBRep_Data
") DataStructure;
		HLRTopoBRep_Data & DataStructure ();
		%feature("compactdefaultargs") Fill;
		%feature("autodoc", "	:param P:
	:type P: HLRAlgo_Projector &
	:param MST:
	:type MST: BRepTopAdaptor_MapOfShapeTool &
	:param nbIso:
	:type nbIso: int
	:rtype: None
") Fill;
		void Fill (const HLRAlgo_Projector & P,BRepTopAdaptor_MapOfShapeTool & MST,const Standard_Integer nbIso);
		%feature("compactdefaultargs") HLRTopoBRep_OutLiner;
		%feature("autodoc", "	:rtype: None
") HLRTopoBRep_OutLiner;
		 HLRTopoBRep_OutLiner ();
		%feature("compactdefaultargs") HLRTopoBRep_OutLiner;
		%feature("autodoc", "	:param OriSh:
	:type OriSh: TopoDS_Shape &
	:rtype: None
") HLRTopoBRep_OutLiner;
		 HLRTopoBRep_OutLiner (const TopoDS_Shape & OriSh);
		%feature("compactdefaultargs") HLRTopoBRep_OutLiner;
		%feature("autodoc", "	:param OriS:
	:type OriS: TopoDS_Shape &
	:param OutS:
	:type OutS: TopoDS_Shape &
	:rtype: None
") HLRTopoBRep_OutLiner;
		 HLRTopoBRep_OutLiner (const TopoDS_Shape & OriS,const TopoDS_Shape & OutS);
		%feature("compactdefaultargs") OriginalShape;
		%feature("autodoc", "	:param OriS:
	:type OriS: TopoDS_Shape &
	:rtype: None
") OriginalShape;
		void OriginalShape (const TopoDS_Shape & OriS);
		%feature("compactdefaultargs") OriginalShape;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") OriginalShape;
		TopoDS_Shape  OriginalShape ();
		%feature("compactdefaultargs") OutLinedShape;
		%feature("autodoc", "	:param OutS:
	:type OutS: TopoDS_Shape &
	:rtype: None
") OutLinedShape;
		void OutLinedShape (const TopoDS_Shape & OutS);
		%feature("compactdefaultargs") OutLinedShape;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") OutLinedShape;
		TopoDS_Shape  OutLinedShape ();
};


%make_alias(HLRTopoBRep_OutLiner)

%extend HLRTopoBRep_OutLiner {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
%nodefaultctor HLRTopoBRep_VData;
class HLRTopoBRep_VData {
	public:
		%feature("compactdefaultargs") HLRTopoBRep_VData;
		%feature("autodoc", "	:rtype: None
") HLRTopoBRep_VData;
		 HLRTopoBRep_VData ();
		%feature("compactdefaultargs") HLRTopoBRep_VData;
		%feature("autodoc", "	:param P:
	:type P: float
	:param V:
	:type V: TopoDS_Shape &
	:rtype: None
") HLRTopoBRep_VData;
		 HLRTopoBRep_VData (const Standard_Real P,const TopoDS_Shape & V);
		%feature("compactdefaultargs") Parameter;
		%feature("autodoc", "	:rtype: float
") Parameter;
		Standard_Real Parameter ();
		%feature("compactdefaultargs") Vertex;
		%feature("autodoc", "	:rtype: TopoDS_Shape
") Vertex;
		const TopoDS_Shape  Vertex ();
};


%extend HLRTopoBRep_VData {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
