# Julia wrapper for header: /usr/local/include/ogr_api.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0



"""
    OGR_G_CreateFromWkb(unsigned char * pabyData,
                        OGRSpatialReferenceH hSRS,
                        OGRGeometryH * phGeometry,
                        int nBytes) -> OGRErr

Create a geometry object of the appropriate type from it's well known binary representation.

### Parameters
* **pabyData**: pointer to the input BLOB data.
* **hSRS**: handle to the spatial reference to be assigned to the created geometry object. This may be NULL.
* **phGeometry**: the newly created geometry object will be assigned to the indicated handle on return. This will be NULL in case of failure. If not NULL, *phGeometry should be freed with OGR_G_DestroyGeometry() after use.
* **nBytes**: the number of bytes of data available in pabyData, or -1 if it is not known, but assumed to be sufficient.

### Returns
OGRERR_NONE if all goes well, otherwise any of OGRERR_NOT_ENOUGH_DATA, OGRERR_UNSUPPORTED_GEOMETRY_TYPE, or OGRERR_CORRUPT_DATA may be returned.
"""
function OGR_G_CreateFromWkb(arg1, arg2::OGRSpatialReferenceH, arg3, arg4::Cint)
    ccall((:OGR_G_CreateFromWkb, libgdal), OGRErr, (Ptr{Cuchar}, OGRSpatialReferenceH, Ptr{OGRGeometryH}, Cint), arg1, arg2, arg3, arg4)
end


"""
    OGR_G_CreateFromWkt(char ** ppszData,
                        OGRSpatialReferenceH hSRS,
                        OGRGeometryH * phGeometry) -> OGRErr

Create a geometry object of the appropriate type from it's well known text representation.

### Parameters
* **ppszData**: input zero terminated string containing well known text representation of the geometry to be created. The pointer is updated to point just beyond that last character consumed.
* **hSRS**: handle to the spatial reference to be assigned to the created geometry object. This may be NULL.
* **phGeometry**: the newly created geometry object will be assigned to the indicated handle on return. This will be NULL if the method fails. If not NULL, *phGeometry should be freed with OGR_G_DestroyGeometry() after use.

### Returns
OGRERR_NONE if all goes well, otherwise any of OGRERR_NOT_ENOUGH_DATA, OGRERR_UNSUPPORTED_GEOMETRY_TYPE, or OGRERR_CORRUPT_DATA may be returned.
"""
function OGR_G_CreateFromWkt(arg1, arg2::OGRSpatialReferenceH, arg3)
    ccall((:OGR_G_CreateFromWkt, libgdal), OGRErr, (Ptr{Cstring}, OGRSpatialReferenceH, Ptr{OGRGeometryH}), arg1, arg2, arg3)
end


"""
    OGR_G_CreateFromFgf(unsigned char * pabyData,
                        OGRSpatialReferenceH hSRS,
                        OGRGeometryH * phGeometry,
                        int nBytes,
                        int * pnBytesConsumed) -> OGRErr

Create a geometry object of the appropriate type from it's FGF (FDO Geometry Format) binary representation.
"""
function OGR_G_CreateFromFgf(arg1, arg2::OGRSpatialReferenceH, arg3, arg4::Cint, arg5)
    ccall((:OGR_G_CreateFromFgf, libgdal), OGRErr, (Ptr{Cuchar}, OGRSpatialReferenceH, Ptr{OGRGeometryH}, Cint, Ptr{Cint}), arg1, arg2, arg3, arg4, arg5)
end


"""
    OGR_G_DestroyGeometry(OGRGeometryH hGeom) -> void

Destroy geometry object.

### Parameters
* **hGeom**: handle to the geometry to delete.
"""
function OGR_G_DestroyGeometry(arg1::OGRGeometryH)
    ccall((:OGR_G_DestroyGeometry, libgdal), Void, (OGRGeometryH,), arg1)
end


"""
    OGR_G_CreateGeometry(OGRwkbGeometryType eGeometryType) -> OGRGeometryH

Create an empty geometry of desired type.

### Parameters
* **eGeometryType**: the type code of the geometry to be created.

### Returns
handle to the newly create geometry or NULL on failure. Should be freed with OGR_G_DestroyGeometry() after use.
"""
function OGR_G_CreateGeometry(arg1::OGRwkbGeometryType)
    ccall((:OGR_G_CreateGeometry, libgdal), OGRGeometryH, (OGRwkbGeometryType,), arg1)
end


"""
    OGR_G_ApproximateArcAngles(double dfCenterX,
                               double dfCenterY,
                               double dfZ,
                               double dfPrimaryRadius,
                               double dfSecondaryRadius,
                               double dfRotation,
                               double dfStartAngle,
                               double dfEndAngle,
                               double dfMaxAngleStepSizeDegrees) -> OGRGeometryH

Stroke arc to linestring.

### Parameters
* **dfCenterX**: center X
* **dfCenterY**: center Y
* **dfZ**: center Z
* **dfPrimaryRadius**: X radius of ellipse.
* **dfSecondaryRadius**: Y radius of ellipse.
* **dfRotation**: rotation of the ellipse clockwise.
* **dfStartAngle**: angle to first point on arc (clockwise of X-positive)
* **dfEndAngle**: angle to last point on arc (clockwise of X-positive)
* **dfMaxAngleStepSizeDegrees**: the largest step in degrees along the arc, zero to use the default setting.

### Returns
OGRLineString geometry representing an approximation of the arc.
"""
function OGR_G_ApproximateArcAngles(dfCenterX::Cdouble, dfCenterY::Cdouble, dfZ::Cdouble, dfPrimaryRadius::Cdouble, dfSecondaryAxis::Cdouble, dfRotation::Cdouble, dfStartAngle::Cdouble, dfEndAngle::Cdouble, dfMaxAngleStepSizeDegrees::Cdouble)
    ccall((:OGR_G_ApproximateArcAngles, libgdal), OGRGeometryH, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), dfCenterX, dfCenterY, dfZ, dfPrimaryRadius, dfSecondaryAxis, dfRotation, dfStartAngle, dfEndAngle, dfMaxAngleStepSizeDegrees)
end


"""
    OGR_G_ForceToPolygon(OGRGeometryH hGeom) -> OGRGeometryH

Convert to polygon.

### Parameters
* **hGeom**: handle to the geometry to convert (ownership surrendered).

### Returns
the converted geometry (ownership to caller).
"""
function OGR_G_ForceToPolygon(arg1::OGRGeometryH)
    ccall((:OGR_G_ForceToPolygon, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ForceToLineString(OGRGeometryH hGeom) -> OGRGeometryH

Convert to line string.

### Parameters
* **hGeom**: handle to the geometry to convert (ownership surrendered).

### Returns
the converted geometry (ownership to caller).
"""
function OGR_G_ForceToLineString(arg1::OGRGeometryH)
    ccall((:OGR_G_ForceToLineString, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ForceToMultiPolygon(OGRGeometryH hGeom) -> OGRGeometryH

Convert to multipolygon.

### Parameters
* **hGeom**: handle to the geometry to convert (ownership surrendered).

### Returns
the converted geometry (ownership to caller).
"""
function OGR_G_ForceToMultiPolygon(arg1::OGRGeometryH)
    ccall((:OGR_G_ForceToMultiPolygon, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ForceToMultiPoint(OGRGeometryH hGeom) -> OGRGeometryH

Convert to multipoint.

### Parameters
* **hGeom**: handle to the geometry to convert (ownership surrendered).

### Returns
the converted geometry (ownership to caller).
"""
function OGR_G_ForceToMultiPoint(arg1::OGRGeometryH)
    ccall((:OGR_G_ForceToMultiPoint, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ForceToMultiLineString(OGRGeometryH hGeom) -> OGRGeometryH

Convert to multilinestring.

### Parameters
* **hGeom**: handle to the geometry to convert (ownership surrendered).

### Returns
the converted geometry (ownership to caller).
"""
function OGR_G_ForceToMultiLineString(arg1::OGRGeometryH)
    ccall((:OGR_G_ForceToMultiLineString, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ForceTo(OGRGeometryH hGeom,
                  OGRwkbGeometryType eTargetType,
                  char ** papszOptions) -> OGRGeometryH

Convert to another geometry type.

### Parameters
* **hGeom**: the input geometry - ownership is passed to the method.
* **eTargetType**: target output geometry type.
* **papszOptions**: options as a null-terminated list of strings or NULL.

### Returns
new geometry.
"""
function OGR_G_ForceTo(hGeom::OGRGeometryH, eTargetType::OGRwkbGeometryType, papszOptions)
    ccall((:OGR_G_ForceTo, libgdal), OGRGeometryH, (OGRGeometryH, OGRwkbGeometryType, Ptr{Cstring}), hGeom, eTargetType, papszOptions)
end


"""
    OGR_G_GetDimension(OGRGeometryH hGeom) -> int

Get the dimension of this geometry.

### Parameters
* **hGeom**: handle on the geometry to get the dimension from.

### Returns
0 for points, 1 for lines and 2 for surfaces.
"""
function OGR_G_GetDimension(arg1::OGRGeometryH)
    ccall((:OGR_G_GetDimension, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_GetCoordinateDimension(OGRGeometryH hGeom) -> int

Get the dimension of the coordinates in this geometry.

### Parameters
* **hGeom**: handle on the geometry to get the dimension of the coordinates from.

### Returns
this will return 2 or 3.
"""
function OGR_G_GetCoordinateDimension(arg1::OGRGeometryH)
    ccall((:OGR_G_GetCoordinateDimension, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_CoordinateDimension(OGRGeometryH hGeom) -> int

Get the dimension of the coordinates in this geometry.

### Parameters
* **hGeom**: handle on the geometry to get the dimension of the coordinates from.

### Returns
this will return 2 for XY, 3 for XYZ and XYM, and 4 for XYZM data.
"""
function OGR_G_CoordinateDimension(arg1::OGRGeometryH)
    ccall((:OGR_G_CoordinateDimension, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_SetCoordinateDimension(OGRGeometryH hGeom,
                                 int nNewDimension) -> void

Set the coordinate dimension.

### Parameters
* **hGeom**: handle on the geometry to set the dimension of the coordinates.
* **nNewDimension**: New coordinate dimension value, either 2 or 3.
"""
function OGR_G_SetCoordinateDimension(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_SetCoordinateDimension, libgdal), Void, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_Is3D(OGRGeometryH hGeom) -> int

See whether this geometry has Z coordinates.

### Parameters
* **hGeom**: handle on the geometry to check whether it has Z coordinates.

### Returns
TRUE if the geometry has Z coordinates.
"""
function OGR_G_Is3D(arg1::OGRGeometryH)
    ccall((:OGR_G_Is3D, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_IsMeasured(OGRGeometryH hGeom) -> int

See whether this geometry is measured.

### Parameters
* **hGeom**: handle on the geometry to check whether it is measured.

### Returns
TRUE if the geometry has M coordinates.
"""
function OGR_G_IsMeasured(arg1::OGRGeometryH)
    ccall((:OGR_G_IsMeasured, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_Set3D(OGRGeometryH hGeom,
                int bIs3D) -> void

Add or remove the Z coordinate dimension.

### Parameters
* **hGeom**: handle on the geometry to set or unset the Z dimension.
* **bIs3D**: Should the geometry have a Z dimension, either TRUE or FALSE.
"""
function OGR_G_Set3D(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_Set3D, libgdal), Void, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_SetMeasured(OGRGeometryH hGeom,
                      int bIsMeasured) -> void

Add or remove the M coordinate dimension.

### Parameters
* **hGeom**: handle on the geometry to set or unset the M dimension.
* **bIsMeasured**: Should the geometry have a M dimension, either TRUE or FALSE.
"""
function OGR_G_SetMeasured(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_SetMeasured, libgdal), Void, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_Clone(OGRGeometryH hGeom) -> OGRGeometryH

Make a copy of this object.

### Parameters
* **hGeom**: handle on the geometry to clone from.

### Returns
an handle on the copy of the geometry with the spatial reference system as the original.
"""
function OGR_G_Clone(arg1::OGRGeometryH)
    ccall((:OGR_G_Clone, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_GetEnvelope(OGRGeometryH hGeom,
                      OGREnvelope * psEnvelope) -> void

Computes and returns the bounding envelope for this geometry in the passed psEnvelope structure.

### Parameters
* **hGeom**: handle of the geometry to get envelope from.
* **psEnvelope**: the structure in which to place the results.
"""
function OGR_G_GetEnvelope(arg1::OGRGeometryH, arg2)
    ccall((:OGR_G_GetEnvelope, libgdal), Void, (OGRGeometryH, Ptr{OGREnvelope}), arg1, arg2)
end


"""
    OGR_G_GetEnvelope3D(OGRGeometryH hGeom,
                        OGREnvelope3D * psEnvelope) -> void

Computes and returns the bounding envelope (3D) for this geometry in the passed psEnvelope structure.

### Parameters
* **hGeom**: handle of the geometry to get envelope from.
* **psEnvelope**: the structure in which to place the results.
"""
function OGR_G_GetEnvelope3D(arg1::OGRGeometryH, arg2)
    ccall((:OGR_G_GetEnvelope3D, libgdal), Void, (OGRGeometryH, Ptr{OGREnvelope3D}), arg1, arg2)
end


"""
    OGR_G_ImportFromWkb(OGRGeometryH hGeom,
                        unsigned char * pabyData,
                        int nSize) -> OGRErr

Assign geometry from well known binary data.

### Parameters
* **hGeom**: handle on the geometry to assign the well know binary data to.
* **pabyData**: the binary input data.
* **nSize**: the size of pabyData in bytes, or zero if not known.

### Returns
OGRERR_NONE if all goes well, otherwise any of OGRERR_NOT_ENOUGH_DATA, OGRERR_UNSUPPORTED_GEOMETRY_TYPE, or OGRERR_CORRUPT_DATA may be returned.
"""
function OGR_G_ImportFromWkb(arg1::OGRGeometryH, arg2, arg3::Cint)
    ccall((:OGR_G_ImportFromWkb, libgdal), OGRErr, (OGRGeometryH, Ptr{Cuchar}, Cint), arg1, arg2, arg3)
end


"""
    OGR_G_ExportToWkb(OGRGeometryH hGeom,
                      OGRwkbByteOrder eOrder,
                      unsigned char * pabyDstBuffer) -> OGRErr

Convert a geometry well known binary format.

### Parameters
* **hGeom**: handle on the geometry to convert to a well know binary data from.
* **eOrder**: One of wkbXDR or wkbNDR indicating MSB or LSB byte order respectively.
* **pabyDstBuffer**: a buffer into which the binary representation is written. This buffer must be at least OGR_G_WkbSize() byte in size.

### Returns
Currently OGRERR_NONE is always returned.
"""
function OGR_G_ExportToWkb(arg1::OGRGeometryH, arg2::OGRwkbByteOrder, arg3)
    ccall((:OGR_G_ExportToWkb, libgdal), OGRErr, (OGRGeometryH, OGRwkbByteOrder, Ptr{Cuchar}), arg1, arg2, arg3)
end


"""
    OGR_G_ExportToIsoWkb(OGRGeometryH hGeom,
                         OGRwkbByteOrder eOrder,
                         unsigned char * pabyDstBuffer) -> OGRErr

Convert a geometry into SFSQL 1.2 / ISO SQL/MM Part 3 well known binary format.

### Parameters
* **hGeom**: handle on the geometry to convert to a well know binary data from.
* **eOrder**: One of wkbXDR or wkbNDR indicating MSB or LSB byte order respectively.
* **pabyDstBuffer**: a buffer into which the binary representation is written. This buffer must be at least OGR_G_WkbSize() byte in size.

### Returns
Currently OGRERR_NONE is always returned.
"""
function OGR_G_ExportToIsoWkb(arg1::OGRGeometryH, arg2::OGRwkbByteOrder, arg3)
    ccall((:OGR_G_ExportToIsoWkb, libgdal), OGRErr, (OGRGeometryH, OGRwkbByteOrder, Ptr{Cuchar}), arg1, arg2, arg3)
end


"""
    OGR_G_WkbSize(OGRGeometryH hGeom) -> int

Returns size of related binary representation.

### Parameters
* **hGeom**: handle on the geometry to get the binary size from.

### Returns
size of binary representation in bytes.
"""
function OGR_G_WkbSize(hGeom::OGRGeometryH)
    ccall((:OGR_G_WkbSize, libgdal), Cint, (OGRGeometryH,), hGeom)
end


"""
    OGR_G_ImportFromWkt(OGRGeometryH hGeom,
                        char ** ppszSrcText) -> OGRErr

Assign geometry from well known text data.

### Parameters
* **hGeom**: handle on the geometry to assign well know text data to.
* **ppszSrcText**: pointer to a pointer to the source text. The pointer is updated to pointer after the consumed text.

### Returns
OGRERR_NONE if all goes well, otherwise any of OGRERR_NOT_ENOUGH_DATA, OGRERR_UNSUPPORTED_GEOMETRY_TYPE, or OGRERR_CORRUPT_DATA may be returned.
"""
function OGR_G_ImportFromWkt(arg1::OGRGeometryH, arg2)
    ccall((:OGR_G_ImportFromWkt, libgdal), OGRErr, (OGRGeometryH, Ptr{Cstring}), arg1, arg2)
end


"""
    OGR_G_ExportToWkt(OGRGeometryH hGeom,
                      char ** ppszSrcText) -> OGRErr

Convert a geometry into well known text format.

### Parameters
* **hGeom**: handle on the geometry to convert to a text format from.
* **ppszSrcText**: a text buffer is allocated by the program, and assigned to the passed pointer. After use, *ppszDstText should be freed with CPLFree().

### Returns
Currently OGRERR_NONE is always returned.
"""
function OGR_G_ExportToWkt(arg1::OGRGeometryH, arg2)
    ccall((:OGR_G_ExportToWkt, libgdal), OGRErr, (OGRGeometryH, Ptr{Cstring}), arg1, arg2)
end


"""
    OGR_G_ExportToIsoWkt(OGRGeometryH hGeom,
                         char ** ppszSrcText) -> OGRErr

Convert a geometry into SFSQL 1.2 / ISO SQL/MM Part 3 well known text format.

### Parameters
* **hGeom**: handle on the geometry to convert to a text format from.
* **ppszSrcText**: a text buffer is allocated by the program, and assigned to the passed pointer. After use, *ppszDstText should be freed with CPLFree().

### Returns
Currently OGRERR_NONE is always returned.
"""
function OGR_G_ExportToIsoWkt(arg1::OGRGeometryH, arg2)
    ccall((:OGR_G_ExportToIsoWkt, libgdal), OGRErr, (OGRGeometryH, Ptr{Cstring}), arg1, arg2)
end


"""
    OGR_G_GetGeometryType(OGRGeometryH hGeom) -> OGRwkbGeometryType

Fetch geometry type.

### Parameters
* **hGeom**: handle on the geometry to get type from.

### Returns
the geometry type code.
"""
function OGR_G_GetGeometryType(arg1::OGRGeometryH)
    ccall((:OGR_G_GetGeometryType, libgdal), OGRwkbGeometryType, (OGRGeometryH,), arg1)
end


"""
    OGR_G_GetGeometryName(OGRGeometryH hGeom) -> const char *

Fetch WKT name for geometry type.

### Parameters
* **hGeom**: handle on the geometry to get name from.

### Returns
name used for this geometry type in well known text format.
"""
function OGR_G_GetGeometryName(arg1::OGRGeometryH)
    ccall((:OGR_G_GetGeometryName, libgdal), Cstring, (OGRGeometryH,), arg1)
end


"""
    OGR_G_DumpReadable(OGRGeometryH hGeom,
                       FILE * fp,
                       const char * pszPrefix) -> void

Dump geometry in well known text format to indicated output file.

### Parameters
* **hGeom**: handle on the geometry to dump.
* **fp**: the text file to write the geometry to.
* **pszPrefix**: the prefix to put on each line of output.
"""
function OGR_G_DumpReadable(arg1::OGRGeometryH, arg2, arg3)
    ccall((:OGR_G_DumpReadable, libgdal), Void, (OGRGeometryH, Ptr{FILE}, Cstring), arg1, arg2, arg3)
end


"""
    OGR_G_FlattenTo2D(OGRGeometryH hGeom) -> void

Convert geometry to strictly 2D.

### Parameters
* **hGeom**: handle on the geometry to convert.
"""
function OGR_G_FlattenTo2D(arg1::OGRGeometryH)
    ccall((:OGR_G_FlattenTo2D, libgdal), Void, (OGRGeometryH,), arg1)
end


"""
    OGR_G_CloseRings(OGRGeometryH hGeom) -> void

Force rings to be closed.

### Parameters
* **hGeom**: handle to the geometry.
"""
function OGR_G_CloseRings(arg1::OGRGeometryH)
    ccall((:OGR_G_CloseRings, libgdal), Void, (OGRGeometryH,), arg1)
end


"""
    OGR_G_CreateFromGML(const char * pszGML) -> OGRGeometryH

Create geometry from GML.

### Parameters
* **pszGML**: The GML fragment for the geometry.

### Returns
a geometry on success, or NULL on error.
"""
function OGR_G_CreateFromGML(arg1)
    ccall((:OGR_G_CreateFromGML, libgdal), OGRGeometryH, (Cstring,), arg1)
end


"""
    OGR_G_ExportToGML(OGRGeometryH hGeometry) -> char *

Convert a geometry into GML format.

### Parameters
* **hGeometry**: handle to the geometry.

### Returns
A GML fragment or NULL in case of error.
"""
function OGR_G_ExportToGML(arg1::OGRGeometryH)
    ccall((:OGR_G_ExportToGML, libgdal), Cstring, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ExportToGMLEx(OGRGeometryH hGeometry,
                        char ** papszOptions) -> char *

Convert a geometry into GML format.

### Parameters
* **hGeometry**: handle to the geometry.
* **papszOptions**: NULL-terminated list of options.

### Returns
A GML fragment or NULL in case of error.
"""
function OGR_G_ExportToGMLEx(arg1::OGRGeometryH, papszOptions)
    ccall((:OGR_G_ExportToGMLEx, libgdal), Cstring, (OGRGeometryH, Ptr{Cstring}), arg1, papszOptions)
end


"""
    OGR_G_CreateFromGMLTree(const CPLXMLNode * psTree) -> OGRGeometryH

Create geometry from GML.
"""
function OGR_G_CreateFromGMLTree(arg1)
    ccall((:OGR_G_CreateFromGMLTree, libgdal), OGRGeometryH, (Ptr{CPLXMLNode},), arg1)
end


"""
    OGR_G_ExportToGMLTree(OGRGeometryH hGeometry) -> CPLXMLNode *

Convert a geometry into GML format.
"""
function OGR_G_ExportToGMLTree(arg1::OGRGeometryH)
    ccall((:OGR_G_ExportToGMLTree, libgdal), Ptr{CPLXMLNode}, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ExportEnvelopeToGMLTree(OGRGeometryH hGeometry) -> CPLXMLNode *

Export the envelope of a geometry as a gml:Box.
"""
function OGR_G_ExportEnvelopeToGMLTree(arg1::OGRGeometryH)
    ccall((:OGR_G_ExportEnvelopeToGMLTree, libgdal), Ptr{CPLXMLNode}, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ExportToKML(OGRGeometryH hGeometry,
                      const char * pszAltitudeMode) -> char *

Convert a geometry into KML format.

### Parameters
* **hGeometry**: handle to the geometry.
* **pszAltitudeMode**: value to write in altitudeMode element, or NULL.

### Returns
A KML fragment or NULL in case of error.
"""
function OGR_G_ExportToKML(arg1::OGRGeometryH, pszAltitudeMode)
    ccall((:OGR_G_ExportToKML, libgdal), Cstring, (OGRGeometryH, Cstring), arg1, pszAltitudeMode)
end


"""
    OGR_G_ExportToJson(OGRGeometryH hGeometry) -> char *

Convert a geometry into GeoJSON format.

### Parameters
* **hGeometry**: handle to the geometry.

### Returns
A GeoJSON fragment or NULL in case of error.
"""
function OGR_G_ExportToJson(arg1::OGRGeometryH)
    ccall((:OGR_G_ExportToJson, libgdal), Cstring, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ExportToJsonEx(OGRGeometryH hGeometry,
                         char ** papszOptions) -> char *

Convert a geometry into GeoJSON format.

### Parameters
* **hGeometry**: handle to the geometry.
* **papszOptions**: a null terminated list of options.

### Returns
A GeoJSON fragment or NULL in case of error.
"""
function OGR_G_ExportToJsonEx(arg1::OGRGeometryH, papszOptions)
    ccall((:OGR_G_ExportToJsonEx, libgdal), Cstring, (OGRGeometryH, Ptr{Cstring}), arg1, papszOptions)
end


"""
    OGR_G_CreateGeometryFromJson(const char *) -> OGRGeometryH

Create a OGR geometry from a GeoJSON geometry object.
"""
function OGR_G_CreateGeometryFromJson(arg1)
    ccall((:OGR_G_CreateGeometryFromJson, libgdal), OGRGeometryH, (Cstring,), arg1)
end


"""
    OGR_G_AssignSpatialReference(OGRGeometryH hGeom,
                                 OGRSpatialReferenceH hSRS) -> void

Assign spatial reference to this object.

### Parameters
* **hGeom**: handle on the geometry to apply the new spatial reference system.
* **hSRS**: handle on the new spatial reference system to apply.
"""
function OGR_G_AssignSpatialReference(arg1::OGRGeometryH, arg2::OGRSpatialReferenceH)
    ccall((:OGR_G_AssignSpatialReference, libgdal), Void, (OGRGeometryH, OGRSpatialReferenceH), arg1, arg2)
end


"""
    OGR_G_GetSpatialReference(OGRGeometryH hGeom) -> OGRSpatialReferenceH

Returns spatial reference system for geometry.

### Parameters
* **hGeom**: handle on the geometry to get spatial reference from.

### Returns
a reference to the spatial reference geometry.
"""
function OGR_G_GetSpatialReference(arg1::OGRGeometryH)
    ccall((:OGR_G_GetSpatialReference, libgdal), OGRSpatialReferenceH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_Transform(OGRGeometryH hGeom,
                    OGRCoordinateTransformationH hTransform) -> OGRErr

Apply arbitrary coordinate transformation to geometry.

### Parameters
* **hGeom**: handle on the geometry to apply the transform to.
* **hTransform**: handle on the transformation to apply.

### Returns
OGRERR_NONE on success or an error code.
"""
function OGR_G_Transform(arg1::OGRGeometryH, arg2::OGRCoordinateTransformationH)
    ccall((:OGR_G_Transform, libgdal), OGRErr, (OGRGeometryH, OGRCoordinateTransformationH), arg1, arg2)
end


"""
    OGR_G_TransformTo(OGRGeometryH hGeom,
                      OGRSpatialReferenceH hSRS) -> OGRErr

Transform geometry to new spatial reference system.

### Parameters
* **hGeom**: handle on the geometry to apply the transform to.
* **hSRS**: handle on the spatial reference system to apply.

### Returns
OGRERR_NONE on success, or an error code.
"""
function OGR_G_TransformTo(arg1::OGRGeometryH, arg2::OGRSpatialReferenceH)
    ccall((:OGR_G_TransformTo, libgdal), OGRErr, (OGRGeometryH, OGRSpatialReferenceH), arg1, arg2)
end


"""
    OGR_G_Simplify(OGRGeometryH hThis,
                   double dTolerance) -> OGRGeometryH

Compute a simplified geometry.

### Parameters
* **hThis**: the geometry.
* **dTolerance**: the distance tolerance for the simplification.

### Returns
the simplified geometry or NULL if an error occurs.
"""
function OGR_G_Simplify(hThis::OGRGeometryH, tolerance::Cdouble)
    ccall((:OGR_G_Simplify, libgdal), OGRGeometryH, (OGRGeometryH, Cdouble), hThis, tolerance)
end


"""
    OGR_G_SimplifyPreserveTopology(OGRGeometryH hThis,
                                   double dTolerance) -> OGRGeometryH

Simplify the geometry while preserving topology.

### Parameters
* **hThis**: the geometry.
* **dTolerance**: the distance tolerance for the simplification.

### Returns
the simplified geometry or NULL if an error occurs.
"""
function OGR_G_SimplifyPreserveTopology(hThis::OGRGeometryH, tolerance::Cdouble)
    ccall((:OGR_G_SimplifyPreserveTopology, libgdal), OGRGeometryH, (OGRGeometryH, Cdouble), hThis, tolerance)
end


"""
    OGR_G_DelaunayTriangulation(OGRGeometryH hThis,
                                double dfTolerance,
                                int bOnlyEdges) -> OGRGeometryH

Return a Delaunay triangulation of the vertices of the geometry.

### Parameters
* **hThis**: the geometry.
* **dfTolerance**: optional snapping tolerance to use for improved robustness
* **bOnlyEdges**: if TRUE, will return a MULTILINESTRING, otherwise it will return a GEOMETRYCOLLECTION containing triangular POLYGONs.

### Returns
the geometry resulting from the Delaunay triangulation or NULL if an error occurs.
"""
function OGR_G_DelaunayTriangulation(hThis::OGRGeometryH, dfTolerance::Cdouble, bOnlyEdges::Cint)
    ccall((:OGR_G_DelaunayTriangulation, libgdal), OGRGeometryH, (OGRGeometryH, Cdouble, Cint), hThis, dfTolerance, bOnlyEdges)
end


"""
    OGR_G_Segmentize(OGRGeometryH hGeom,
                     double dfMaxLength) -> void

Modify the geometry such it has no segment longer then the given distance.

### Parameters
* **hGeom**: handle on the geometry to segmentize
* **dfMaxLength**: the maximum distance between 2 points after segmentization
"""
function OGR_G_Segmentize(hGeom::OGRGeometryH, dfMaxLength::Cdouble)
    ccall((:OGR_G_Segmentize, libgdal), Void, (OGRGeometryH, Cdouble), hGeom, dfMaxLength)
end


"""
    OGR_G_Intersects(OGRGeometryH hGeom,
                     OGRGeometryH hOtherGeom) -> int

Do these features intersect?

### Parameters
* **hGeom**: handle on the first geometry.
* **hOtherGeom**: handle on the other geometry to test against.

### Returns
TRUE if the geometries intersect, otherwise FALSE.
"""
function OGR_G_Intersects(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Intersects, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Equals(OGRGeometryH hGeom,
                 OGRGeometryH hOther) -> int

Returns TRUE if two geometries are equivalent.

### Parameters
* **hGeom**: handle on the first geometry.
* **hOther**: handle on the other geometry to test against.

### Returns
TRUE if equivalent or FALSE otherwise.
"""
function OGR_G_Equals(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Equals, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Disjoint(OGRGeometryH hThis,
                   OGRGeometryH hOther) -> int

Test for disjointness.

### Parameters
* **hThis**: the geometry to compare.
* **hOther**: the other geometry to compare.

### Returns
TRUE if they are disjoint, otherwise FALSE.
"""
function OGR_G_Disjoint(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Disjoint, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Touches(OGRGeometryH hThis,
                  OGRGeometryH hOther) -> int

Test for touching.

### Parameters
* **hThis**: the geometry to compare.
* **hOther**: the other geometry to compare.

### Returns
TRUE if they are touching, otherwise FALSE.
"""
function OGR_G_Touches(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Touches, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Crosses(OGRGeometryH hThis,
                  OGRGeometryH hOther) -> int

Test for crossing.

### Parameters
* **hThis**: the geometry to compare.
* **hOther**: the other geometry to compare.

### Returns
TRUE if they are crossing, otherwise FALSE.
"""
function OGR_G_Crosses(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Crosses, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Within(OGRGeometryH hThis,
                 OGRGeometryH hOther) -> int

Test for containment.

### Parameters
* **hThis**: the geometry to compare.
* **hOther**: the other geometry to compare.

### Returns
TRUE if hThis is within hOther, otherwise FALSE.
"""
function OGR_G_Within(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Within, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Contains(OGRGeometryH hThis,
                   OGRGeometryH hOther) -> int

Test for containment.

### Parameters
* **hThis**: the geometry to compare.
* **hOther**: the other geometry to compare.

### Returns
TRUE if hThis contains hOther geometry, otherwise FALSE.
"""
function OGR_G_Contains(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Contains, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Overlaps(OGRGeometryH hThis,
                   OGRGeometryH hOther) -> int

Test for overlap.

### Parameters
* **hThis**: the geometry to compare.
* **hOther**: the other geometry to compare.

### Returns
TRUE if they are overlapping, otherwise FALSE.
"""
function OGR_G_Overlaps(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Overlaps, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Boundary(OGRGeometryH hTarget) -> OGRGeometryH

Compute boundary.

### Parameters
* **hTarget**: The Geometry to calculate the boundary of.

### Returns
a handle to a newly allocated geometry now owned by the caller, or NULL on failure.
"""
function OGR_G_Boundary(arg1::OGRGeometryH)
    ccall((:OGR_G_Boundary, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_ConvexHull(OGRGeometryH hTarget) -> OGRGeometryH

Compute convex hull.

### Parameters
* **hTarget**: The Geometry to calculate the convex hull of.

### Returns
a handle to a newly allocated geometry now owned by the caller, or NULL on failure.
"""
function OGR_G_ConvexHull(arg1::OGRGeometryH)
    ccall((:OGR_G_ConvexHull, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_Buffer(OGRGeometryH hTarget,
                 double dfDist,
                 int nQuadSegs) -> OGRGeometryH

Compute buffer of geometry.

### Parameters
* **hTarget**: the geometry.
* **dfDist**: the buffer distance to be applied. Should be expressed into the same unit as the coordinates of the geometry.
* **nQuadSegs**: the number of segments used to approximate a 90 degree (quadrant) of curvature.

### Returns
the newly created geometry, or NULL if an error occurs.
"""
function OGR_G_Buffer(arg1::OGRGeometryH, arg2::Cdouble, arg3::Cint)
    ccall((:OGR_G_Buffer, libgdal), OGRGeometryH, (OGRGeometryH, Cdouble, Cint), arg1, arg2, arg3)
end


"""
    OGR_G_Intersection(OGRGeometryH hThis,
                       OGRGeometryH hOther) -> OGRGeometryH

Compute intersection.

### Parameters
* **hThis**: the geometry.
* **hOther**: the other geometry.

### Returns
a new geometry representing the intersection or NULL if there is no intersection or an error occurs.
"""
function OGR_G_Intersection(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Intersection, libgdal), OGRGeometryH, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Union(OGRGeometryH hThis,
                OGRGeometryH hOther) -> OGRGeometryH

Compute union.

### Parameters
* **hThis**: the geometry.
* **hOther**: the other geometry.

### Returns
a new geometry representing the union or NULL if an error occurs.
"""
function OGR_G_Union(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Union, libgdal), OGRGeometryH, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_UnionCascaded(OGRGeometryH hThis) -> OGRGeometryH

Compute union using cascading.

### Parameters
* **hThis**: the geometry.

### Returns
a new geometry representing the union or NULL if an error occurs.
"""
function OGR_G_UnionCascaded(arg1::OGRGeometryH)
    ccall((:OGR_G_UnionCascaded, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_PointOnSurface(OGRGeometryH hGeom) -> OGRGeometryH

Returns a point guaranteed to lie on the surface.

### Parameters
* **hGeom**: the geometry to operate on.

### Returns
a point guaranteed to lie on the surface or NULL if an error occurred.
"""
function OGR_G_PointOnSurface(arg1::OGRGeometryH)
    ccall((:OGR_G_PointOnSurface, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_Difference(OGRGeometryH hThis,
                     OGRGeometryH hOther) -> OGRGeometryH

Compute difference.

### Parameters
* **hThis**: the geometry.
* **hOther**: the other geometry.

### Returns
a new geometry representing the difference or NULL if the difference is empty or an error occurs.
"""
function OGR_G_Difference(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Difference, libgdal), OGRGeometryH, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_SymDifference(OGRGeometryH hThis,
                        OGRGeometryH hOther) -> OGRGeometryH

Compute symmetric difference.

### Parameters
* **hThis**: the geometry.
* **hOther**: the other geometry.

### Returns
a new geometry representing the symmetric difference or NULL if the difference is empty or an error occurs.
"""
function OGR_G_SymDifference(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_SymDifference, libgdal), OGRGeometryH, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Distance(OGRGeometryH hFirst,
                   OGRGeometryH hOther) -> double

Compute distance between two geometries.

### Parameters
* **hFirst**: the first geometry to compare against.
* **hOther**: the other geometry to compare against.

### Returns
the distance between the geometries or -1 if an error occurs.
"""
function OGR_G_Distance(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Distance, libgdal), Cdouble, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Distance3D(OGRGeometryH hFirst,
                     OGRGeometryH hOther) -> double

Returns the 3D distance between two geometries.

### Parameters
* **hFirst**: the first geometry to compare against.
* **hOther**: the other geometry to compare against.

### Returns
distance between the two geometries
"""
function OGR_G_Distance3D(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Distance3D, libgdal), Cdouble, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Length(OGRGeometryH hGeom) -> double

Compute length of a geometry.

### Parameters
* **hGeom**: the geometry to operate on.

### Returns
the length or 0.0 for unsupported geometry types.
"""
function OGR_G_Length(arg1::OGRGeometryH)
    ccall((:OGR_G_Length, libgdal), Cdouble, (OGRGeometryH,), arg1)
end


"""
    OGR_G_Area(OGRGeometryH hGeom) -> double

Compute geometry area.

### Parameters
* **hGeom**: the geometry to operate on.

### Returns
the area or 0.0 for unsupported geometry types.
"""
function OGR_G_Area(arg1::OGRGeometryH)
    ccall((:OGR_G_Area, libgdal), Cdouble, (OGRGeometryH,), arg1)
end


"""
    OGR_G_Centroid(OGRGeometryH hGeom,
                   OGRGeometryH hCentroidPoint) -> int

Compute the geometry centroid.

### Returns
OGRERR_NONE on success or OGRERR_FAILURE on error.
"""
function OGR_G_Centroid(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Centroid, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_Value(OGRGeometryH hGeom,
                double dfDistance) -> OGRGeometryH

Fetch point at given distance along curve.

### Parameters
* **hGeom**: curve geometry.
* **dfDistance**: distance along the curve at which to sample position. This distance should be between zero and get_Length() for this curve.

### Returns
a point or NULL.
"""
function OGR_G_Value(arg1::OGRGeometryH, dfDistance::Cdouble)
    ccall((:OGR_G_Value, libgdal), OGRGeometryH, (OGRGeometryH, Cdouble), arg1, dfDistance)
end


"""
    OGR_G_Empty(OGRGeometryH hGeom) -> void

Clear geometry information.

### Parameters
* **hGeom**: handle on the geometry to empty.
"""
function OGR_G_Empty(arg1::OGRGeometryH)
    ccall((:OGR_G_Empty, libgdal), Void, (OGRGeometryH,), arg1)
end


"""
    OGR_G_IsEmpty(OGRGeometryH hGeom) -> int

Test if the geometry is empty.

### Parameters
* **hGeom**: The Geometry to test.

### Returns
TRUE if the geometry has no points, otherwise FALSE.
"""
function OGR_G_IsEmpty(arg1::OGRGeometryH)
    ccall((:OGR_G_IsEmpty, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_IsValid(OGRGeometryH hGeom) -> int

Test if the geometry is valid.

### Parameters
* **hGeom**: The Geometry to test.

### Returns
TRUE if the geometry has no points, otherwise FALSE.
"""
function OGR_G_IsValid(arg1::OGRGeometryH)
    ccall((:OGR_G_IsValid, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_IsSimple(OGRGeometryH hGeom) -> int

Returns TRUE if the geometry is simple.

### Parameters
* **hGeom**: The Geometry to test.

### Returns
TRUE if object is simple, otherwise FALSE.
"""
function OGR_G_IsSimple(arg1::OGRGeometryH)
    ccall((:OGR_G_IsSimple, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_IsRing(OGRGeometryH hGeom) -> int

Test if the geometry is a ring.

### Parameters
* **hGeom**: The Geometry to test.

### Returns
TRUE if the geometry has no points, otherwise FALSE.
"""
function OGR_G_IsRing(arg1::OGRGeometryH)
    ccall((:OGR_G_IsRing, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_Polygonize(OGRGeometryH hTarget) -> OGRGeometryH

Polygonizes a set of sparse edges.

### Parameters
* **hTarget**: The Geometry to be polygonized.

### Returns
a handle to a newly allocated geometry now owned by the caller, or NULL on failure.
"""
function OGR_G_Polygonize(arg1::OGRGeometryH)
    ccall((:OGR_G_Polygonize, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
"""
function OGR_G_Intersect(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Intersect, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
"""
function OGR_G_Equal(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_Equal, libgdal), Cint, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_SymmetricDifference(OGRGeometryH hThis,
                              OGRGeometryH hOther) -> OGRGeometryH

Compute symmetric difference (deprecated)
"""
function OGR_G_SymmetricDifference(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_SymmetricDifference, libgdal), OGRGeometryH, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_GetArea(OGRGeometryH hGeom) -> double

Compute geometry area (deprecated)
"""
function OGR_G_GetArea(arg1::OGRGeometryH)
    ccall((:OGR_G_GetArea, libgdal), Cdouble, (OGRGeometryH,), arg1)
end


"""
    OGR_G_GetBoundary(OGRGeometryH hTarget) -> OGRGeometryH

Compute boundary (deprecated)
"""
function OGR_G_GetBoundary(arg1::OGRGeometryH)
    ccall((:OGR_G_GetBoundary, libgdal), OGRGeometryH, (OGRGeometryH,), arg1)
end


"""
    OGR_G_GetPointCount(OGRGeometryH hGeom) -> int

Fetch number of points from a geometry.

### Parameters
* **hGeom**: handle to the geometry from which to get the number of points.

### Returns
the number of points.
"""
function OGR_G_GetPointCount(arg1::OGRGeometryH)
    ccall((:OGR_G_GetPointCount, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_GetPoints(OGRGeometryH hGeom,
                    void * pabyX,
                    int nXStride,
                    void * pabyY,
                    int nYStride,
                    void * pabyZ,
                    int nZStride) -> int

Returns all points of line string.

### Parameters
* **hGeom**: handle to the geometry from which to get the coordinates.
* **pabyX**: a buffer of at least (sizeof(double) * nXStride * nPointCount) bytes, may be NULL.
* **nXStride**: the number of bytes between 2 elements of pabyX.
* **pabyY**: a buffer of at least (sizeof(double) * nYStride * nPointCount) bytes, may be NULL.
* **nYStride**: the number of bytes between 2 elements of pabyY.
* **pabyZ**: a buffer of at last size (sizeof(double) * nZStride * nPointCount) bytes, may be NULL.
* **nZStride**: the number of bytes between 2 elements of pabyZ.

### Returns
the number of points
"""
function OGR_G_GetPoints(hGeom::OGRGeometryH, pabyX, nXStride::Cint, pabyY, nYStride::Cint, pabyZ, nZStride::Cint)
    ccall((:OGR_G_GetPoints, libgdal), Cint, (OGRGeometryH, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), hGeom, pabyX, nXStride, pabyY, nYStride, pabyZ, nZStride)
end


"""
    OGR_G_GetPointsZM(OGRGeometryH hGeom,
                      void * pabyX,
                      int nXStride,
                      void * pabyY,
                      int nYStride,
                      void * pabyZ,
                      int nZStride,
                      void * pabyM,
                      int nMStride) -> int

Returns all points of line string.

### Parameters
* **hGeom**: handle to the geometry from which to get the coordinates.
* **pabyX**: a buffer of at least (sizeof(double) * nXStride * nPointCount) bytes, may be NULL.
* **nXStride**: the number of bytes between 2 elements of pabyX.
* **pabyY**: a buffer of at least (sizeof(double) * nYStride * nPointCount) bytes, may be NULL.
* **nYStride**: the number of bytes between 2 elements of pabyY.
* **pabyZ**: a buffer of at last size (sizeof(double) * nZStride * nPointCount) bytes, may be NULL.
* **nZStride**: the number of bytes between 2 elements of pabyZ.
* **pabyM**: a buffer of at last size (sizeof(double) * nMStride * nPointCount) bytes, may be NULL.
* **nMStride**: the number of bytes between 2 elements of pabyM.

### Returns
the number of points
"""
function OGR_G_GetPointsZM(hGeom::OGRGeometryH, pabyX, nXStride::Cint, pabyY, nYStride::Cint, pabyZ, nZStride::Cint, pabyM, nMStride::Cint)
    ccall((:OGR_G_GetPointsZM, libgdal), Cint, (OGRGeometryH, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), hGeom, pabyX, nXStride, pabyY, nYStride, pabyZ, nZStride, pabyM, nMStride)
end


"""
    OGR_G_GetX(OGRGeometryH hGeom,
               int i) -> double

Fetch the x coordinate of a point from a geometry.

### Parameters
* **hGeom**: handle to the geometry from which to get the x coordinate.
* **i**: point to get the x coordinate.

### Returns
the X coordinate of this point.
"""
function OGR_G_GetX(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_GetX, libgdal), Cdouble, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_GetY(OGRGeometryH hGeom,
               int i) -> double

Fetch the x coordinate of a point from a geometry.

### Parameters
* **hGeom**: handle to the geometry from which to get the y coordinate.
* **i**: point to get the Y coordinate.

### Returns
the Y coordinate of this point.
"""
function OGR_G_GetY(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_GetY, libgdal), Cdouble, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_GetZ(OGRGeometryH hGeom,
               int i) -> double

Fetch the z coordinate of a point from a geometry.

### Parameters
* **hGeom**: handle to the geometry from which to get the Z coordinate.
* **i**: point to get the Z coordinate.

### Returns
the Z coordinate of this point.
"""
function OGR_G_GetZ(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_GetZ, libgdal), Cdouble, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_GetM(OGRGeometryH hGeom,
               int i) -> double

Fetch the m coordinate of a point from a geometry.

### Parameters
* **hGeom**: handle to the geometry from which to get the M coordinate.
* **i**: point to get the M coordinate.

### Returns
the M coordinate of this point.
"""
function OGR_G_GetM(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_GetM, libgdal), Cdouble, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_GetPoint(OGRGeometryH hGeom,
                   int i,
                   double * pdfX,
                   double * pdfY,
                   double * pdfZ) -> void

Fetch a point in line string or a point geometry.

### Parameters
* **hGeom**: handle to the geometry from which to get the coordinates.
* **i**: the vertex to fetch, from 0 to getNumPoints()-1, zero for a point.
* **pdfX**: value of x coordinate.
* **pdfY**: value of y coordinate.
* **pdfZ**: value of z coordinate.
"""
function OGR_G_GetPoint(arg1::OGRGeometryH, iPoint::Cint, arg2, arg3, arg4)
    ccall((:OGR_G_GetPoint, libgdal), Void, (OGRGeometryH, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), arg1, iPoint, arg2, arg3, arg4)
end


"""
    OGR_G_GetPointZM(OGRGeometryH hGeom,
                     int i,
                     double * pdfX,
                     double * pdfY,
                     double * pdfZ,
                     double * pdfM) -> void

Fetch a point in line string or a point geometry.

### Parameters
* **hGeom**: handle to the geometry from which to get the coordinates.
* **i**: the vertex to fetch, from 0 to getNumPoints()-1, zero for a point.
* **pdfX**: value of x coordinate.
* **pdfY**: value of y coordinate.
* **pdfZ**: value of z coordinate.
* **pdfM**: value of m coordinate.
"""
function OGR_G_GetPointZM(arg1::OGRGeometryH, iPoint::Cint, arg2, arg3, arg4, arg5)
    ccall((:OGR_G_GetPointZM, libgdal), Void, (OGRGeometryH, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), arg1, iPoint, arg2, arg3, arg4, arg5)
end


"""
    OGR_G_SetPointCount(OGRGeometryH hGeom,
                        int nNewPointCount) -> void

Set number of points in a geometry.

### Parameters
* **hGeom**: handle to the geometry.
* **nNewPointCount**: the new number of points for geometry.
"""
function OGR_G_SetPointCount(hGeom::OGRGeometryH, nNewPointCount::Cint)
    ccall((:OGR_G_SetPointCount, libgdal), Void, (OGRGeometryH, Cint), hGeom, nNewPointCount)
end


"""
    OGR_G_SetPoint(OGRGeometryH hGeom,
                   int i,
                   double dfX,
                   double dfY,
                   double dfZ) -> void

Set the location of a vertex in a point or linestring geometry.

### Parameters
* **hGeom**: handle to the geometry to add a vertex to.
* **i**: the index of the vertex to assign (zero based) or zero for a point.
* **dfX**: input X coordinate to assign.
* **dfY**: input Y coordinate to assign.
* **dfZ**: input Z coordinate to assign (defaults to zero).
"""
function OGR_G_SetPoint(arg1::OGRGeometryH, iPoint::Cint, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
    ccall((:OGR_G_SetPoint, libgdal), Void, (OGRGeometryH, Cint, Cdouble, Cdouble, Cdouble), arg1, iPoint, arg2, arg3, arg4)
end


"""
    OGR_G_SetPoint_2D(OGRGeometryH hGeom,
                      int i,
                      double dfX,
                      double dfY) -> void

Set the location of a vertex in a point or linestring geometry.

### Parameters
* **hGeom**: handle to the geometry to add a vertex to.
* **i**: the index of the vertex to assign (zero based) or zero for a point.
* **dfX**: input X coordinate to assign.
* **dfY**: input Y coordinate to assign.
"""
function OGR_G_SetPoint_2D(arg1::OGRGeometryH, iPoint::Cint, arg2::Cdouble, arg3::Cdouble)
    ccall((:OGR_G_SetPoint_2D, libgdal), Void, (OGRGeometryH, Cint, Cdouble, Cdouble), arg1, iPoint, arg2, arg3)
end


"""
    OGR_G_SetPointM(OGRGeometryH hGeom,
                    int i,
                    double dfX,
                    double dfY,
                    double dfM) -> void

Set the location of a vertex in a point or linestring geometry.

### Parameters
* **hGeom**: handle to the geometry to add a vertex to.
* **i**: the index of the vertex to assign (zero based) or zero for a point.
* **dfX**: input X coordinate to assign.
* **dfY**: input Y coordinate to assign.
* **dfM**: input M coordinate to assign.
"""
function OGR_G_SetPointM(arg1::OGRGeometryH, iPoint::Cint, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
    ccall((:OGR_G_SetPointM, libgdal), Void, (OGRGeometryH, Cint, Cdouble, Cdouble, Cdouble), arg1, iPoint, arg2, arg3, arg4)
end


"""
    OGR_G_SetPointZM(OGRGeometryH hGeom,
                     int i,
                     double dfX,
                     double dfY,
                     double dfZ,
                     double dfM) -> void

Set the location of a vertex in a point or linestring geometry.

### Parameters
* **hGeom**: handle to the geometry to add a vertex to.
* **i**: the index of the vertex to assign (zero based) or zero for a point.
* **dfX**: input X coordinate to assign.
* **dfY**: input Y coordinate to assign.
* **dfZ**: input Z coordinate to assign.
* **dfM**: input M coordinate to assign.
"""
function OGR_G_SetPointZM(arg1::OGRGeometryH, iPoint::Cint, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
    ccall((:OGR_G_SetPointZM, libgdal), Void, (OGRGeometryH, Cint, Cdouble, Cdouble, Cdouble, Cdouble), arg1, iPoint, arg2, arg3, arg4, arg5)
end


"""
    OGR_G_AddPoint(OGRGeometryH hGeom,
                   double dfX,
                   double dfY,
                   double dfZ) -> void

Add a point to a geometry (line string or point).

### Parameters
* **hGeom**: handle to the geometry to add a point to.
* **dfX**: x coordinate of point to add.
* **dfY**: y coordinate of point to add.
* **dfZ**: z coordinate of point to add.
"""
function OGR_G_AddPoint(arg1::OGRGeometryH, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
    ccall((:OGR_G_AddPoint, libgdal), Void, (OGRGeometryH, Cdouble, Cdouble, Cdouble), arg1, arg2, arg3, arg4)
end


"""
    OGR_G_AddPoint_2D(OGRGeometryH hGeom,
                      double dfX,
                      double dfY) -> void

Add a point to a geometry (line string or point).

### Parameters
* **hGeom**: handle to the geometry to add a point to.
* **dfX**: x coordinate of point to add.
* **dfY**: y coordinate of point to add.
"""
function OGR_G_AddPoint_2D(arg1::OGRGeometryH, arg2::Cdouble, arg3::Cdouble)
    ccall((:OGR_G_AddPoint_2D, libgdal), Void, (OGRGeometryH, Cdouble, Cdouble), arg1, arg2, arg3)
end


"""
    OGR_G_AddPointM(OGRGeometryH hGeom,
                    double dfX,
                    double dfY,
                    double dfM) -> void

Add a point to a geometry (line string or point).

### Parameters
* **hGeom**: handle to the geometry to add a point to.
* **dfX**: x coordinate of point to add.
* **dfY**: y coordinate of point to add.
* **dfM**: m coordinate of point to add.
"""
function OGR_G_AddPointM(arg1::OGRGeometryH, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble)
    ccall((:OGR_G_AddPointM, libgdal), Void, (OGRGeometryH, Cdouble, Cdouble, Cdouble), arg1, arg2, arg3, arg4)
end


"""
    OGR_G_AddPointZM(OGRGeometryH hGeom,
                     double dfX,
                     double dfY,
                     double dfZ,
                     double dfM) -> void

Add a point to a geometry (line string or point).

### Parameters
* **hGeom**: handle to the geometry to add a point to.
* **dfX**: x coordinate of point to add.
* **dfY**: y coordinate of point to add.
* **dfZ**: z coordinate of point to add.
* **dfM**: m coordinate of point to add.
"""
function OGR_G_AddPointZM(arg1::OGRGeometryH, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
    ccall((:OGR_G_AddPointZM, libgdal), Void, (OGRGeometryH, Cdouble, Cdouble, Cdouble, Cdouble), arg1, arg2, arg3, arg4, arg5)
end


"""
    OGR_G_SetPoints(OGRGeometryH hGeom,
                    int nPointsIn,
                    void * pabyX,
                    int nXStride,
                    void * pabyY,
                    int nYStride,
                    void * pabyZ,
                    int nZStride) -> void

Assign all points in a point or a line string geometry.

### Parameters
* **hGeom**: handle to the geometry to set the coordinates.
* **nPointsIn**: number of points being passed in padfX and padfY.
* **pabyX**: list of X coordinates (double values) of points being assigned.
* **nXStride**: the number of bytes between 2 elements of pabyX.
* **pabyY**: list of Y coordinates (double values) of points being assigned.
* **nYStride**: the number of bytes between 2 elements of pabyY.
* **pabyZ**: list of Z coordinates (double values) of points being assigned (defaults to NULL for 2D objects).
* **nZStride**: the number of bytes between 2 elements of pabyZ.
"""
function OGR_G_SetPoints(hGeom::OGRGeometryH, nPointsIn::Cint, pabyX, nXStride::Cint, pabyY, nYStride::Cint, pabyZ, nZStride::Cint)
    ccall((:OGR_G_SetPoints, libgdal), Void, (OGRGeometryH, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), hGeom, nPointsIn, pabyX, nXStride, pabyY, nYStride, pabyZ, nZStride)
end


"""
    OGR_G_SetPointsZM(OGRGeometryH hGeom,
                      int nPointsIn,
                      void * pabyX,
                      int nXStride,
                      void * pabyY,
                      int nYStride,
                      void * pabyZ,
                      int nZStride,
                      void * pabyM,
                      int nMStride) -> void

Assign all points in a point or a line string geometry.

### Parameters
* **hGeom**: handle to the geometry to set the coordinates.
* **nPointsIn**: number of points being passed in padfX and padfY.
* **pabyX**: list of X coordinates (double values) of points being assigned.
* **nXStride**: the number of bytes between 2 elements of pabyX.
* **pabyY**: list of Y coordinates (double values) of points being assigned.
* **nYStride**: the number of bytes between 2 elements of pabyY.
* **pabyZ**: list of Z coordinates (double values) of points being assigned (if not NULL, upgrades the geometry to have Z coordinate).
* **nZStride**: the number of bytes between 2 elements of pabyZ.
* **pabyM**: list of M coordinates (double values) of points being assigned (if not NULL, upgrades the geometry to have M coordinate).
* **nMStride**: the number of bytes between 2 elements of pabyM.
"""
function OGR_G_SetPointsZM(hGeom::OGRGeometryH, nPointsIn::Cint, pabyX, nXStride::Cint, pabyY, nYStride::Cint, pabyZ, nZStride::Cint, pabyM, nMStride::Cint)
    ccall((:OGR_G_SetPointsZM, libgdal), Void, (OGRGeometryH, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint, Ptr{Void}, Cint), hGeom, nPointsIn, pabyX, nXStride, pabyY, nYStride, pabyZ, nZStride, pabyM, nMStride)
end


"""
    OGR_G_GetGeometryCount(OGRGeometryH hGeom) -> int

Fetch the number of elements in a geometry or number of geometries in container.

### Parameters
* **hGeom**: single geometry or geometry container from which to get the number of elements.

### Returns
the number of elements.
"""
function OGR_G_GetGeometryCount(arg1::OGRGeometryH)
    ccall((:OGR_G_GetGeometryCount, libgdal), Cint, (OGRGeometryH,), arg1)
end


"""
    OGR_G_GetGeometryRef(OGRGeometryH hGeom,
                         int iSubGeom) -> OGRGeometryH

Fetch geometry from a geometry container.

### Parameters
* **hGeom**: handle to the geometry container from which to get a geometry from.
* **iSubGeom**: the index of the geometry to fetch, between 0 and getNumGeometries() - 1.

### Returns
handle to the requested geometry.
"""
function OGR_G_GetGeometryRef(arg1::OGRGeometryH, arg2::Cint)
    ccall((:OGR_G_GetGeometryRef, libgdal), OGRGeometryH, (OGRGeometryH, Cint), arg1, arg2)
end


"""
    OGR_G_AddGeometry(OGRGeometryH hGeom,
                      OGRGeometryH hNewSubGeom) -> OGRErr

Add a geometry to a geometry container.

### Parameters
* **hGeom**: existing geometry container.
* **hNewSubGeom**: geometry to add to the container.

### Returns
OGRERR_NONE if successful, or OGRERR_UNSUPPORTED_GEOMETRY_TYPE if the geometry type is illegal for the type of existing geometry.
"""
function OGR_G_AddGeometry(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_AddGeometry, libgdal), OGRErr, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_AddGeometryDirectly(OGRGeometryH hGeom,
                              OGRGeometryH hNewSubGeom) -> OGRErr

Add a geometry directly to an existing geometry container.

### Parameters
* **hGeom**: existing geometry.
* **hNewSubGeom**: geometry to add to the existing geometry.

### Returns
OGRERR_NONE if successful, or OGRERR_UNSUPPORTED_GEOMETRY_TYPE if the geometry type is illegal for the type of geometry container.
"""
function OGR_G_AddGeometryDirectly(arg1::OGRGeometryH, arg2::OGRGeometryH)
    ccall((:OGR_G_AddGeometryDirectly, libgdal), OGRErr, (OGRGeometryH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_G_RemoveGeometry(OGRGeometryH hGeom,
                         int iGeom,
                         int bDelete) -> OGRErr

Remove a geometry from an exiting geometry container.

### Parameters
* **hGeom**: the existing geometry to delete from.
* **iGeom**: the index of the geometry to delete. A value of -1 is a special flag meaning that all geometries should be removed.
* **bDelete**: if TRUE the geometry will be destroyed, otherwise it will not. The default is TRUE as the existing geometry is considered to own the geometries in it.

### Returns
OGRERR_NONE if successful, or OGRERR_FAILURE if the index is out of range.
"""
function OGR_G_RemoveGeometry(arg1::OGRGeometryH, arg2::Cint, arg3::Cint)
    ccall((:OGR_G_RemoveGeometry, libgdal), OGRErr, (OGRGeometryH, Cint, Cint), arg1, arg2, arg3)
end


"""
    OGR_G_HasCurveGeometry(OGRGeometryH hGeom,
                           int bLookForNonLinear) -> int

Returns if this geometry is or has curve geometry.

### Parameters
* **hGeom**: the geometry to operate on.
* **bLookForNonLinear**: set it to TRUE to check if the geometry is or contains a CIRCULARSTRING.

### Returns
TRUE if this geometry is or has curve geometry.
"""
function OGR_G_HasCurveGeometry(arg1::OGRGeometryH, bLookForNonLinear::Cint)
    ccall((:OGR_G_HasCurveGeometry, libgdal), Cint, (OGRGeometryH, Cint), arg1, bLookForNonLinear)
end


"""
    OGR_G_GetLinearGeometry(OGRGeometryH hGeom,
                            double dfMaxAngleStepSizeDegrees,
                            char ** papszOptions) -> OGRGeometryH

Return, possibly approximate, linear version of this geometry.

### Parameters
* **hGeom**: the geometry to operate on.
* **dfMaxAngleStepSizeDegrees**: the largest step in degrees along the arc, zero to use the default setting.
* **papszOptions**: options as a null-terminated list of strings or NULL. See OGRGeometryFactory::curveToLineString() for valid options.

### Returns
a new geometry.
"""
function OGR_G_GetLinearGeometry(hGeom::OGRGeometryH, dfMaxAngleStepSizeDegrees::Cdouble, papszOptions)
    ccall((:OGR_G_GetLinearGeometry, libgdal), OGRGeometryH, (OGRGeometryH, Cdouble, Ptr{Cstring}), hGeom, dfMaxAngleStepSizeDegrees, papszOptions)
end


"""
    OGR_G_GetCurveGeometry(OGRGeometryH hGeom,
                           char ** papszOptions) -> OGRGeometryH

Return curve version of this geometry.

### Parameters
* **hGeom**: the geometry to operate on.
* **papszOptions**: options as a null-terminated list of strings. Unused for now. Must be set to NULL.

### Returns
a new geometry.
"""
function OGR_G_GetCurveGeometry(hGeom::OGRGeometryH, papszOptions)
    ccall((:OGR_G_GetCurveGeometry, libgdal), OGRGeometryH, (OGRGeometryH, Ptr{Cstring}), hGeom, papszOptions)
end


"""
    OGRBuildPolygonFromEdges(OGRGeometryH hLines,
                             int bBestEffort,
                             int bAutoClose,
                             double dfTolerance,
                             OGRErr * peErr) -> OGRGeometryH

Build a ring from a bunch of arcs.

### Parameters
* **hLines**: handle to an OGRGeometryCollection (or OGRMultiLineString) containing the line string geometries to be built into rings.
* **bBestEffort**: not yet implemented???.
* **bAutoClose**: indicates if the ring should be close when first and last points of the ring are the same.
* **dfTolerance**: tolerance into which two arcs are considered close enough to be joined.
* **peErr**: OGRERR_NONE on success, or OGRERR_FAILURE on failure.

### Returns
an handle to the new geometry, a polygon.
"""
function OGRBuildPolygonFromEdges(hLinesAsCollection::OGRGeometryH, bBestEffort::Cint, bAutoClose::Cint, dfTolerance::Cdouble, peErr)
    ccall((:OGRBuildPolygonFromEdges, libgdal), OGRGeometryH, (OGRGeometryH, Cint, Cint, Cdouble, Ptr{OGRErr}), hLinesAsCollection, bBestEffort, bAutoClose, dfTolerance, peErr)
end


"""
    OGRSetGenerate_DB2_V72_BYTE_ORDER(int bGenerate_DB2_V72_BYTE_ORDER) -> OGRErr

Special entry point to enable the hack for generating DB2 V7.2 style WKB.
"""
function OGRSetGenerate_DB2_V72_BYTE_ORDER(bGenerate_DB2_V72_BYTE_ORDER::Cint)
    ccall((:OGRSetGenerate_DB2_V72_BYTE_ORDER, libgdal), OGRErr, (Cint,), bGenerate_DB2_V72_BYTE_ORDER)
end


"""
    OGRGetGenerate_DB2_V72_BYTE_ORDER() -> int
"""
function OGRGetGenerate_DB2_V72_BYTE_ORDER()
    ccall((:OGRGetGenerate_DB2_V72_BYTE_ORDER, libgdal), Cint, ())
end


"""
    OGRSetNonLinearGeometriesEnabledFlag(int bFlag) -> void

Set flag to enable/disable returning non-linear geometries in the C API.

### Parameters
* **bFlag**: TRUE if non-linear geometries might be returned (default value). FALSE to ask for non-linear geometries to be approximated as linear geometries.

### Returns
a point or NULL.
"""
function OGRSetNonLinearGeometriesEnabledFlag(bFlag::Cint)
    ccall((:OGRSetNonLinearGeometriesEnabledFlag, libgdal), Void, (Cint,), bFlag)
end


"""
    OGRGetNonLinearGeometriesEnabledFlag(void) -> int

Get flag to enable/disable returning non-linear geometries in the C API.
"""
function OGRGetNonLinearGeometriesEnabledFlag()
    ccall((:OGRGetNonLinearGeometriesEnabledFlag, libgdal), Cint, ())
end


"""
    OGR_Fld_Create(const char * pszName,
                   OGRFieldType eType) -> OGRFieldDefnH

Create a new field definition.

### Parameters
* **pszName**: the name of the new field definition.
* **eType**: the type of the new field definition.

### Returns
handle to the new field definition.
"""
function OGR_Fld_Create(arg1, arg2::OGRFieldType)
    ccall((:OGR_Fld_Create, libgdal), OGRFieldDefnH, (Cstring, OGRFieldType), arg1, arg2)
end


"""
    OGR_Fld_Destroy(OGRFieldDefnH hDefn) -> void

Destroy a field definition.

### Parameters
* **hDefn**: handle to the field definition to destroy.
"""
function OGR_Fld_Destroy(arg1::OGRFieldDefnH)
    ccall((:OGR_Fld_Destroy, libgdal), Void, (OGRFieldDefnH,), arg1)
end


"""
    OGR_Fld_SetName(OGRFieldDefnH hDefn,
                    const char * pszName) -> void

Reset the name of this field.

### Parameters
* **hDefn**: handle to the field definition to apply the new name to.
* **pszName**: the new name to apply.
"""
function OGR_Fld_SetName(arg1::OGRFieldDefnH, arg2)
    ccall((:OGR_Fld_SetName, libgdal), Void, (OGRFieldDefnH, Cstring), arg1, arg2)
end


"""
    OGR_Fld_GetNameRef(OGRFieldDefnH hDefn) -> const char *

Fetch name of this field.

### Parameters
* **hDefn**: handle to the field definition.

### Returns
the name of the field definition.
"""
function OGR_Fld_GetNameRef(arg1::OGRFieldDefnH)
    ccall((:OGR_Fld_GetNameRef, libgdal), Cstring, (OGRFieldDefnH,), arg1)
end


"""
    OGR_Fld_GetType(OGRFieldDefnH hDefn) -> OGRFieldType

Fetch type of this field.

### Parameters
* **hDefn**: handle to the field definition to get type from.

### Returns
field type.
"""
function OGR_Fld_GetType(arg1::OGRFieldDefnH)
    ccall((:OGR_Fld_GetType, libgdal), OGRFieldType, (OGRFieldDefnH,), arg1)
end


"""
    OGR_Fld_SetType(OGRFieldDefnH hDefn,
                    OGRFieldType eType) -> void

Set the type of this field.

### Parameters
* **hDefn**: handle to the field definition to set type to.
* **eType**: the new field type.
"""
function OGR_Fld_SetType(arg1::OGRFieldDefnH, arg2::OGRFieldType)
    ccall((:OGR_Fld_SetType, libgdal), Void, (OGRFieldDefnH, OGRFieldType), arg1, arg2)
end


"""
    OGR_Fld_GetSubType(OGRFieldDefnH hDefn) -> OGRFieldSubType

Fetch subtype of this field.

### Parameters
* **hDefn**: handle to the field definition to get subtype from.

### Returns
field subtype.
"""
function OGR_Fld_GetSubType(arg1::OGRFieldDefnH)
    ccall((:OGR_Fld_GetSubType, libgdal), OGRFieldSubType, (OGRFieldDefnH,), arg1)
end


"""
    OGR_Fld_SetSubType(OGRFieldDefnH hDefn,
                       OGRFieldSubType eSubType) -> void

Set the subtype of this field.

### Parameters
* **hDefn**: handle to the field definition to set type to.
* **eSubType**: the new field subtype.
"""
function OGR_Fld_SetSubType(arg1::OGRFieldDefnH, arg2::OGRFieldSubType)
    ccall((:OGR_Fld_SetSubType, libgdal), Void, (OGRFieldDefnH, OGRFieldSubType), arg1, arg2)
end


"""
    OGR_Fld_GetJustify(OGRFieldDefnH hDefn) -> OGRJustification

Get the justification for this field.

### Parameters
* **hDefn**: handle to the field definition to get justification from.

### Returns
the justification.
"""
function OGR_Fld_GetJustify(arg1::OGRFieldDefnH)
    ccall((:OGR_Fld_GetJustify, libgdal), OGRJustification, (OGRFieldDefnH,), arg1)
end


"""
    OGR_Fld_SetJustify(OGRFieldDefnH hDefn,
                       OGRJustification eJustify) -> void

Set the justification for this field.

### Parameters
* **hDefn**: handle to the field definition to set justification to.
* **eJustify**: the new justification.
"""
function OGR_Fld_SetJustify(arg1::OGRFieldDefnH, arg2::OGRJustification)
    ccall((:OGR_Fld_SetJustify, libgdal), Void, (OGRFieldDefnH, OGRJustification), arg1, arg2)
end


"""
    OGR_Fld_GetWidth(OGRFieldDefnH hDefn) -> int

Get the formatting width for this field.

### Parameters
* **hDefn**: handle to the field definition to get width from.

### Returns
the width, zero means no specified width.
"""
function OGR_Fld_GetWidth(arg1::OGRFieldDefnH)
    ccall((:OGR_Fld_GetWidth, libgdal), Cint, (OGRFieldDefnH,), arg1)
end


"""
    OGR_Fld_SetWidth(OGRFieldDefnH hDefn,
                     int nNewWidth) -> void

Set the formatting width for this field in characters.

### Parameters
* **hDefn**: handle to the field definition to set width to.
* **nNewWidth**: the new width.
"""
function OGR_Fld_SetWidth(arg1::OGRFieldDefnH, arg2::Cint)
    ccall((:OGR_Fld_SetWidth, libgdal), Void, (OGRFieldDefnH, Cint), arg1, arg2)
end


"""
    OGR_Fld_GetPrecision(OGRFieldDefnH hDefn) -> int

Get the formatting precision for this field.

### Parameters
* **hDefn**: handle to the field definition to get precision from.

### Returns
the precision.
"""
function OGR_Fld_GetPrecision(arg1::OGRFieldDefnH)
    ccall((:OGR_Fld_GetPrecision, libgdal), Cint, (OGRFieldDefnH,), arg1)
end


"""
    OGR_Fld_SetPrecision(OGRFieldDefnH hDefn,
                         int nPrecision) -> void

Set the formatting precision for this field in characters.

### Parameters
* **hDefn**: handle to the field definition to set precision to.
* **nPrecision**: the new precision.
"""
function OGR_Fld_SetPrecision(arg1::OGRFieldDefnH, arg2::Cint)
    ccall((:OGR_Fld_SetPrecision, libgdal), Void, (OGRFieldDefnH, Cint), arg1, arg2)
end


"""
    OGR_Fld_Set(OGRFieldDefnH hDefn,
                const char * pszNameIn,
                OGRFieldType eTypeIn,
                int nWidthIn,
                int nPrecisionIn,
                OGRJustification eJustifyIn) -> void

Set defining parameters for a field in one call.

### Parameters
* **hDefn**: handle to the field definition to set to.
* **pszNameIn**: the new name to assign.
* **eTypeIn**: the new type (one of the OFT values like OFTInteger).
* **nWidthIn**: the preferred formatting width. Defaults to zero indicating undefined.
* **nPrecisionIn**: number of decimals places for formatting, defaults to zero indicating undefined.
* **eJustifyIn**: the formatting justification (OJLeft or OJRight), defaults to OJUndefined.
"""
function OGR_Fld_Set(arg1::OGRFieldDefnH, arg2, arg3::OGRFieldType, arg4::Cint, arg5::Cint, arg6::OGRJustification)
    ccall((:OGR_Fld_Set, libgdal), Void, (OGRFieldDefnH, Cstring, OGRFieldType, Cint, Cint, OGRJustification), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_Fld_IsIgnored(OGRFieldDefnH hDefn) -> int

Return whether this field should be omitted when fetching features.

### Parameters
* **hDefn**: handle to the field definition

### Returns
ignore state
"""
function OGR_Fld_IsIgnored(hDefn::OGRFieldDefnH)
    ccall((:OGR_Fld_IsIgnored, libgdal), Cint, (OGRFieldDefnH,), hDefn)
end


"""
    OGR_Fld_SetIgnored(OGRFieldDefnH hDefn,
                       int ignore) -> void

Set whether this field should be omitted when fetching features.

### Parameters
* **hDefn**: handle to the field definition
* **ignore**: ignore state
"""
function OGR_Fld_SetIgnored(hDefn::OGRFieldDefnH, arg1::Cint)
    ccall((:OGR_Fld_SetIgnored, libgdal), Void, (OGRFieldDefnH, Cint), hDefn, arg1)
end


"""
    OGR_Fld_IsNullable(OGRFieldDefnH hDefn) -> int

Return whether this field can receive null values.

### Parameters
* **hDefn**: handle to the field definition

### Returns
TRUE if the field is authorized to be null.
"""
function OGR_Fld_IsNullable(hDefn::OGRFieldDefnH)
    ccall((:OGR_Fld_IsNullable, libgdal), Cint, (OGRFieldDefnH,), hDefn)
end


"""
    OGR_Fld_SetNullable(OGRFieldDefnH hDefn,
                        int bNullableIn) -> void

Set whether this field can receive null values.

### Parameters
* **hDefn**: handle to the field definition
* **bNullableIn**: FALSE if the field must have a not-null constraint.
"""
function OGR_Fld_SetNullable(hDefn::OGRFieldDefnH, arg1::Cint)
    ccall((:OGR_Fld_SetNullable, libgdal), Void, (OGRFieldDefnH, Cint), hDefn, arg1)
end


"""
    OGR_Fld_GetDefault(OGRFieldDefnH hDefn) -> const char *

Get default field value.

### Parameters
* **hDefn**: handle to the field definition.

### Returns
default field value or NULL.
"""
function OGR_Fld_GetDefault(hDefn::OGRFieldDefnH)
    ccall((:OGR_Fld_GetDefault, libgdal), Cstring, (OGRFieldDefnH,), hDefn)
end


"""
    OGR_Fld_SetDefault(OGRFieldDefnH hDefn,
                       const char * pszDefault) -> void

Set default field value.

### Parameters
* **hDefn**: handle to the field definition.
* **pszDefault**: new default field value or NULL pointer.
"""
function OGR_Fld_SetDefault(hDefn::OGRFieldDefnH, arg1)
    ccall((:OGR_Fld_SetDefault, libgdal), Void, (OGRFieldDefnH, Cstring), hDefn, arg1)
end


"""
    OGR_Fld_IsDefaultDriverSpecific(OGRFieldDefnH hDefn) -> int

Returns whether the default value is driver specific.

### Parameters
* **hDefn**: handle to the field definition

### Returns
TRUE if the default value is driver specific.
"""
function OGR_Fld_IsDefaultDriverSpecific(hDefn::OGRFieldDefnH)
    ccall((:OGR_Fld_IsDefaultDriverSpecific, libgdal), Cint, (OGRFieldDefnH,), hDefn)
end


"""
    OGR_GetFieldTypeName(OGRFieldType eType) -> const char *

Fetch human readable name for a field type.

### Parameters
* **eType**: the field type to get name for.

### Returns
the name.
"""
function OGR_GetFieldTypeName(arg1::OGRFieldType)
    ccall((:OGR_GetFieldTypeName, libgdal), Cstring, (OGRFieldType,), arg1)
end


"""
    OGR_GetFieldSubTypeName(OGRFieldSubType eSubType) -> const char *

Fetch human readable name for a field subtype.

### Parameters
* **eSubType**: the field subtype to get name for.

### Returns
the name.
"""
function OGR_GetFieldSubTypeName(arg1::OGRFieldSubType)
    ccall((:OGR_GetFieldSubTypeName, libgdal), Cstring, (OGRFieldSubType,), arg1)
end


"""
    OGR_AreTypeSubTypeCompatible(OGRFieldType eType,
                                 OGRFieldSubType eSubType) -> int

Return if type and subtype are compatible.

### Parameters
* **eType**: the field type.
* **eSubType**: the field subtype.

### Returns
TRUE if type and subtype are compatible
"""
function OGR_AreTypeSubTypeCompatible(eType::OGRFieldType, eSubType::OGRFieldSubType)
    ccall((:OGR_AreTypeSubTypeCompatible, libgdal), Cint, (OGRFieldType, OGRFieldSubType), eType, eSubType)
end


"""
    OGR_GFld_Create(const char * pszName,
                    OGRwkbGeometryType eType) -> OGRGeomFieldDefnH

Create a new field geometry definition.

### Parameters
* **pszName**: the name of the new field definition.
* **eType**: the type of the new field definition.

### Returns
handle to the new field definition.
"""
function OGR_GFld_Create(arg1, arg2::OGRwkbGeometryType)
    ccall((:OGR_GFld_Create, libgdal), OGRGeomFieldDefnH, (Cstring, OGRwkbGeometryType), arg1, arg2)
end


"""
    OGR_GFld_Destroy(OGRGeomFieldDefnH hDefn) -> void

Destroy a geometry field definition.

### Parameters
* **hDefn**: handle to the geometry field definition to destroy.
"""
function OGR_GFld_Destroy(arg1::OGRGeomFieldDefnH)
    ccall((:OGR_GFld_Destroy, libgdal), Void, (OGRGeomFieldDefnH,), arg1)
end


"""
    OGR_GFld_SetName(OGRGeomFieldDefnH hDefn,
                     const char * pszName) -> void

Reset the name of this field.

### Parameters
* **hDefn**: handle to the geometry field definition to apply the new name to.
* **pszName**: the new name to apply.
"""
function OGR_GFld_SetName(arg1::OGRGeomFieldDefnH, arg2)
    ccall((:OGR_GFld_SetName, libgdal), Void, (OGRGeomFieldDefnH, Cstring), arg1, arg2)
end


"""
    OGR_GFld_GetNameRef(OGRGeomFieldDefnH hDefn) -> const char *

Fetch name of this field.

### Parameters
* **hDefn**: handle to the geometry field definition.

### Returns
the name of the geometry field definition.
"""
function OGR_GFld_GetNameRef(arg1::OGRGeomFieldDefnH)
    ccall((:OGR_GFld_GetNameRef, libgdal), Cstring, (OGRGeomFieldDefnH,), arg1)
end


"""
    OGR_GFld_GetType(OGRGeomFieldDefnH hDefn) -> OGRwkbGeometryType

Fetch geometry type of this field.

### Parameters
* **hDefn**: handle to the geometry field definition to get type from.

### Returns
field geometry type.
"""
function OGR_GFld_GetType(arg1::OGRGeomFieldDefnH)
    ccall((:OGR_GFld_GetType, libgdal), OGRwkbGeometryType, (OGRGeomFieldDefnH,), arg1)
end


"""
    OGR_GFld_SetType(OGRGeomFieldDefnH hDefn,
                     OGRwkbGeometryType eType) -> void

Set the geometry type of this field.

### Parameters
* **hDefn**: handle to the geometry field definition to set type to.
* **eType**: the new field geometry type.
"""
function OGR_GFld_SetType(arg1::OGRGeomFieldDefnH, arg2::OGRwkbGeometryType)
    ccall((:OGR_GFld_SetType, libgdal), Void, (OGRGeomFieldDefnH, OGRwkbGeometryType), arg1, arg2)
end


"""
    OGR_GFld_GetSpatialRef(OGRGeomFieldDefnH hDefn) -> OGRSpatialReferenceH

Fetch spatial reference system of this field.

### Parameters
* **hDefn**: handle to the geometry field definition

### Returns
field spatial reference system.
"""
function OGR_GFld_GetSpatialRef(arg1::OGRGeomFieldDefnH)
    ccall((:OGR_GFld_GetSpatialRef, libgdal), OGRSpatialReferenceH, (OGRGeomFieldDefnH,), arg1)
end


"""
    OGR_GFld_SetSpatialRef(OGRGeomFieldDefnH hDefn,
                           OGRSpatialReferenceH hSRS) -> void

Set the spatial reference of this field.

### Parameters
* **hDefn**: handle to the geometry field definition
* **hSRS**: the new SRS to apply.
"""
function OGR_GFld_SetSpatialRef(arg1::OGRGeomFieldDefnH, hSRS::OGRSpatialReferenceH)
    ccall((:OGR_GFld_SetSpatialRef, libgdal), Void, (OGRGeomFieldDefnH, OGRSpatialReferenceH), arg1, hSRS)
end


"""
    OGR_GFld_IsNullable(OGRGeomFieldDefnH hDefn) -> int

Return whether this geometry field can receive null values.

### Parameters
* **hDefn**: handle to the field definition

### Returns
TRUE if the field is authorized to be null.
"""
function OGR_GFld_IsNullable(hDefn::OGRGeomFieldDefnH)
    ccall((:OGR_GFld_IsNullable, libgdal), Cint, (OGRGeomFieldDefnH,), hDefn)
end


"""
    OGR_GFld_SetNullable(OGRGeomFieldDefnH hDefn,
                         int bNullableIn) -> void

Set whether this geometry field can receive null values.

### Parameters
* **hDefn**: handle to the field definition
* **bNullableIn**: FALSE if the field must have a not-null constraint.
"""
function OGR_GFld_SetNullable(hDefn::OGRGeomFieldDefnH, arg1::Cint)
    ccall((:OGR_GFld_SetNullable, libgdal), Void, (OGRGeomFieldDefnH, Cint), hDefn, arg1)
end


"""
    OGR_GFld_IsIgnored(OGRGeomFieldDefnH hDefn) -> int

Return whether this field should be omitted when fetching features.

### Parameters
* **hDefn**: handle to the geometry field definition

### Returns
ignore state
"""
function OGR_GFld_IsIgnored(hDefn::OGRGeomFieldDefnH)
    ccall((:OGR_GFld_IsIgnored, libgdal), Cint, (OGRGeomFieldDefnH,), hDefn)
end


"""
    OGR_GFld_SetIgnored(OGRGeomFieldDefnH hDefn,
                        int ignore) -> void

Set whether this field should be omitted when fetching features.

### Parameters
* **hDefn**: handle to the geometry field definition
* **ignore**: ignore state
"""
function OGR_GFld_SetIgnored(hDefn::OGRGeomFieldDefnH, arg1::Cint)
    ccall((:OGR_GFld_SetIgnored, libgdal), Void, (OGRGeomFieldDefnH, Cint), hDefn, arg1)
end


"""
    OGR_FD_Create(const char * pszName) -> OGRFeatureDefnH

Create a new feature definition object to hold the field definitions.

### Parameters
* **pszName**: the name to be assigned to this layer/class. It does not need to be unique.

### Returns
handle to the newly created feature definition.
"""
function OGR_FD_Create(arg1)
    ccall((:OGR_FD_Create, libgdal), OGRFeatureDefnH, (Cstring,), arg1)
end


"""
    OGR_FD_Destroy(OGRFeatureDefnH hDefn) -> void

Destroy a feature definition object and release all memory associated with it.

### Parameters
* **hDefn**: handle to the feature definition to be destroyed.
"""
function OGR_FD_Destroy(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_Destroy, libgdal), Void, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_Release(OGRFeatureDefnH hDefn) -> void

Drop a reference, and destroy if unreferenced.

### Parameters
* **hDefn**: handle to the feature definition to be released.
"""
function OGR_FD_Release(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_Release, libgdal), Void, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_GetName(OGRFeatureDefnH hDefn) -> const char *

Get name of the OGRFeatureDefn passed as an argument.

### Parameters
* **hDefn**: handle to the feature definition to get the name from.

### Returns
the name. This name is internal and should not be modified, or freed.
"""
function OGR_FD_GetName(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_GetName, libgdal), Cstring, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_GetFieldCount(OGRFeatureDefnH hDefn) -> int

Fetch number of fields on the passed feature definition.

### Parameters
* **hDefn**: handle to the feature definition to get the fields count from.

### Returns
count of fields.
"""
function OGR_FD_GetFieldCount(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_GetFieldCount, libgdal), Cint, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_GetFieldDefn(OGRFeatureDefnH hDefn,
                        int iField) -> OGRFieldDefnH

Fetch field definition of the passed feature definition.

### Parameters
* **hDefn**: handle to the feature definition to get the field definition from.
* **iField**: the field to fetch, between 0 and GetFieldCount()-1.

### Returns
an handle to an internal field definition object or NULL if invalid index. This object should not be modified or freed by the application.
"""
function OGR_FD_GetFieldDefn(arg1::OGRFeatureDefnH, arg2::Cint)
    ccall((:OGR_FD_GetFieldDefn, libgdal), OGRFieldDefnH, (OGRFeatureDefnH, Cint), arg1, arg2)
end


"""
    OGR_FD_GetFieldIndex(OGRFeatureDefnH hDefn,
                         const char * pszFieldName) -> int

Find field by name.

### Parameters
* **hDefn**: handle to the feature definition to get field index from.
* **pszFieldName**: the field name to search for.

### Returns
the field index, or -1 if no match found.
"""
function OGR_FD_GetFieldIndex(arg1::OGRFeatureDefnH, arg2)
    ccall((:OGR_FD_GetFieldIndex, libgdal), Cint, (OGRFeatureDefnH, Cstring), arg1, arg2)
end


"""
    OGR_FD_AddFieldDefn(OGRFeatureDefnH hDefn,
                        OGRFieldDefnH hNewField) -> void

Add a new field definition to the passed feature definition.

### Parameters
* **hDefn**: handle to the feature definition to add the field definition to.
* **hNewField**: handle to the new field definition.
"""
function OGR_FD_AddFieldDefn(arg1::OGRFeatureDefnH, arg2::OGRFieldDefnH)
    ccall((:OGR_FD_AddFieldDefn, libgdal), Void, (OGRFeatureDefnH, OGRFieldDefnH), arg1, arg2)
end


"""
    OGR_FD_DeleteFieldDefn(OGRFeatureDefnH hDefn,
                           int iField) -> OGRErr

Delete an existing field definition.

### Parameters
* **hDefn**: handle to the feature definition.
* **iField**: the index of the field definition.

### Returns
OGRERR_NONE in case of success.
"""
function OGR_FD_DeleteFieldDefn(hDefn::OGRFeatureDefnH, iField::Cint)
    ccall((:OGR_FD_DeleteFieldDefn, libgdal), OGRErr, (OGRFeatureDefnH, Cint), hDefn, iField)
end


"""
    OGR_FD_ReorderFieldDefns(OGRFeatureDefnH hDefn,
                             int * panMap) -> OGRErr

Reorder the field definitions in the array of the feature definition.

### Parameters
* **hDefn**: handle to the feature definition.
* **panMap**: an array of GetFieldCount() elements which is a permutation of [0, GetFieldCount()-1]. panMap is such that, for each field definition at position i after reordering, its position before reordering was panMap[i].

### Returns
OGRERR_NONE in case of success.
"""
function OGR_FD_ReorderFieldDefns(hDefn::OGRFeatureDefnH, panMap)
    ccall((:OGR_FD_ReorderFieldDefns, libgdal), OGRErr, (OGRFeatureDefnH, Ptr{Cint}), hDefn, panMap)
end


"""
    OGR_FD_GetGeomType(OGRFeatureDefnH hDefn) -> OGRwkbGeometryType

Fetch the geometry base type of the passed feature definition.

### Parameters
* **hDefn**: handle to the feature definition to get the geometry type from.

### Returns
the base type for all geometry related to this definition.
"""
function OGR_FD_GetGeomType(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_GetGeomType, libgdal), OGRwkbGeometryType, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_SetGeomType(OGRFeatureDefnH hDefn,
                       OGRwkbGeometryType eType) -> void

Assign the base geometry type for the passed layer (the same as the feature definition).

### Parameters
* **hDefn**: handle to the layer or feature definition to set the geometry type to.
* **eType**: the new type to assign.
"""
function OGR_FD_SetGeomType(arg1::OGRFeatureDefnH, arg2::OGRwkbGeometryType)
    ccall((:OGR_FD_SetGeomType, libgdal), Void, (OGRFeatureDefnH, OGRwkbGeometryType), arg1, arg2)
end


"""
    OGR_FD_IsGeometryIgnored(OGRFeatureDefnH hDefn) -> int

Determine whether the geometry can be omitted when fetching features.

### Parameters
* **hDefn**: handle to the feature definition on witch OGRFeature are based on.

### Returns
ignore state
"""
function OGR_FD_IsGeometryIgnored(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_IsGeometryIgnored, libgdal), Cint, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_SetGeometryIgnored(OGRFeatureDefnH hDefn,
                              int bIgnore) -> void

Set whether the geometry can be omitted when fetching features.

### Parameters
* **hDefn**: handle to the feature definition on witch OGRFeature are based on.
* **bIgnore**: ignore state
"""
function OGR_FD_SetGeometryIgnored(arg1::OGRFeatureDefnH, arg2::Cint)
    ccall((:OGR_FD_SetGeometryIgnored, libgdal), Void, (OGRFeatureDefnH, Cint), arg1, arg2)
end


"""
    OGR_FD_IsStyleIgnored(OGRFeatureDefnH hDefn) -> int

Determine whether the style can be omitted when fetching features.

### Parameters
* **hDefn**: handle to the feature definition on which OGRFeature are based on.

### Returns
ignore state
"""
function OGR_FD_IsStyleIgnored(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_IsStyleIgnored, libgdal), Cint, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_SetStyleIgnored(OGRFeatureDefnH hDefn,
                           int bIgnore) -> void

Set whether the style can be omitted when fetching features.

### Parameters
* **hDefn**: handle to the feature definition on witch OGRFeature are based on.
* **bIgnore**: ignore state
"""
function OGR_FD_SetStyleIgnored(arg1::OGRFeatureDefnH, arg2::Cint)
    ccall((:OGR_FD_SetStyleIgnored, libgdal), Void, (OGRFeatureDefnH, Cint), arg1, arg2)
end


"""
    OGR_FD_Reference(OGRFeatureDefnH hDefn) -> int

Increments the reference count by one.

### Parameters
* **hDefn**: handle to the feature definition on witch OGRFeature are based on.

### Returns
the updated reference count.
"""
function OGR_FD_Reference(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_Reference, libgdal), Cint, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_Dereference(OGRFeatureDefnH hDefn) -> int

Decrements the reference count by one.

### Parameters
* **hDefn**: handle to the feature definition on witch OGRFeature are based on.

### Returns
the updated reference count.
"""
function OGR_FD_Dereference(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_Dereference, libgdal), Cint, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_GetReferenceCount(OGRFeatureDefnH hDefn) -> int

Fetch current reference count.

### Parameters
* **hDefn**: handle to the feature definition on witch OGRFeature are based on.

### Returns
the current reference count.
"""
function OGR_FD_GetReferenceCount(arg1::OGRFeatureDefnH)
    ccall((:OGR_FD_GetReferenceCount, libgdal), Cint, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_FD_GetGeomFieldCount(OGRFeatureDefnH hDefn) -> int

Fetch number of geometry fields on the passed feature definition.

### Parameters
* **hDefn**: handle to the feature definition to get the fields count from.

### Returns
count of geometry fields.
"""
function OGR_FD_GetGeomFieldCount(hFDefn::OGRFeatureDefnH)
    ccall((:OGR_FD_GetGeomFieldCount, libgdal), Cint, (OGRFeatureDefnH,), hFDefn)
end


"""
    OGR_FD_GetGeomFieldDefn(OGRFeatureDefnH hDefn,
                            int iGeomField) -> OGRGeomFieldDefnH

Fetch geometry field definition of the passed feature definition.

### Parameters
* **hDefn**: handle to the feature definition to get the field definition from.
* **iGeomField**: the geometry field to fetch, between 0 and GetGeomFieldCount() - 1.

### Returns
an handle to an internal field definition object or NULL if invalid index. This object should not be modified or freed by the application.
"""
function OGR_FD_GetGeomFieldDefn(hFDefn::OGRFeatureDefnH, i::Cint)
    ccall((:OGR_FD_GetGeomFieldDefn, libgdal), OGRGeomFieldDefnH, (OGRFeatureDefnH, Cint), hFDefn, i)
end


"""
    OGR_FD_GetGeomFieldIndex(OGRFeatureDefnH hDefn,
                             const char * pszGeomFieldName) -> int

Find geometry field by name.

### Parameters
* **hDefn**: handle to the feature definition to get field index from.
* **pszGeomFieldName**: the geometry field name to search for.

### Returns
the geometry field index, or -1 if no match found.
"""
function OGR_FD_GetGeomFieldIndex(hFDefn::OGRFeatureDefnH, pszName)
    ccall((:OGR_FD_GetGeomFieldIndex, libgdal), Cint, (OGRFeatureDefnH, Cstring), hFDefn, pszName)
end


"""
    OGR_FD_AddGeomFieldDefn(OGRFeatureDefnH hDefn,
                            OGRGeomFieldDefnH hNewGeomField) -> void

Add a new field definition to the passed feature definition.

### Parameters
* **hDefn**: handle to the feature definition to add the geometry field definition to.
* **hNewGeomField**: handle to the new field definition.
"""
function OGR_FD_AddGeomFieldDefn(hFDefn::OGRFeatureDefnH, hGFldDefn::OGRGeomFieldDefnH)
    ccall((:OGR_FD_AddGeomFieldDefn, libgdal), Void, (OGRFeatureDefnH, OGRGeomFieldDefnH), hFDefn, hGFldDefn)
end


"""
    OGR_FD_DeleteGeomFieldDefn(OGRFeatureDefnH hDefn,
                               int iGeomField) -> OGRErr

Delete an existing geometry field definition.

### Parameters
* **hDefn**: handle to the feature definition.
* **iGeomField**: the index of the geometry field definition.

### Returns
OGRERR_NONE in case of success.
"""
function OGR_FD_DeleteGeomFieldDefn(hFDefn::OGRFeatureDefnH, iGeomField::Cint)
    ccall((:OGR_FD_DeleteGeomFieldDefn, libgdal), OGRErr, (OGRFeatureDefnH, Cint), hFDefn, iGeomField)
end


"""
    OGR_FD_IsSame(OGRFeatureDefnH hFDefn,
                  OGRFeatureDefnH hOtherFDefn) -> int

Test if the feature definition is identical to the other one.

### Parameters
* **hFDefn**: handle to the feature definition on witch OGRFeature are based on.
* **hOtherFDefn**: handle to the other feature definition to compare to.

### Returns
TRUE if the feature definition is identical to the other one.
"""
function OGR_FD_IsSame(hFDefn::OGRFeatureDefnH, hOtherFDefn::OGRFeatureDefnH)
    ccall((:OGR_FD_IsSame, libgdal), Cint, (OGRFeatureDefnH, OGRFeatureDefnH), hFDefn, hOtherFDefn)
end


"""
    OGR_F_Create(OGRFeatureDefnH hDefn) -> OGRFeatureH

Feature factory.

### Parameters
* **hDefn**: handle to the feature class (layer) definition to which the feature will adhere.

### Returns
an handle to the new feature object with null fields and no geometry, or, starting with GDAL 2.1, NULL in case out of memory situation.
"""
function OGR_F_Create(arg1::OGRFeatureDefnH)
    ccall((:OGR_F_Create, libgdal), OGRFeatureH, (OGRFeatureDefnH,), arg1)
end


"""
    OGR_F_Destroy(OGRFeatureH hFeat) -> void

Destroy feature.

### Parameters
* **hFeat**: handle to the feature to destroy.
"""
function OGR_F_Destroy(arg1::OGRFeatureH)
    ccall((:OGR_F_Destroy, libgdal), Void, (OGRFeatureH,), arg1)
end


"""
    OGR_F_GetDefnRef(OGRFeatureH hFeat) -> OGRFeatureDefnH

Fetch feature definition.

### Parameters
* **hFeat**: handle to the feature to get the feature definition from.

### Returns
an handle to the feature definition object on which feature depends.
"""
function OGR_F_GetDefnRef(arg1::OGRFeatureH)
    ccall((:OGR_F_GetDefnRef, libgdal), OGRFeatureDefnH, (OGRFeatureH,), arg1)
end


"""
    OGR_F_SetGeometryDirectly(OGRFeatureH hFeat,
                              OGRGeometryH hGeom) -> OGRErr

Set feature geometry.

### Parameters
* **hFeat**: handle to the feature on which to apply the geometry.
* **hGeom**: handle to the new geometry to apply to feature.

### Returns
OGRERR_NONE if successful, or OGR_UNSUPPORTED_GEOMETRY_TYPE if the geometry type is illegal for the OGRFeatureDefn (checking not yet implemented).
"""
function OGR_F_SetGeometryDirectly(arg1::OGRFeatureH, arg2::OGRGeometryH)
    ccall((:OGR_F_SetGeometryDirectly, libgdal), OGRErr, (OGRFeatureH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_F_SetGeometry(OGRFeatureH hFeat,
                      OGRGeometryH hGeom) -> OGRErr

Set feature geometry.

### Parameters
* **hFeat**: handle to the feature on which new geometry is applied to.
* **hGeom**: handle to the new geometry to apply to feature.

### Returns
OGRERR_NONE if successful, or OGR_UNSUPPORTED_GEOMETRY_TYPE if the geometry type is illegal for the OGRFeatureDefn (checking not yet implemented).
"""
function OGR_F_SetGeometry(arg1::OGRFeatureH, arg2::OGRGeometryH)
    ccall((:OGR_F_SetGeometry, libgdal), OGRErr, (OGRFeatureH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_F_GetGeometryRef(OGRFeatureH hFeat) -> OGRGeometryH

Fetch an handle to feature geometry.

### Parameters
* **hFeat**: handle to the feature to get geometry from.

### Returns
an handle to internal feature geometry. This object should not be modified.
"""
function OGR_F_GetGeometryRef(arg1::OGRFeatureH)
    ccall((:OGR_F_GetGeometryRef, libgdal), OGRGeometryH, (OGRFeatureH,), arg1)
end


"""
    OGR_F_StealGeometry(OGRFeatureH hFeat) -> OGRGeometryH

Take away ownership of geometry.

### Returns
the pointer to the geometry.
"""
function OGR_F_StealGeometry(arg1::OGRFeatureH)
    ccall((:OGR_F_StealGeometry, libgdal), OGRGeometryH, (OGRFeatureH,), arg1)
end


"""
    OGR_F_Clone(OGRFeatureH hFeat) -> OGRFeatureH

Duplicate feature.

### Parameters
* **hFeat**: handle to the feature to clone.

### Returns
an handle to the new feature, exactly matching this feature.
"""
function OGR_F_Clone(arg1::OGRFeatureH)
    ccall((:OGR_F_Clone, libgdal), OGRFeatureH, (OGRFeatureH,), arg1)
end


"""
    OGR_F_Equal(OGRFeatureH hFeat,
                OGRFeatureH hOtherFeat) -> int

Test if two features are the same.

### Parameters
* **hFeat**: handle to one of the feature.
* **hOtherFeat**: handle to the other feature to test this one against.

### Returns
TRUE if they are equal, otherwise FALSE.
"""
function OGR_F_Equal(arg1::OGRFeatureH, arg2::OGRFeatureH)
    ccall((:OGR_F_Equal, libgdal), Cint, (OGRFeatureH, OGRFeatureH), arg1, arg2)
end


"""
    OGR_F_GetFieldCount(OGRFeatureH hFeat) -> int

Fetch number of fields on this feature This will always be the same as the field count for the OGRFeatureDefn.

### Parameters
* **hFeat**: handle to the feature to get the fields count from.

### Returns
count of fields.
"""
function OGR_F_GetFieldCount(arg1::OGRFeatureH)
    ccall((:OGR_F_GetFieldCount, libgdal), Cint, (OGRFeatureH,), arg1)
end


"""
    OGR_F_GetFieldDefnRef(OGRFeatureH hFeat,
                          int i) -> OGRFieldDefnH

Fetch definition for this field.

### Parameters
* **hFeat**: handle to the feature on which the field is found.
* **i**: the field to fetch, from 0 to GetFieldCount()-1.

### Returns
an handle to the field definition (from the OGRFeatureDefn). This is an internal reference, and should not be deleted or modified.
"""
function OGR_F_GetFieldDefnRef(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_GetFieldDefnRef, libgdal), OGRFieldDefnH, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_GetFieldIndex(OGRFeatureH hFeat,
                        const char * pszName) -> int

Fetch the field index given field name.

### Parameters
* **hFeat**: handle to the feature on which the field is found.
* **pszName**: the name of the field to search for.

### Returns
the field index, or -1 if no matching field is found.
"""
function OGR_F_GetFieldIndex(arg1::OGRFeatureH, arg2)
    ccall((:OGR_F_GetFieldIndex, libgdal), Cint, (OGRFeatureH, Cstring), arg1, arg2)
end


"""
    OGR_F_IsFieldSet(OGRFeatureH hFeat,
                     int iField) -> int

Test if a field has ever been assigned a value or not.

### Parameters
* **hFeat**: handle to the feature on which the field is.
* **iField**: the field to test.

### Returns
TRUE if the field has been set, otherwise false.
"""
function OGR_F_IsFieldSet(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_IsFieldSet, libgdal), Cint, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_UnsetField(OGRFeatureH hFeat,
                     int iField) -> void

Clear a field, marking it as unset.

### Parameters
* **hFeat**: handle to the feature on which the field is.
* **iField**: the field to unset.
"""
function OGR_F_UnsetField(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_UnsetField, libgdal), Void, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_IsFieldNull(OGRFeatureH hFeat,
                      int iField) -> int

Test if a field is null.

### Parameters
* **hFeat**: handle to the feature on which the field is.
* **iField**: the field to test.

### Returns
TRUE if the field is null, otherwise false.
"""
function OGR_F_IsFieldNull(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_IsFieldNull, libgdal), Cint, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_IsFieldSetAndNotNull(OGRFeatureH hFeat,
                               int iField) -> int

Test if a field is set and not null.

### Parameters
* **hFeat**: handle to the feature on which the field is.
* **iField**: the field to test.

### Returns
TRUE if the field is set and not null, otherwise false.
"""
function OGR_F_IsFieldSetAndNotNull(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_IsFieldSetAndNotNull, libgdal), Cint, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_SetFieldNull(OGRFeatureH hFeat,
                       int iField) -> void

Clear a field, marking it as null.

### Parameters
* **hFeat**: handle to the feature on which the field is.
* **iField**: the field to set to null.
"""
function OGR_F_SetFieldNull(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_SetFieldNull, libgdal), Void, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_GetRawFieldRef(OGRFeatureH hFeat,
                         int iField) -> OGRField *

Fetch an handle to the internal field value given the index.

### Parameters
* **hFeat**: handle to the feature on which field is found.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.

### Returns
the returned handle is to an internal data structure, and should not be freed, or modified.
"""
function OGR_F_GetRawFieldRef(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_GetRawFieldRef, libgdal), Ptr{OGRField}, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_RawField_IsUnset(const OGRField * puField) -> int

Returns whether a raw field is unset.

### Parameters
* **puField**: pointer to raw field.
"""
function OGR_RawField_IsUnset(arg1)
    ccall((:OGR_RawField_IsUnset, libgdal), Cint, (Ptr{OGRField},), arg1)
end


"""
    OGR_RawField_IsNull(const OGRField * puField) -> int

Returns whether a raw field is null.

### Parameters
* **puField**: pointer to raw field.
"""
function OGR_RawField_IsNull(arg1)
    ccall((:OGR_RawField_IsNull, libgdal), Cint, (Ptr{OGRField},), arg1)
end


"""
    OGR_RawField_SetUnset(OGRField * puField) -> void

Mark a raw field as unset.

### Parameters
* **puField**: pointer to raw field.
"""
function OGR_RawField_SetUnset(arg1)
    ccall((:OGR_RawField_SetUnset, libgdal), Void, (Ptr{OGRField},), arg1)
end


"""
    OGR_RawField_SetNull(OGRField * puField) -> void

Mark a raw field as null.

### Parameters
* **puField**: pointer to raw field.
"""
function OGR_RawField_SetNull(arg1)
    ccall((:OGR_RawField_SetNull, libgdal), Void, (Ptr{OGRField},), arg1)
end


"""
    OGR_F_GetFieldAsInteger(OGRFeatureH hFeat,
                            int iField) -> int

Fetch field value as integer.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.

### Returns
the field value.
"""
function OGR_F_GetFieldAsInteger(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_GetFieldAsInteger, libgdal), Cint, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_GetFieldAsInteger64(OGRFeatureH hFeat,
                              int iField) -> GIntBig

Fetch field value as integer 64 bit.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.

### Returns
the field value.
"""
function OGR_F_GetFieldAsInteger64(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_GetFieldAsInteger64, libgdal), GIntBig, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_GetFieldAsDouble(OGRFeatureH hFeat,
                           int iField) -> double

Fetch field value as a double.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.

### Returns
the field value.
"""
function OGR_F_GetFieldAsDouble(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_GetFieldAsDouble, libgdal), Cdouble, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_GetFieldAsString(OGRFeatureH hFeat,
                           int iField) -> const char *

Fetch field value as a string.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.

### Returns
the field value. This string is internal, and should not be modified, or freed. Its lifetime may be very brief.
"""
function OGR_F_GetFieldAsString(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_GetFieldAsString, libgdal), Cstring, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_GetFieldAsIntegerList(OGRFeatureH hFeat,
                                int iField,
                                int * pnCount) -> const int *

Fetch field value as a list of integers.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **pnCount**: an integer to put the list count (number of integers) into.

### Returns
the field value. This list is internal, and should not be modified, or freed. Its lifetime may be very brief. If *pnCount is zero on return the returned pointer may be NULL or non-NULL.
"""
function OGR_F_GetFieldAsIntegerList(arg1::OGRFeatureH, arg2::Cint, arg3)
    ccall((:OGR_F_GetFieldAsIntegerList, libgdal), Ptr{Cint}, (OGRFeatureH, Cint, Ptr{Cint}), arg1, arg2, arg3)
end


"""
    OGR_F_GetFieldAsInteger64List(OGRFeatureH hFeat,
                                  int iField,
                                  int * pnCount) -> const GIntBig *

Fetch field value as a list of 64 bit integers.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **pnCount**: an integer to put the list count (number of integers) into.

### Returns
the field value. This list is internal, and should not be modified, or freed. Its lifetime may be very brief. If *pnCount is zero on return the returned pointer may be NULL or non-NULL.
"""
function OGR_F_GetFieldAsInteger64List(arg1::OGRFeatureH, arg2::Cint, arg3)
    ccall((:OGR_F_GetFieldAsInteger64List, libgdal), Ptr{GIntBig}, (OGRFeatureH, Cint, Ptr{Cint}), arg1, arg2, arg3)
end


"""
    OGR_F_GetFieldAsDoubleList(OGRFeatureH hFeat,
                               int iField,
                               int * pnCount) -> const double *

Fetch field value as a list of doubles.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **pnCount**: an integer to put the list count (number of doubles) into.

### Returns
the field value. This list is internal, and should not be modified, or freed. Its lifetime may be very brief. If *pnCount is zero on return the returned pointer may be NULL or non-NULL.
"""
function OGR_F_GetFieldAsDoubleList(arg1::OGRFeatureH, arg2::Cint, arg3)
    ccall((:OGR_F_GetFieldAsDoubleList, libgdal), Ptr{Cdouble}, (OGRFeatureH, Cint, Ptr{Cint}), arg1, arg2, arg3)
end


"""
    OGR_F_GetFieldAsStringList(OGRFeatureH hFeat,
                               int iField) -> char **

Fetch field value as a list of strings.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.

### Returns
the field value. This list is internal, and should not be modified, or freed. Its lifetime may be very brief.
"""
function OGR_F_GetFieldAsStringList(arg1::OGRFeatureH, arg2::Cint)
    ccall((:OGR_F_GetFieldAsStringList, libgdal), Ptr{Cstring}, (OGRFeatureH, Cint), arg1, arg2)
end


"""
    OGR_F_GetFieldAsBinary(OGRFeatureH hFeat,
                           int iField,
                           int * pnBytes) -> GByte *

Fetch field value as binary.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **pnBytes**: location to place count of bytes returned.

### Returns
the field value. This list is internal, and should not be modified, or freed. Its lifetime may be very brief.
"""
function OGR_F_GetFieldAsBinary(arg1::OGRFeatureH, arg2::Cint, arg3)
    ccall((:OGR_F_GetFieldAsBinary, libgdal), Ptr{GByte}, (OGRFeatureH, Cint, Ptr{Cint}), arg1, arg2, arg3)
end


"""
    OGR_F_GetFieldAsDateTime(OGRFeatureH hFeat,
                             int iField,
                             int * pnYear,
                             int * pnMonth,
                             int * pnDay,
                             int * pnHour,
                             int * pnMinute,
                             int * pnSecond,
                             int * pnTZFlag) -> int

Fetch field value as date and time.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **pnYear**: (including century)
* **pnMonth**: (1-12)
* **pnDay**: (1-31)
* **pnHour**: (0-23)
* **pnMinute**: (0-59)
* **pnSecond**: (0-59)
* **pnTZFlag**: (0=unknown, 1=localtime, 100=GMT, see data model for details)

### Returns
TRUE on success or FALSE on failure.
"""
function OGR_F_GetFieldAsDateTime(arg1::OGRFeatureH, arg2::Cint, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    ccall((:OGR_F_GetFieldAsDateTime, libgdal), Cint, (OGRFeatureH, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end


"""
    OGR_F_GetFieldAsDateTimeEx(OGRFeatureH hFeat,
                               int iField,
                               int * pnYear,
                               int * pnMonth,
                               int * pnDay,
                               int * pnHour,
                               int * pnMinute,
                               float * pfSecond,
                               int * pnTZFlag) -> int

Fetch field value as date and time.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **pnYear**: (including century)
* **pnMonth**: (1-12)
* **pnDay**: (1-31)
* **pnHour**: (0-23)
* **pnMinute**: (0-59)
* **pfSecond**: (0-59 with millisecond accuracy)
* **pnTZFlag**: (0=unknown, 1=localtime, 100=GMT, see data model for details)

### Returns
TRUE on success or FALSE on failure.
"""
function OGR_F_GetFieldAsDateTimeEx(hFeat::OGRFeatureH, iField::Cint, pnYear, pnMonth, pnDay, pnHour, pnMinute, pfSecond, pnTZFlag)
    ccall((:OGR_F_GetFieldAsDateTimeEx, libgdal), Cint, (OGRFeatureH, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cfloat}, Ptr{Cint}), hFeat, iField, pnYear, pnMonth, pnDay, pnHour, pnMinute, pfSecond, pnTZFlag)
end


"""
    OGR_F_SetFieldInteger(OGRFeatureH hFeat,
                          int iField,
                          int nValue) -> void

Set field to integer value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **nValue**: the value to assign.
"""
function OGR_F_SetFieldInteger(arg1::OGRFeatureH, arg2::Cint, arg3::Cint)
    ccall((:OGR_F_SetFieldInteger, libgdal), Void, (OGRFeatureH, Cint, Cint), arg1, arg2, arg3)
end


"""
    OGR_F_SetFieldInteger64(OGRFeatureH hFeat,
                            int iField,
                            GIntBig nValue) -> void

Set field to 64 bit integer value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **nValue**: the value to assign.
"""
function OGR_F_SetFieldInteger64(arg1::OGRFeatureH, arg2::Cint, arg3::GIntBig)
    ccall((:OGR_F_SetFieldInteger64, libgdal), Void, (OGRFeatureH, Cint, GIntBig), arg1, arg2, arg3)
end


"""
    OGR_F_SetFieldDouble(OGRFeatureH hFeat,
                         int iField,
                         double dfValue) -> void

Set field to double value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **dfValue**: the value to assign.
"""
function OGR_F_SetFieldDouble(arg1::OGRFeatureH, arg2::Cint, arg3::Cdouble)
    ccall((:OGR_F_SetFieldDouble, libgdal), Void, (OGRFeatureH, Cint, Cdouble), arg1, arg2, arg3)
end


"""
    OGR_F_SetFieldString(OGRFeatureH hFeat,
                         int iField,
                         const char * pszValue) -> void

Set field to string value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **pszValue**: the value to assign.
"""
function OGR_F_SetFieldString(arg1::OGRFeatureH, arg2::Cint, arg3)
    ccall((:OGR_F_SetFieldString, libgdal), Void, (OGRFeatureH, Cint, Cstring), arg1, arg2, arg3)
end


"""
    OGR_F_SetFieldIntegerList(OGRFeatureH hFeat,
                              int iField,
                              int nCount,
                              int * panValues) -> void

Set field to list of integers value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to set, from 0 to GetFieldCount()-1.
* **nCount**: the number of values in the list being assigned.
* **panValues**: the values to assign.
"""
function OGR_F_SetFieldIntegerList(arg1::OGRFeatureH, arg2::Cint, arg3::Cint, arg4)
    ccall((:OGR_F_SetFieldIntegerList, libgdal), Void, (OGRFeatureH, Cint, Cint, Ptr{Cint}), arg1, arg2, arg3, arg4)
end


"""
    OGR_F_SetFieldInteger64List(OGRFeatureH hFeat,
                                int iField,
                                int nCount,
                                const GIntBig * panValues) -> void

Set field to list of 64 bit integers value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to set, from 0 to GetFieldCount()-1.
* **nCount**: the number of values in the list being assigned.
* **panValues**: the values to assign.
"""
function OGR_F_SetFieldInteger64List(arg1::OGRFeatureH, arg2::Cint, arg3::Cint, arg4)
    ccall((:OGR_F_SetFieldInteger64List, libgdal), Void, (OGRFeatureH, Cint, Cint, Ptr{GIntBig}), arg1, arg2, arg3, arg4)
end


"""
    OGR_F_SetFieldDoubleList(OGRFeatureH hFeat,
                             int iField,
                             int nCount,
                             double * padfValues) -> void

Set field to list of doubles value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to set, from 0 to GetFieldCount()-1.
* **nCount**: the number of values in the list being assigned.
* **padfValues**: the values to assign.
"""
function OGR_F_SetFieldDoubleList(arg1::OGRFeatureH, arg2::Cint, arg3::Cint, arg4)
    ccall((:OGR_F_SetFieldDoubleList, libgdal), Void, (OGRFeatureH, Cint, Cint, Ptr{Cdouble}), arg1, arg2, arg3, arg4)
end


"""
    OGR_F_SetFieldStringList(OGRFeatureH hFeat,
                             int iField,
                             char ** papszValues) -> void

Set field to list of strings value.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to set, from 0 to GetFieldCount()-1.
* **papszValues**: the values to assign.
"""
function OGR_F_SetFieldStringList(arg1::OGRFeatureH, arg2::Cint, arg3)
    ccall((:OGR_F_SetFieldStringList, libgdal), Void, (OGRFeatureH, Cint, Ptr{Cstring}), arg1, arg2, arg3)
end


"""
    OGR_F_SetFieldRaw(OGRFeatureH hFeat,
                      int iField,
                      OGRField * psValue) -> void

Set field.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to fetch, from 0 to GetFieldCount()-1.
* **psValue**: handle on the value to assign.
"""
function OGR_F_SetFieldRaw(arg1::OGRFeatureH, arg2::Cint, arg3)
    ccall((:OGR_F_SetFieldRaw, libgdal), Void, (OGRFeatureH, Cint, Ptr{OGRField}), arg1, arg2, arg3)
end


"""
    OGR_F_SetFieldBinary(OGRFeatureH hFeat,
                         int iField,
                         int nBytes,
                         GByte * pabyData) -> void

Set field to binary data.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to set, from 0 to GetFieldCount()-1.
* **nBytes**: the number of bytes in pabyData array.
* **pabyData**: the data to apply.
"""
function OGR_F_SetFieldBinary(arg1::OGRFeatureH, arg2::Cint, arg3::Cint, arg4)
    ccall((:OGR_F_SetFieldBinary, libgdal), Void, (OGRFeatureH, Cint, Cint, Ptr{GByte}), arg1, arg2, arg3, arg4)
end


"""
    OGR_F_SetFieldDateTime(OGRFeatureH hFeat,
                           int iField,
                           int nYear,
                           int nMonth,
                           int nDay,
                           int nHour,
                           int nMinute,
                           int nSecond,
                           int nTZFlag) -> void

Set field to datetime.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to set, from 0 to GetFieldCount()-1.
* **nYear**: (including century)
* **nMonth**: (1-12)
* **nDay**: (1-31)
* **nHour**: (0-23)
* **nMinute**: (0-59)
* **nSecond**: (0-59)
* **nTZFlag**: (0=unknown, 1=localtime, 100=GMT, see data model for details)
"""
function OGR_F_SetFieldDateTime(arg1::OGRFeatureH, arg2::Cint, arg3::Cint, arg4::Cint, arg5::Cint, arg6::Cint, arg7::Cint, arg8::Cint, arg9::Cint)
    ccall((:OGR_F_SetFieldDateTime, libgdal), Void, (OGRFeatureH, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end


"""
    OGR_F_SetFieldDateTimeEx(OGRFeatureH hFeat,
                             int iField,
                             int nYear,
                             int nMonth,
                             int nDay,
                             int nHour,
                             int nMinute,
                             float fSecond,
                             int nTZFlag) -> void

Set field to datetime.

### Parameters
* **hFeat**: handle to the feature that owned the field.
* **iField**: the field to set, from 0 to GetFieldCount()-1.
* **nYear**: (including century)
* **nMonth**: (1-12)
* **nDay**: (1-31)
* **nHour**: (0-23)
* **nMinute**: (0-59)
* **fSecond**: (0-59, with millisecond accuracy)
* **nTZFlag**: (0=unknown, 1=localtime, 100=GMT, see data model for details)
"""
function OGR_F_SetFieldDateTimeEx(arg1::OGRFeatureH, arg2::Cint, arg3::Cint, arg4::Cint, arg5::Cint, arg6::Cint, arg7::Cint, arg8::Cfloat, arg9::Cint)
    ccall((:OGR_F_SetFieldDateTimeEx, libgdal), Void, (OGRFeatureH, Cint, Cint, Cint, Cint, Cint, Cint, Cfloat, Cint), arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end


"""
    OGR_F_GetGeomFieldCount(OGRFeatureH hFeat) -> int

Fetch number of geometry fields on this feature This will always be the same as the geometry field count for the OGRFeatureDefn.

### Parameters
* **hFeat**: handle to the feature to get the geometry fields count from.

### Returns
count of geometry fields.
"""
function OGR_F_GetGeomFieldCount(hFeat::OGRFeatureH)
    ccall((:OGR_F_GetGeomFieldCount, libgdal), Cint, (OGRFeatureH,), hFeat)
end


"""
    OGR_F_GetGeomFieldDefnRef(OGRFeatureH hFeat,
                              int i) -> OGRGeomFieldDefnH

Fetch definition for this geometry field.

### Parameters
* **hFeat**: handle to the feature on which the field is found.
* **i**: the field to fetch, from 0 to GetGeomFieldCount()-1.

### Returns
an handle to the field definition (from the OGRFeatureDefn). This is an internal reference, and should not be deleted or modified.
"""
function OGR_F_GetGeomFieldDefnRef(hFeat::OGRFeatureH, iField::Cint)
    ccall((:OGR_F_GetGeomFieldDefnRef, libgdal), OGRGeomFieldDefnH, (OGRFeatureH, Cint), hFeat, iField)
end


"""
    OGR_F_GetGeomFieldIndex(OGRFeatureH hFeat,
                            const char * pszName) -> int

Fetch the geometry field index given geometry field name.

### Parameters
* **hFeat**: handle to the feature on which the geometry field is found.
* **pszName**: the name of the geometry field to search for.

### Returns
the geometry field index, or -1 if no matching geometry field is found.
"""
function OGR_F_GetGeomFieldIndex(hFeat::OGRFeatureH, pszName)
    ccall((:OGR_F_GetGeomFieldIndex, libgdal), Cint, (OGRFeatureH, Cstring), hFeat, pszName)
end


"""
    OGR_F_GetGeomFieldRef(OGRFeatureH hFeat,
                          int iField) -> OGRGeometryH

Fetch an handle to feature geometry.

### Parameters
* **hFeat**: handle to the feature to get geometry from.
* **iField**: geometry field to get.

### Returns
an handle to internal feature geometry. This object should not be modified.
"""
function OGR_F_GetGeomFieldRef(hFeat::OGRFeatureH, iField::Cint)
    ccall((:OGR_F_GetGeomFieldRef, libgdal), OGRGeometryH, (OGRFeatureH, Cint), hFeat, iField)
end


"""
    OGR_F_SetGeomFieldDirectly(OGRFeatureH hFeat,
                               int iField,
                               OGRGeometryH hGeom) -> OGRErr

Set feature geometry of a specified geometry field.

### Parameters
* **hFeat**: handle to the feature on which to apply the geometry.
* **iField**: geometry field to set.
* **hGeom**: handle to the new geometry to apply to feature.

### Returns
OGRERR_NONE if successful, or OGRERR_FAILURE if the index is invalid, or OGR_UNSUPPORTED_GEOMETRY_TYPE if the geometry type is illegal for the OGRFeatureDefn (checking not yet implemented).
"""
function OGR_F_SetGeomFieldDirectly(hFeat::OGRFeatureH, iField::Cint, hGeom::OGRGeometryH)
    ccall((:OGR_F_SetGeomFieldDirectly, libgdal), OGRErr, (OGRFeatureH, Cint, OGRGeometryH), hFeat, iField, hGeom)
end


"""
    OGR_F_SetGeomField(OGRFeatureH hFeat,
                       int iField,
                       OGRGeometryH hGeom) -> OGRErr

Set feature geometry of a specified geometry field.

### Parameters
* **hFeat**: handle to the feature on which new geometry is applied to.
* **iField**: geometry field to set.
* **hGeom**: handle to the new geometry to apply to feature.

### Returns
OGRERR_NONE if successful, or OGR_UNSUPPORTED_GEOMETRY_TYPE if the geometry type is illegal for the OGRFeatureDefn (checking not yet implemented).
"""
function OGR_F_SetGeomField(hFeat::OGRFeatureH, iField::Cint, hGeom::OGRGeometryH)
    ccall((:OGR_F_SetGeomField, libgdal), OGRErr, (OGRFeatureH, Cint, OGRGeometryH), hFeat, iField, hGeom)
end


"""
    OGR_F_GetFID(OGRFeatureH hFeat) -> GIntBig

Get feature identifier.

### Parameters
* **hFeat**: handle to the feature from which to get the feature identifier.

### Returns
feature id or OGRNullFID if none has been assigned.
"""
function OGR_F_GetFID(arg1::OGRFeatureH)
    ccall((:OGR_F_GetFID, libgdal), GIntBig, (OGRFeatureH,), arg1)
end


"""
    OGR_F_SetFID(OGRFeatureH hFeat,
                 GIntBig nFID) -> OGRErr

Set the feature identifier.

### Parameters
* **hFeat**: handle to the feature to set the feature id to.
* **nFID**: the new feature identifier value to assign.

### Returns
On success OGRERR_NONE, or on failure some other value.
"""
function OGR_F_SetFID(arg1::OGRFeatureH, arg2::GIntBig)
    ccall((:OGR_F_SetFID, libgdal), OGRErr, (OGRFeatureH, GIntBig), arg1, arg2)
end


"""
    OGR_F_DumpReadable(OGRFeatureH hFeat,
                       FILE * fpOut) -> void

Dump this feature in a human readable form.

### Parameters
* **hFeat**: handle to the feature to dump.
* **fpOut**: the stream to write to, such as strout.
"""
function OGR_F_DumpReadable(arg1::OGRFeatureH, arg2)
    ccall((:OGR_F_DumpReadable, libgdal), Void, (OGRFeatureH, Ptr{FILE}), arg1, arg2)
end


"""
    OGR_F_SetFrom(OGRFeatureH hFeat,
                  OGRFeatureH hOtherFeat,
                  int bForgiving) -> OGRErr

Set one feature from another.

### Parameters
* **hFeat**: handle to the feature to set to.
* **hOtherFeat**: handle to the feature from which geometry, and field values will be copied.
* **bForgiving**: TRUE if the operation should continue despite lacking output fields matching some of the source fields.

### Returns
OGRERR_NONE if the operation succeeds, even if some values are not transferred, otherwise an error code.
"""
function OGR_F_SetFrom(arg1::OGRFeatureH, arg2::OGRFeatureH, arg3::Cint)
    ccall((:OGR_F_SetFrom, libgdal), OGRErr, (OGRFeatureH, OGRFeatureH, Cint), arg1, arg2, arg3)
end


"""
    OGR_F_SetFromWithMap(OGRFeatureH hFeat,
                         OGRFeatureH hOtherFeat,
                         int bForgiving,
                         int * panMap) -> OGRErr

Set one feature from another.

### Parameters
* **hFeat**: handle to the feature to set to.
* **hOtherFeat**: handle to the feature from which geometry, and field values will be copied.
* **panMap**: Array of the indices of the destination feature's fields stored at the corresponding index of the source feature's fields. A value of -1 should be used to ignore the source's field. The array should not be NULL and be as long as the number of fields in the source feature.
* **bForgiving**: TRUE if the operation should continue despite lacking output fields matching some of the source fields.

### Returns
OGRERR_NONE if the operation succeeds, even if some values are not transferred, otherwise an error code.
"""
function OGR_F_SetFromWithMap(arg1::OGRFeatureH, arg2::OGRFeatureH, arg3::Cint, arg4)
    ccall((:OGR_F_SetFromWithMap, libgdal), OGRErr, (OGRFeatureH, OGRFeatureH, Cint, Ptr{Cint}), arg1, arg2, arg3, arg4)
end


"""
    OGR_F_GetStyleString(OGRFeatureH hFeat) -> const char *

Fetch style string for this feature.

### Parameters
* **hFeat**: handle to the feature to get the style from.

### Returns
a reference to a representation in string format, or NULL if there isn't one.
"""
function OGR_F_GetStyleString(arg1::OGRFeatureH)
    ccall((:OGR_F_GetStyleString, libgdal), Cstring, (OGRFeatureH,), arg1)
end


"""
    OGR_F_SetStyleString(OGRFeatureH hFeat,
                         const char * pszStyle) -> void

Set feature style string.

### Parameters
* **hFeat**: handle to the feature to set style to.
* **pszStyle**: the style string to apply to this feature, cannot be NULL.
"""
function OGR_F_SetStyleString(arg1::OGRFeatureH, arg2)
    ccall((:OGR_F_SetStyleString, libgdal), Void, (OGRFeatureH, Cstring), arg1, arg2)
end


"""
    OGR_F_SetStyleStringDirectly(OGRFeatureH hFeat,
                                 char * pszStyle) -> void

Set feature style string.

### Parameters
* **hFeat**: handle to the feature to set style to.
* **pszStyle**: the style string to apply to this feature, cannot be NULL.
"""
function OGR_F_SetStyleStringDirectly(arg1::OGRFeatureH, arg2)
    ccall((:OGR_F_SetStyleStringDirectly, libgdal), Void, (OGRFeatureH, Cstring), arg1, arg2)
end


"""
    OGR_F_GetStyleTable(OGRFeatureH hFeat) -> OGRStyleTableH

Return style table.
"""
function OGR_F_GetStyleTable(arg1::OGRFeatureH)
    ccall((:OGR_F_GetStyleTable, libgdal), OGRStyleTableH, (OGRFeatureH,), arg1)
end


"""
    OGR_F_SetStyleTableDirectly(OGRFeatureH hFeat,
                                OGRStyleTableH hStyleTable) -> void

Set style table and take ownership.
"""
function OGR_F_SetStyleTableDirectly(arg1::OGRFeatureH, arg2::OGRStyleTableH)
    ccall((:OGR_F_SetStyleTableDirectly, libgdal), Void, (OGRFeatureH, OGRStyleTableH), arg1, arg2)
end


"""
    OGR_F_SetStyleTable(OGRFeatureH hFeat,
                        OGRStyleTableH hStyleTable) -> void

Set style table.
"""
function OGR_F_SetStyleTable(arg1::OGRFeatureH, arg2::OGRStyleTableH)
    ccall((:OGR_F_SetStyleTable, libgdal), Void, (OGRFeatureH, OGRStyleTableH), arg1, arg2)
end


"""
    OGR_F_GetNativeData(OGRFeatureH hFeat) -> const char *

Returns the native data for the feature.

### Parameters
* **hFeat**: handle to the feature.

### Returns
a string with the native data, or NULL if there is none.
"""
function OGR_F_GetNativeData(arg1::OGRFeatureH)
    ccall((:OGR_F_GetNativeData, libgdal), Cstring, (OGRFeatureH,), arg1)
end


"""
    OGR_F_SetNativeData(OGRFeatureH hFeat,
                        const char * pszNativeData) -> void

Sets the native data for the feature.

### Parameters
* **hFeat**: handle to the feature.
* **pszNativeData**: a string with the native data, or NULL if there is none.
"""
function OGR_F_SetNativeData(arg1::OGRFeatureH, arg2)
    ccall((:OGR_F_SetNativeData, libgdal), Void, (OGRFeatureH, Cstring), arg1, arg2)
end


"""
    OGR_F_GetNativeMediaType(OGRFeatureH hFeat) -> const char *

Returns the native media type for the feature.

### Parameters
* **hFeat**: handle to the feature.

### Returns
a string with the native media type, or NULL if there is none.
"""
function OGR_F_GetNativeMediaType(arg1::OGRFeatureH)
    ccall((:OGR_F_GetNativeMediaType, libgdal), Cstring, (OGRFeatureH,), arg1)
end


"""
    OGR_F_SetNativeMediaType(OGRFeatureH hFeat,
                             const char * pszNativeMediaType) -> void

Sets the native media type for the feature.

### Parameters
* **hFeat**: handle to the feature.
* **pszNativeMediaType**: a string with the native media type, or NULL if there is none.
"""
function OGR_F_SetNativeMediaType(arg1::OGRFeatureH, arg2)
    ccall((:OGR_F_SetNativeMediaType, libgdal), Void, (OGRFeatureH, Cstring), arg1, arg2)
end


"""
    OGR_F_FillUnsetWithDefault(OGRFeatureH hFeat,
                               int bNotNullableOnly,
                               char ** papszOptions) -> void

Fill unset fields with default values that might be defined.

### Parameters
* **hFeat**: handle to the feature.
* **bNotNullableOnly**: if we should fill only unset fields with a not-null constraint.
* **papszOptions**: unused currently. Must be set to NULL.
"""
function OGR_F_FillUnsetWithDefault(hFeat::OGRFeatureH, bNotNullableOnly::Cint, papszOptions)
    ccall((:OGR_F_FillUnsetWithDefault, libgdal), Void, (OGRFeatureH, Cint, Ptr{Cstring}), hFeat, bNotNullableOnly, papszOptions)
end


"""
    OGR_F_Validate(OGRFeatureH hFeat,
                   int nValidateFlags,
                   int bEmitError) -> int

Validate that a feature meets constraints of its schema.

### Parameters
* **hFeat**: handle to the feature to validate.
* **nValidateFlags**: OGR_F_VAL_ALL or combination of OGR_F_VAL_NULL, OGR_F_VAL_GEOM_TYPE, OGR_F_VAL_WIDTH and OGR_F_VAL_ALLOW_NULL_WHEN_DEFAULT with '|' operator
* **bEmitError**: TRUE if a CPLError() must be emitted when a check fails

### Returns
TRUE if all enabled validation tests pass.
"""
function OGR_F_Validate(arg1::OGRFeatureH, nValidateFlags::Cint, bEmitError::Cint)
    ccall((:OGR_F_Validate, libgdal), Cint, (OGRFeatureH, Cint, Cint), arg1, nValidateFlags, bEmitError)
end


"""
    OGR_L_GetName(OGRLayerH) -> const char *

Return the layer name.

### Parameters
* **hLayer**: handle to the layer.

### Returns
the layer name (must not been freed)
"""
function OGR_L_GetName(arg1::OGRLayerH)
    ccall((:OGR_L_GetName, libgdal), Cstring, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetGeomType(OGRLayerH) -> OGRwkbGeometryType

Return the layer geometry type.

### Parameters
* **hLayer**: handle to the layer.

### Returns
the geometry type
"""
function OGR_L_GetGeomType(arg1::OGRLayerH)
    ccall((:OGR_L_GetGeomType, libgdal), OGRwkbGeometryType, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetSpatialFilter(OGRLayerH) -> OGRGeometryH

This function returns the current spatial filter for this layer.

### Parameters
* **hLayer**: handle to the layer to get the spatial filter from.

### Returns
an handle to the spatial filter geometry.
"""
function OGR_L_GetSpatialFilter(arg1::OGRLayerH)
    ccall((:OGR_L_GetSpatialFilter, libgdal), OGRGeometryH, (OGRLayerH,), arg1)
end


"""
    OGR_L_SetSpatialFilter(OGRLayerH,
                           OGRGeometryH) -> void

Set a new spatial filter.

### Parameters
* **hLayer**: handle to the layer on which to set the spatial filter.
* **hGeom**: handle to the geometry to use as a filtering region. NULL may be passed indicating that the current spatial filter should be cleared, but no new one instituted.
"""
function OGR_L_SetSpatialFilter(arg1::OGRLayerH, arg2::OGRGeometryH)
    ccall((:OGR_L_SetSpatialFilter, libgdal), Void, (OGRLayerH, OGRGeometryH), arg1, arg2)
end


"""
    OGR_L_SetSpatialFilterRect(OGRLayerH,
                               double,
                               double,
                               double,
                               double) -> void

Set a new rectangular spatial filter.

### Parameters
* **hLayer**: handle to the layer on which to set the spatial filter.
* **dfMinX**: the minimum X coordinate for the rectangular region.
* **dfMinY**: the minimum Y coordinate for the rectangular region.
* **dfMaxX**: the maximum X coordinate for the rectangular region.
* **dfMaxY**: the maximum Y coordinate for the rectangular region.
"""
function OGR_L_SetSpatialFilterRect(arg1::OGRLayerH, arg2::Cdouble, arg3::Cdouble, arg4::Cdouble, arg5::Cdouble)
    ccall((:OGR_L_SetSpatialFilterRect, libgdal), Void, (OGRLayerH, Cdouble, Cdouble, Cdouble, Cdouble), arg1, arg2, arg3, arg4, arg5)
end


"""
    OGR_L_SetSpatialFilterEx(OGRLayerH,
                             int iGeomField,
                             OGRGeometryH hGeom) -> void

Set a new spatial filter.

### Parameters
* **hLayer**: handle to the layer on which to set the spatial filter.
* **iGeomField**: index of the geometry field on which the spatial filter operates.
* **hGeom**: handle to the geometry to use as a filtering region. NULL may be passed indicating that the current spatial filter should be cleared, but no new one instituted.
"""
function OGR_L_SetSpatialFilterEx(arg1::OGRLayerH, iGeomField::Cint, hGeom::OGRGeometryH)
    ccall((:OGR_L_SetSpatialFilterEx, libgdal), Void, (OGRLayerH, Cint, OGRGeometryH), arg1, iGeomField, hGeom)
end


"""
    OGR_L_SetSpatialFilterRectEx(OGRLayerH,
                                 int iGeomField,
                                 double dfMinX,
                                 double dfMinY,
                                 double dfMaxX,
                                 double dfMaxY) -> void

Set a new rectangular spatial filter.

### Parameters
* **hLayer**: handle to the layer on which to set the spatial filter.
* **iGeomField**: index of the geometry field on which the spatial filter operates.
* **dfMinX**: the minimum X coordinate for the rectangular region.
* **dfMinY**: the minimum Y coordinate for the rectangular region.
* **dfMaxX**: the maximum X coordinate for the rectangular region.
* **dfMaxY**: the maximum Y coordinate for the rectangular region.
"""
function OGR_L_SetSpatialFilterRectEx(arg1::OGRLayerH, iGeomField::Cint, dfMinX::Cdouble, dfMinY::Cdouble, dfMaxX::Cdouble, dfMaxY::Cdouble)
    ccall((:OGR_L_SetSpatialFilterRectEx, libgdal), Void, (OGRLayerH, Cint, Cdouble, Cdouble, Cdouble, Cdouble), arg1, iGeomField, dfMinX, dfMinY, dfMaxX, dfMaxY)
end


"""
    OGR_L_SetAttributeFilter(OGRLayerH,
                             const char *) -> OGRErr

Set a new attribute query.

### Parameters
* **hLayer**: handle to the layer on which attribute query will be executed.
* **pszQuery**: query in restricted SQL WHERE format, or NULL to clear the current query.

### Returns
OGRERR_NONE if successfully installed, or an error code if the query expression is in error, or some other failure occurs.
"""
function OGR_L_SetAttributeFilter(arg1::OGRLayerH, arg2)
    ccall((:OGR_L_SetAttributeFilter, libgdal), OGRErr, (OGRLayerH, Cstring), arg1, arg2)
end


"""
    OGR_L_ResetReading(OGRLayerH) -> void

Reset feature reading to start on the first feature.

### Parameters
* **hLayer**: handle to the layer on which features are read.
"""
function OGR_L_ResetReading(arg1::OGRLayerH)
    ccall((:OGR_L_ResetReading, libgdal), Void, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetNextFeature(OGRLayerH) -> OGRFeatureH

Fetch the next available feature from this layer.

### Parameters
* **hLayer**: handle to the layer from which feature are read.

### Returns
an handle to a feature, or NULL if no more features are available.
"""
function OGR_L_GetNextFeature(arg1::OGRLayerH)
    ccall((:OGR_L_GetNextFeature, libgdal), OGRFeatureH, (OGRLayerH,), arg1)
end


"""
    OGR_L_SetNextByIndex(OGRLayerH,
                         GIntBig) -> OGRErr

Move read cursor to the nIndex'th feature in the current resultset.

### Parameters
* **hLayer**: handle to the layer
* **nIndex**: the index indicating how many steps into the result set to seek.

### Returns
OGRERR_NONE on success or an error code.
"""
function OGR_L_SetNextByIndex(arg1::OGRLayerH, arg2::GIntBig)
    ccall((:OGR_L_SetNextByIndex, libgdal), OGRErr, (OGRLayerH, GIntBig), arg1, arg2)
end


"""
    OGR_L_GetFeature(OGRLayerH,
                     GIntBig) -> OGRFeatureH

Fetch a feature by its identifier.

### Parameters
* **hLayer**: handle to the layer that owned the feature.
* **nFeatureId**: the feature id of the feature to read.

### Returns
an handle to a feature now owned by the caller, or NULL on failure.
"""
function OGR_L_GetFeature(arg1::OGRLayerH, arg2::GIntBig)
    ccall((:OGR_L_GetFeature, libgdal), OGRFeatureH, (OGRLayerH, GIntBig), arg1, arg2)
end


"""
    OGR_L_SetFeature(OGRLayerH,
                     OGRFeatureH) -> OGRErr

Rewrite an existing feature.

### Parameters
* **hLayer**: handle to the layer to write the feature.
* **hFeat**: the feature to write.

### Returns
OGRERR_NONE if the operation works, otherwise an appropriate error code (e.g OGRERR_NON_EXISTING_FEATURE if the feature does not exist).
"""
function OGR_L_SetFeature(arg1::OGRLayerH, arg2::OGRFeatureH)
    ccall((:OGR_L_SetFeature, libgdal), OGRErr, (OGRLayerH, OGRFeatureH), arg1, arg2)
end


"""
    OGR_L_CreateFeature(OGRLayerH,
                        OGRFeatureH) -> OGRErr

Create and write a new feature within a layer.

### Parameters
* **hLayer**: handle to the layer to write the feature to.
* **hFeat**: the handle of the feature to write to disk.

### Returns
OGRERR_NONE on success.
"""
function OGR_L_CreateFeature(arg1::OGRLayerH, arg2::OGRFeatureH)
    ccall((:OGR_L_CreateFeature, libgdal), OGRErr, (OGRLayerH, OGRFeatureH), arg1, arg2)
end


"""
    OGR_L_DeleteFeature(OGRLayerH,
                        GIntBig) -> OGRErr

Delete feature from layer.

### Parameters
* **hLayer**: handle to the layer
* **nFID**: the feature id to be deleted from the layer

### Returns
OGRERR_NONE if the operation works, otherwise an appropriate error code (e.g OGRERR_NON_EXISTING_FEATURE if the feature does not exist).
"""
function OGR_L_DeleteFeature(arg1::OGRLayerH, arg2::GIntBig)
    ccall((:OGR_L_DeleteFeature, libgdal), OGRErr, (OGRLayerH, GIntBig), arg1, arg2)
end


"""
    OGR_L_GetLayerDefn(OGRLayerH) -> OGRFeatureDefnH

Fetch the schema information for this layer.

### Parameters
* **hLayer**: handle to the layer to get the schema information.

### Returns
an handle to the feature definition.
"""
function OGR_L_GetLayerDefn(arg1::OGRLayerH)
    ccall((:OGR_L_GetLayerDefn, libgdal), OGRFeatureDefnH, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetSpatialRef(OGRLayerH) -> OGRSpatialReferenceH

Fetch the spatial reference system for this layer.

### Parameters
* **hLayer**: handle to the layer to get the spatial reference from.

### Returns
spatial reference, or NULL if there isn't one.
"""
function OGR_L_GetSpatialRef(arg1::OGRLayerH)
    ccall((:OGR_L_GetSpatialRef, libgdal), OGRSpatialReferenceH, (OGRLayerH,), arg1)
end


"""
    OGR_L_FindFieldIndex(OGRLayerH,
                         const char *,
                         int bExactMatch) -> int

Find the index of field in a layer.

### Returns
field index, or -1 if the field doesn't exist
"""
function OGR_L_FindFieldIndex(arg1::OGRLayerH, arg2, bExactMatch::Cint)
    ccall((:OGR_L_FindFieldIndex, libgdal), Cint, (OGRLayerH, Cstring, Cint), arg1, arg2, bExactMatch)
end


"""
    OGR_L_GetFeatureCount(OGRLayerH,
                          int) -> GIntBig

Fetch the feature count in this layer.

### Parameters
* **hLayer**: handle to the layer that owned the features.
* **bForce**: Flag indicating whether the count should be computed even if it is expensive.

### Returns
feature count, -1 if count not known.
"""
function OGR_L_GetFeatureCount(arg1::OGRLayerH, arg2::Cint)
    ccall((:OGR_L_GetFeatureCount, libgdal), GIntBig, (OGRLayerH, Cint), arg1, arg2)
end


"""
    OGR_L_GetExtent(OGRLayerH,
                    OGREnvelope *,
                    int) -> OGRErr

Fetch the extent of this layer.

### Parameters
* **hLayer**: handle to the layer from which to get extent.
* **psExtent**: the structure in which the extent value will be returned.
* **bForce**: Flag indicating whether the extent should be computed even if it is expensive.

### Returns
OGRERR_NONE on success, OGRERR_FAILURE if extent not known.
"""
function OGR_L_GetExtent(arg1::OGRLayerH, arg2, arg3::Cint)
    ccall((:OGR_L_GetExtent, libgdal), OGRErr, (OGRLayerH, Ptr{OGREnvelope}, Cint), arg1, arg2, arg3)
end


"""
    OGR_L_GetExtentEx(OGRLayerH,
                      int iGeomField,
                      OGREnvelope * psExtent,
                      int bForce) -> OGRErr

Fetch the extent of this layer, on the specified geometry field.

### Parameters
* **hLayer**: handle to the layer from which to get extent.
* **iGeomField**: the index of the geometry field on which to compute the extent.
* **psExtent**: the structure in which the extent value will be returned.
* **bForce**: Flag indicating whether the extent should be computed even if it is expensive.

### Returns
OGRERR_NONE on success, OGRERR_FAILURE if extent not known.
"""
function OGR_L_GetExtentEx(arg1::OGRLayerH, iGeomField::Cint, psExtent, bForce::Cint)
    ccall((:OGR_L_GetExtentEx, libgdal), OGRErr, (OGRLayerH, Cint, Ptr{OGREnvelope}, Cint), arg1, iGeomField, psExtent, bForce)
end


"""
    OGR_L_TestCapability(OGRLayerH,
                         const char *) -> int

Test if this layer supported the named capability.

### Parameters
* **hLayer**: handle to the layer to get the capability from.
* **pszCap**: the name of the capability to test.

### Returns
TRUE if the layer has the requested capability, or FALSE otherwise. OGRLayers will return FALSE for any unrecognized capabilities.
"""
function OGR_L_TestCapability(arg1::OGRLayerH, arg2)
    ccall((:OGR_L_TestCapability, libgdal), Cint, (OGRLayerH, Cstring), arg1, arg2)
end


"""
    OGR_L_CreateField(OGRLayerH,
                      OGRFieldDefnH,
                      int) -> OGRErr

Create a new field on a layer.

### Parameters
* **hLayer**: handle to the layer to write the field definition.
* **hField**: handle of the field definition to write to disk.
* **bApproxOK**: If TRUE, the field may be created in a slightly different form depending on the limitations of the format driver.

### Returns
OGRERR_NONE on success.
"""
function OGR_L_CreateField(arg1::OGRLayerH, arg2::OGRFieldDefnH, arg3::Cint)
    ccall((:OGR_L_CreateField, libgdal), OGRErr, (OGRLayerH, OGRFieldDefnH, Cint), arg1, arg2, arg3)
end


"""
    OGR_L_CreateGeomField(OGRLayerH hLayer,
                          OGRGeomFieldDefnH hFieldDefn,
                          int bForce) -> OGRErr

Create a new geometry field on a layer.

### Parameters
* **hLayer**: handle to the layer to write the field definition.
* **hField**: handle of the geometry field definition to write to disk.
* **bApproxOK**: If TRUE, the field may be created in a slightly different form depending on the limitations of the format driver.

### Returns
OGRERR_NONE on success.
"""
function OGR_L_CreateGeomField(hLayer::OGRLayerH, hFieldDefn::OGRGeomFieldDefnH, bForce::Cint)
    ccall((:OGR_L_CreateGeomField, libgdal), OGRErr, (OGRLayerH, OGRGeomFieldDefnH, Cint), hLayer, hFieldDefn, bForce)
end


"""
    OGR_L_DeleteField(OGRLayerH,
                      int iField) -> OGRErr

Delete an existing field on a layer.

### Parameters
* **hLayer**: handle to the layer.
* **iField**: index of the field to delete.

### Returns
OGRERR_NONE on success.
"""
function OGR_L_DeleteField(arg1::OGRLayerH, iField::Cint)
    ccall((:OGR_L_DeleteField, libgdal), OGRErr, (OGRLayerH, Cint), arg1, iField)
end


"""
    OGR_L_ReorderFields(OGRLayerH,
                        int * panMap) -> OGRErr

Reorder all the fields of a layer.

### Parameters
* **hLayer**: handle to the layer.
* **panMap**: an array of GetLayerDefn()->OGRFeatureDefn::GetFieldCount() elements which is a permutation of [0, GetLayerDefn()->OGRFeatureDefn::GetFieldCount()-1].

### Returns
OGRERR_NONE on success.
"""
function OGR_L_ReorderFields(arg1::OGRLayerH, panMap)
    ccall((:OGR_L_ReorderFields, libgdal), OGRErr, (OGRLayerH, Ptr{Cint}), arg1, panMap)
end


"""
    OGR_L_ReorderField(OGRLayerH,
                       int iOldFieldPos,
                       int iNewFieldPos) -> OGRErr

Reorder an existing field on a layer.

### Parameters
* **hLayer**: handle to the layer.
* **iOldFieldPos**: previous position of the field to move. Must be in the range [0,GetFieldCount()-1].
* **iNewFieldPos**: new position of the field to move. Must be in the range [0,GetFieldCount()-1].

### Returns
OGRERR_NONE on success.
"""
function OGR_L_ReorderField(arg1::OGRLayerH, iOldFieldPos::Cint, iNewFieldPos::Cint)
    ccall((:OGR_L_ReorderField, libgdal), OGRErr, (OGRLayerH, Cint, Cint), arg1, iOldFieldPos, iNewFieldPos)
end


"""
    OGR_L_AlterFieldDefn(OGRLayerH,
                         int iField,
                         OGRFieldDefnH hNewFieldDefn,
                         int nFlags) -> OGRErr

Alter the definition of an existing field on a layer.

### Parameters
* **hLayer**: handle to the layer.
* **iField**: index of the field whose definition must be altered.
* **hNewFieldDefn**: new field definition
* **nFlags**: combination of ALTER_NAME_FLAG, ALTER_TYPE_FLAG, ALTER_WIDTH_PRECISION_FLAG, ALTER_NULLABLE_FLAG and ALTER_DEFAULT_FLAG to indicate which of the name and/or type and/or width and precision fields and/or nullability from the new field definition must be taken into account.

### Returns
OGRERR_NONE on success.
"""
function OGR_L_AlterFieldDefn(arg1::OGRLayerH, iField::Cint, hNewFieldDefn::OGRFieldDefnH, nFlags::Cint)
    ccall((:OGR_L_AlterFieldDefn, libgdal), OGRErr, (OGRLayerH, Cint, OGRFieldDefnH, Cint), arg1, iField, hNewFieldDefn, nFlags)
end


"""
    OGR_L_StartTransaction(OGRLayerH) -> OGRErr

For datasources which support transactions, StartTransaction creates a transaction.

### Parameters
* **hLayer**: handle to the layer

### Returns
OGRERR_NONE on success.
"""
function OGR_L_StartTransaction(arg1::OGRLayerH)
    ccall((:OGR_L_StartTransaction, libgdal), OGRErr, (OGRLayerH,), arg1)
end


"""
    OGR_L_CommitTransaction(OGRLayerH) -> OGRErr

For datasources which support transactions, CommitTransaction commits a transaction.

### Parameters
* **hLayer**: handle to the layer

### Returns
OGRERR_NONE on success.
"""
function OGR_L_CommitTransaction(arg1::OGRLayerH)
    ccall((:OGR_L_CommitTransaction, libgdal), OGRErr, (OGRLayerH,), arg1)
end


"""
    OGR_L_RollbackTransaction(OGRLayerH) -> OGRErr

For datasources which support transactions, RollbackTransaction will roll back a datasource to its state before the start of the current transaction.

### Parameters
* **hLayer**: handle to the layer

### Returns
OGRERR_NONE on success.
"""
function OGR_L_RollbackTransaction(arg1::OGRLayerH)
    ccall((:OGR_L_RollbackTransaction, libgdal), OGRErr, (OGRLayerH,), arg1)
end


"""
    OGR_L_Reference(OGRLayerH hLayer) -> int
"""
function OGR_L_Reference(arg1::OGRLayerH)
    ccall((:OGR_L_Reference, libgdal), Cint, (OGRLayerH,), arg1)
end


"""
    OGR_L_Dereference(OGRLayerH hLayer) -> int
"""
function OGR_L_Dereference(arg1::OGRLayerH)
    ccall((:OGR_L_Dereference, libgdal), Cint, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetRefCount(OGRLayerH hLayer) -> int
"""
function OGR_L_GetRefCount(arg1::OGRLayerH)
    ccall((:OGR_L_GetRefCount, libgdal), Cint, (OGRLayerH,), arg1)
end


"""
    OGR_L_SyncToDisk(OGRLayerH) -> OGRErr

Flush pending changes to disk.

### Parameters
* **hLayer**: handle to the layer

### Returns
OGRERR_NONE if no error occurs (even if nothing is done) or an error code.
"""
function OGR_L_SyncToDisk(arg1::OGRLayerH)
    ccall((:OGR_L_SyncToDisk, libgdal), OGRErr, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetFeaturesRead(OGRLayerH hLayer) -> GIntBig
"""
function OGR_L_GetFeaturesRead(arg1::OGRLayerH)
    ccall((:OGR_L_GetFeaturesRead, libgdal), GIntBig, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetFIDColumn(OGRLayerH) -> const char *

This method returns the name of the underlying database column being used as the FID column, or "" if not supported.

### Parameters
* **hLayer**: handle to the layer

### Returns
fid column name.
"""
function OGR_L_GetFIDColumn(arg1::OGRLayerH)
    ccall((:OGR_L_GetFIDColumn, libgdal), Cstring, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetGeometryColumn(OGRLayerH) -> const char *

This method returns the name of the underlying database column being used as the geometry column, or "" if not supported.

### Parameters
* **hLayer**: handle to the layer

### Returns
geometry column name.
"""
function OGR_L_GetGeometryColumn(arg1::OGRLayerH)
    ccall((:OGR_L_GetGeometryColumn, libgdal), Cstring, (OGRLayerH,), arg1)
end


"""
    OGR_L_GetStyleTable(OGRLayerH hLayer) -> OGRStyleTableH

Get style table.
"""
function OGR_L_GetStyleTable(arg1::OGRLayerH)
    ccall((:OGR_L_GetStyleTable, libgdal), OGRStyleTableH, (OGRLayerH,), arg1)
end


"""
    OGR_L_SetStyleTableDirectly(OGRLayerH hLayer,
                                OGRStyleTableH hStyleTable) -> void

Set style table (and take ownership)
"""
function OGR_L_SetStyleTableDirectly(arg1::OGRLayerH, arg2::OGRStyleTableH)
    ccall((:OGR_L_SetStyleTableDirectly, libgdal), Void, (OGRLayerH, OGRStyleTableH), arg1, arg2)
end


"""
    OGR_L_SetStyleTable(OGRLayerH hLayer,
                        OGRStyleTableH hStyleTable) -> void

Set style table.
"""
function OGR_L_SetStyleTable(arg1::OGRLayerH, arg2::OGRStyleTableH)
    ccall((:OGR_L_SetStyleTable, libgdal), Void, (OGRLayerH, OGRStyleTableH), arg1, arg2)
end


"""
    OGR_L_SetIgnoredFields(OGRLayerH,
                           const char **) -> OGRErr

Set which fields can be omitted when retrieving features from the layer.

### Parameters
* **papszFields**: an array of field names terminated by NULL item. If NULL is passed, the ignored list is cleared.

### Returns
OGRERR_NONE if all field names have been resolved (even if the driver does not support this method)
"""
function OGR_L_SetIgnoredFields(arg1::OGRLayerH, arg2)
    ccall((:OGR_L_SetIgnoredFields, libgdal), OGRErr, (OGRLayerH, Ptr{Cstring}), arg1, arg2)
end


"""
    OGR_L_Intersection(OGRLayerH pLayerInput,
                       OGRLayerH pLayerMethod,
                       OGRLayerH pLayerResult,
                       char ** papszOptions,
                       GDALProgressFunc pfnProgress,
                       void * pProgressArg) -> OGRErr

Intersection of two layers.

### Parameters
* **pLayerInput**: the input layer. Should not be NULL.
* **pLayerMethod**: the method layer. Should not be NULL.
* **pLayerResult**: the layer where the features resulting from the operation are inserted. Should not be NULL. See above the note about the schema.
* **papszOptions**: NULL terminated list of options (may be NULL).
* **pfnProgress**: a GDALProgressFunc() compatible callback function for reporting progress or NULL.
* **pProgressArg**: argument to be passed to pfnProgress. May be NULL.

### Returns
an error code if there was an error or the execution was interrupted, OGRERR_NONE otherwise.
"""
function OGR_L_Intersection(arg1::OGRLayerH, arg2::OGRLayerH, arg3::OGRLayerH, arg4, arg5::GDALProgressFunc, arg6)
    ccall((:OGR_L_Intersection, libgdal), OGRErr, (OGRLayerH, OGRLayerH, OGRLayerH, Ptr{Cstring}, GDALProgressFunc, Ptr{Void}), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_L_Union(OGRLayerH pLayerInput,
                OGRLayerH pLayerMethod,
                OGRLayerH pLayerResult,
                char ** papszOptions,
                GDALProgressFunc pfnProgress,
                void * pProgressArg) -> OGRErr

Union of two layers.

### Parameters
* **pLayerInput**: the input layer. Should not be NULL.
* **pLayerMethod**: the method layer. Should not be NULL.
* **pLayerResult**: the layer where the features resulting from the operation are inserted. Should not be NULL. See above the note about the schema.
* **papszOptions**: NULL terminated list of options (may be NULL).
* **pfnProgress**: a GDALProgressFunc() compatible callback function for reporting progress or NULL.
* **pProgressArg**: argument to be passed to pfnProgress. May be NULL.

### Returns
an error code if there was an error or the execution was interrupted, OGRERR_NONE otherwise.
"""
function OGR_L_Union(arg1::OGRLayerH, arg2::OGRLayerH, arg3::OGRLayerH, arg4, arg5::GDALProgressFunc, arg6)
    ccall((:OGR_L_Union, libgdal), OGRErr, (OGRLayerH, OGRLayerH, OGRLayerH, Ptr{Cstring}, GDALProgressFunc, Ptr{Void}), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_L_SymDifference(OGRLayerH pLayerInput,
                        OGRLayerH pLayerMethod,
                        OGRLayerH pLayerResult,
                        char ** papszOptions,
                        GDALProgressFunc pfnProgress,
                        void * pProgressArg) -> OGRErr

Symmetrical difference of two layers.

### Parameters
* **pLayerInput**: the input layer. Should not be NULL.
* **pLayerMethod**: the method layer. Should not be NULL.
* **pLayerResult**: the layer where the features resulting from the operation are inserted. Should not be NULL. See above the note about the schema.
* **papszOptions**: NULL terminated list of options (may be NULL).
* **pfnProgress**: a GDALProgressFunc() compatible callback function for reporting progress or NULL.
* **pProgressArg**: argument to be passed to pfnProgress. May be NULL.

### Returns
an error code if there was an error or the execution was interrupted, OGRERR_NONE otherwise.
"""
function OGR_L_SymDifference(arg1::OGRLayerH, arg2::OGRLayerH, arg3::OGRLayerH, arg4, arg5::GDALProgressFunc, arg6)
    ccall((:OGR_L_SymDifference, libgdal), OGRErr, (OGRLayerH, OGRLayerH, OGRLayerH, Ptr{Cstring}, GDALProgressFunc, Ptr{Void}), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_L_Identity(OGRLayerH pLayerInput,
                   OGRLayerH pLayerMethod,
                   OGRLayerH pLayerResult,
                   char ** papszOptions,
                   GDALProgressFunc pfnProgress,
                   void * pProgressArg) -> OGRErr

Identify the features of this layer with the ones from the identity layer.

### Parameters
* **pLayerInput**: the input layer. Should not be NULL.
* **pLayerMethod**: the method layer. Should not be NULL.
* **pLayerResult**: the layer where the features resulting from the operation are inserted. Should not be NULL. See above the note about the schema.
* **papszOptions**: NULL terminated list of options (may be NULL).
* **pfnProgress**: a GDALProgressFunc() compatible callback function for reporting progress or NULL.
* **pProgressArg**: argument to be passed to pfnProgress. May be NULL.

### Returns
an error code if there was an error or the execution was interrupted, OGRERR_NONE otherwise.
"""
function OGR_L_Identity(arg1::OGRLayerH, arg2::OGRLayerH, arg3::OGRLayerH, arg4, arg5::GDALProgressFunc, arg6)
    ccall((:OGR_L_Identity, libgdal), OGRErr, (OGRLayerH, OGRLayerH, OGRLayerH, Ptr{Cstring}, GDALProgressFunc, Ptr{Void}), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_L_Update(OGRLayerH pLayerInput,
                 OGRLayerH pLayerMethod,
                 OGRLayerH pLayerResult,
                 char ** papszOptions,
                 GDALProgressFunc pfnProgress,
                 void * pProgressArg) -> OGRErr

Update this layer with features from the update layer.

### Parameters
* **pLayerInput**: the input layer. Should not be NULL.
* **pLayerMethod**: the method layer. Should not be NULL.
* **pLayerResult**: the layer where the features resulting from the operation are inserted. Should not be NULL. See above the note about the schema.
* **papszOptions**: NULL terminated list of options (may be NULL).
* **pfnProgress**: a GDALProgressFunc() compatible callback function for reporting progress or NULL.
* **pProgressArg**: argument to be passed to pfnProgress. May be NULL.

### Returns
an error code if there was an error or the execution was interrupted, OGRERR_NONE otherwise.
"""
function OGR_L_Update(arg1::OGRLayerH, arg2::OGRLayerH, arg3::OGRLayerH, arg4, arg5::GDALProgressFunc, arg6)
    ccall((:OGR_L_Update, libgdal), OGRErr, (OGRLayerH, OGRLayerH, OGRLayerH, Ptr{Cstring}, GDALProgressFunc, Ptr{Void}), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_L_Clip(OGRLayerH pLayerInput,
               OGRLayerH pLayerMethod,
               OGRLayerH pLayerResult,
               char ** papszOptions,
               GDALProgressFunc pfnProgress,
               void * pProgressArg) -> OGRErr

Clip off areas that are not covered by the method layer.

### Parameters
* **pLayerInput**: the input layer. Should not be NULL.
* **pLayerMethod**: the method layer. Should not be NULL.
* **pLayerResult**: the layer where the features resulting from the operation are inserted. Should not be NULL. See above the note about the schema.
* **papszOptions**: NULL terminated list of options (may be NULL).
* **pfnProgress**: a GDALProgressFunc() compatible callback function for reporting progress or NULL.
* **pProgressArg**: argument to be passed to pfnProgress. May be NULL.

### Returns
an error code if there was an error or the execution was interrupted, OGRERR_NONE otherwise.
"""
function OGR_L_Clip(arg1::OGRLayerH, arg2::OGRLayerH, arg3::OGRLayerH, arg4, arg5::GDALProgressFunc, arg6)
    ccall((:OGR_L_Clip, libgdal), OGRErr, (OGRLayerH, OGRLayerH, OGRLayerH, Ptr{Cstring}, GDALProgressFunc, Ptr{Void}), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_L_Erase(OGRLayerH pLayerInput,
                OGRLayerH pLayerMethod,
                OGRLayerH pLayerResult,
                char ** papszOptions,
                GDALProgressFunc pfnProgress,
                void * pProgressArg) -> OGRErr

Remove areas that are covered by the method layer.

### Parameters
* **pLayerInput**: the input layer. Should not be NULL.
* **pLayerMethod**: the method layer. Should not be NULL.
* **pLayerResult**: the layer where the features resulting from the operation are inserted. Should not be NULL. See above the note about the schema.
* **papszOptions**: NULL terminated list of options (may be NULL).
* **pfnProgress**: a GDALProgressFunc() compatible callback function for reporting progress or NULL.
* **pProgressArg**: argument to be passed to pfnProgress. May be NULL.

### Returns
an error code if there was an error or the execution was interrupted, OGRERR_NONE otherwise.
"""
function OGR_L_Erase(arg1::OGRLayerH, arg2::OGRLayerH, arg3::OGRLayerH, arg4, arg5::GDALProgressFunc, arg6)
    ccall((:OGR_L_Erase, libgdal), OGRErr, (OGRLayerH, OGRLayerH, OGRLayerH, Ptr{Cstring}, GDALProgressFunc, Ptr{Void}), arg1, arg2, arg3, arg4, arg5, arg6)
end


"""
    OGR_DS_Destroy(OGRDataSourceH) -> void

Closes opened datasource and releases allocated resources.

### Parameters
* **hDataSource**: handle to allocated datasource object.
"""
function OGR_DS_Destroy(arg1::OGRDataSourceH)
    ccall((:OGR_DS_Destroy, libgdal), Void, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_GetName(OGRDataSourceH) -> const char *

Returns the name of the data source.

### Parameters
* **hDS**: handle to the data source to get the name from.

### Returns
pointer to an internal name string which should not be modified or freed by the caller.
"""
function OGR_DS_GetName(arg1::OGRDataSourceH)
    ccall((:OGR_DS_GetName, libgdal), Cstring, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_GetLayerCount(OGRDataSourceH) -> int

Get the number of layers in this data source.

### Parameters
* **hDS**: handle to the data source from which to get the number of layers.

### Returns
layer count.
"""
function OGR_DS_GetLayerCount(arg1::OGRDataSourceH)
    ccall((:OGR_DS_GetLayerCount, libgdal), Cint, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_GetLayer(OGRDataSourceH,
                    int) -> OGRLayerH

Fetch a layer by index.

### Parameters
* **hDS**: handle to the data source from which to get the layer.
* **iLayer**: a layer number between 0 and OGR_DS_GetLayerCount()-1.

### Returns
an handle to the layer, or NULL if iLayer is out of range or an error occurs.
"""
function OGR_DS_GetLayer(arg1::OGRDataSourceH, arg2::Cint)
    ccall((:OGR_DS_GetLayer, libgdal), OGRLayerH, (OGRDataSourceH, Cint), arg1, arg2)
end


"""
    OGR_DS_GetLayerByName(OGRDataSourceH,
                          const char *) -> OGRLayerH

Fetch a layer by name.

### Parameters
* **hDS**: handle to the data source from which to get the layer.
* **pszLayerName**: Layer the layer name of the layer to fetch.

### Returns
an handle to the layer, or NULL if the layer is not found or an error occurs.
"""
function OGR_DS_GetLayerByName(arg1::OGRDataSourceH, arg2)
    ccall((:OGR_DS_GetLayerByName, libgdal), OGRLayerH, (OGRDataSourceH, Cstring), arg1, arg2)
end


"""
    OGR_DS_DeleteLayer(OGRDataSourceH,
                       int) -> OGRErr

Delete the indicated layer from the datasource.

### Parameters
* **hDS**: handle to the datasource
* **iLayer**: the index of the layer to delete.

### Returns
OGRERR_NONE on success, or OGRERR_UNSUPPORTED_OPERATION if deleting layers is not supported for this datasource.
"""
function OGR_DS_DeleteLayer(arg1::OGRDataSourceH, arg2::Cint)
    ccall((:OGR_DS_DeleteLayer, libgdal), OGRErr, (OGRDataSourceH, Cint), arg1, arg2)
end


"""
    OGR_DS_GetDriver(OGRDataSourceH) -> OGRSFDriverH

Returns the driver that the dataset was opened with.

### Parameters
* **hDS**: handle to the datasource

### Returns
NULL if driver info is not available, or pointer to a driver owned by the OGRSFDriverManager.
"""
function OGR_DS_GetDriver(arg1::OGRDataSourceH)
    ccall((:OGR_DS_GetDriver, libgdal), OGRSFDriverH, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_CreateLayer(OGRDataSourceH,
                       const char *,
                       OGRSpatialReferenceH,
                       OGRwkbGeometryType,
                       char **) -> OGRLayerH

This function attempts to create a new layer on the data source with the indicated name, coordinate system, geometry type.

### Parameters
* **hDS**: The dataset handle.
* **pszName**: the name for the new layer. This should ideally not match any existing layer on the datasource.
* **hSpatialRef**: handle to the coordinate system to use for the new layer, or NULL if no coordinate system is available.
* **eType**: the geometry type for the layer. Use wkbUnknown if there are no constraints on the types geometry to be written.
* **papszOptions**: a StringList of name=value options. Options are driver specific, and driver information can be found at the following url: http://www.gdal.org/ogr_formats.html

### Returns
NULL is returned on failure, or a new OGRLayer handle on success.
"""
function OGR_DS_CreateLayer(arg1::OGRDataSourceH, arg2, arg3::OGRSpatialReferenceH, arg4::OGRwkbGeometryType, arg5)
    ccall((:OGR_DS_CreateLayer, libgdal), OGRLayerH, (OGRDataSourceH, Cstring, OGRSpatialReferenceH, OGRwkbGeometryType, Ptr{Cstring}), arg1, arg2, arg3, arg4, arg5)
end


"""
    OGR_DS_CopyLayer(OGRDataSourceH,
                     OGRLayerH,
                     const char *,
                     char **) -> OGRLayerH

Duplicate an existing layer.

### Parameters
* **hDS**: handle to the data source where to create the new layer
* **hSrcLayer**: handle to the source layer.
* **pszNewName**: the name of the layer to create.
* **papszOptions**: a StringList of name=value options. Options are driver specific.

### Returns
an handle to the layer, or NULL if an error occurs.
"""
function OGR_DS_CopyLayer(arg1::OGRDataSourceH, arg2::OGRLayerH, arg3, arg4)
    ccall((:OGR_DS_CopyLayer, libgdal), OGRLayerH, (OGRDataSourceH, OGRLayerH, Cstring, Ptr{Cstring}), arg1, arg2, arg3, arg4)
end


"""
    OGR_DS_TestCapability(OGRDataSourceH,
                          const char *) -> int

Test if capability is available.

### Parameters
* **hDS**: handle to the data source against which to test the capability.
* **pszCapability**: the capability to test.

### Returns
TRUE if capability available otherwise FALSE.
"""
function OGR_DS_TestCapability(arg1::OGRDataSourceH, arg2)
    ccall((:OGR_DS_TestCapability, libgdal), Cint, (OGRDataSourceH, Cstring), arg1, arg2)
end


"""
    OGR_DS_ExecuteSQL(OGRDataSourceH,
                      const char *,
                      OGRGeometryH,
                      const char *) -> OGRLayerH

Execute an SQL statement against the data store.

### Parameters
* **hDS**: handle to the data source on which the SQL query is executed.
* **pszSQLCommand**: the SQL statement to execute.
* **hSpatialFilter**: handle to a geometry which represents a spatial filter. Can be NULL.
* **pszDialect**: allows control of the statement dialect. If set to NULL, the OGR SQL engine will be used, except for RDBMS drivers that will use their dedicated SQL engine, unless OGRSQL is explicitly passed as the dialect. Starting with OGR 1.10, the SQLITE dialect can also be used.

### Returns
an handle to a OGRLayer containing the results of the query. Deallocate with OGR_DS_ReleaseResultSet().
"""
function OGR_DS_ExecuteSQL(arg1::OGRDataSourceH, arg2, arg3::OGRGeometryH, arg4)
    ccall((:OGR_DS_ExecuteSQL, libgdal), OGRLayerH, (OGRDataSourceH, Cstring, OGRGeometryH, Cstring), arg1, arg2, arg3, arg4)
end


"""
    OGR_DS_ReleaseResultSet(OGRDataSourceH,
                            OGRLayerH) -> void

Release results of OGR_DS_ExecuteSQL().

### Parameters
* **hDS**: an handle to the data source on which was executed an SQL query.
* **hLayer**: handle to the result of a previous OGR_DS_ExecuteSQL() call.
"""
function OGR_DS_ReleaseResultSet(arg1::OGRDataSourceH, arg2::OGRLayerH)
    ccall((:OGR_DS_ReleaseResultSet, libgdal), Void, (OGRDataSourceH, OGRLayerH), arg1, arg2)
end


"""
    OGR_DS_Reference(OGRDataSourceH hDataSource) -> int
"""
function OGR_DS_Reference(arg1::OGRDataSourceH)
    ccall((:OGR_DS_Reference, libgdal), Cint, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_Dereference(OGRDataSourceH hDataSource) -> int
"""
function OGR_DS_Dereference(arg1::OGRDataSourceH)
    ccall((:OGR_DS_Dereference, libgdal), Cint, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_GetRefCount(OGRDataSourceH hDataSource) -> int
"""
function OGR_DS_GetRefCount(arg1::OGRDataSourceH)
    ccall((:OGR_DS_GetRefCount, libgdal), Cint, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_GetSummaryRefCount(OGRDataSourceH hDataSource) -> int
"""
function OGR_DS_GetSummaryRefCount(arg1::OGRDataSourceH)
    ccall((:OGR_DS_GetSummaryRefCount, libgdal), Cint, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_SyncToDisk(OGRDataSourceH) -> OGRErr

Flush pending changes to disk.
"""
function OGR_DS_SyncToDisk(arg1::OGRDataSourceH)
    ccall((:OGR_DS_SyncToDisk, libgdal), OGRErr, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_GetStyleTable(OGRDataSourceH hDS) -> OGRStyleTableH

Get style table.
"""
function OGR_DS_GetStyleTable(arg1::OGRDataSourceH)
    ccall((:OGR_DS_GetStyleTable, libgdal), OGRStyleTableH, (OGRDataSourceH,), arg1)
end


"""
    OGR_DS_SetStyleTableDirectly(OGRDataSourceH hDS,
                                 OGRStyleTableH hStyleTable) -> void

Set style table (and take ownership)
"""
function OGR_DS_SetStyleTableDirectly(arg1::OGRDataSourceH, arg2::OGRStyleTableH)
    ccall((:OGR_DS_SetStyleTableDirectly, libgdal), Void, (OGRDataSourceH, OGRStyleTableH), arg1, arg2)
end


"""
    OGR_DS_SetStyleTable(OGRDataSourceH hDS,
                         OGRStyleTableH hStyleTable) -> void

Set style table.
"""
function OGR_DS_SetStyleTable(arg1::OGRDataSourceH, arg2::OGRStyleTableH)
    ccall((:OGR_DS_SetStyleTable, libgdal), Void, (OGRDataSourceH, OGRStyleTableH), arg1, arg2)
end


"""
    OGR_Dr_GetName(OGRSFDriverH) -> const char *

Fetch name of driver (file format).

### Parameters
* **hDriver**: handle to the driver to get the name from.

### Returns
driver name. This is an internal string and should not be modified or freed.
"""
function OGR_Dr_GetName(arg1::OGRSFDriverH)
    ccall((:OGR_Dr_GetName, libgdal), Cstring, (OGRSFDriverH,), arg1)
end


"""
    OGR_Dr_Open(OGRSFDriverH,
                const char *,
                int) -> OGRDataSourceH

Attempt to open file with this driver.

### Parameters
* **hDriver**: handle to the driver that is used to open file.
* **pszName**: the name of the file, or data source to try and open.
* **bUpdate**: TRUE if update access is required, otherwise FALSE (the default).

### Returns
NULL on error or if the pass name is not supported by this driver, otherwise an handle to a GDALDataset. This GDALDataset should be closed by deleting the object when it is no longer needed.
"""
function OGR_Dr_Open(arg1::OGRSFDriverH, arg2, arg3::Cint)
    ccall((:OGR_Dr_Open, libgdal), OGRDataSourceH, (OGRSFDriverH, Cstring, Cint), arg1, arg2, arg3)
end


"""
    OGR_Dr_TestCapability(OGRSFDriverH,
                          const char *) -> int

Test if capability is available.

### Parameters
* **hDriver**: handle to the driver to test the capability against.
* **pszCap**: the capability to test.

### Returns
TRUE if capability available otherwise FALSE.
"""
function OGR_Dr_TestCapability(arg1::OGRSFDriverH, arg2)
    ccall((:OGR_Dr_TestCapability, libgdal), Cint, (OGRSFDriverH, Cstring), arg1, arg2)
end


"""
    OGR_Dr_CreateDataSource(OGRSFDriverH,
                            const char *,
                            char **) -> OGRDataSourceH

This function attempts to create a new data source based on the passed driver.

### Parameters
* **hDriver**: handle to the driver on which data source creation is based.
* **pszName**: the name for the new data source. UTF-8 encoded.
* **papszOptions**: a StringList of name=value options. Options are driver specific, and driver information can be found at the following url: http://www.gdal.org/ogr_formats.html

### Returns
NULL is returned on failure, or a new OGRDataSource handle on success.
"""
function OGR_Dr_CreateDataSource(arg1::OGRSFDriverH, arg2, arg3)
    ccall((:OGR_Dr_CreateDataSource, libgdal), OGRDataSourceH, (OGRSFDriverH, Cstring, Ptr{Cstring}), arg1, arg2, arg3)
end


"""
    OGR_Dr_CopyDataSource(OGRSFDriverH,
                          OGRDataSourceH,
                          const char *,
                          char **) -> OGRDataSourceH

This function creates a new datasource by copying all the layers from the source datasource.

### Parameters
* **hDriver**: handle to the driver on which data source creation is based.
* **hSrcDS**: source datasource
* **pszNewName**: the name for the new data source.
* **papszOptions**: a StringList of name=value options. Options are driver specific, and driver information can be found at the following url: http://www.gdal.org/ogr_formats.html

### Returns
NULL is returned on failure, or a new OGRDataSource handle on success.
"""
function OGR_Dr_CopyDataSource(arg1::OGRSFDriverH, arg2::OGRDataSourceH, arg3, arg4)
    ccall((:OGR_Dr_CopyDataSource, libgdal), OGRDataSourceH, (OGRSFDriverH, OGRDataSourceH, Cstring, Ptr{Cstring}), arg1, arg2, arg3, arg4)
end


"""
    OGR_Dr_DeleteDataSource(OGRSFDriverH,
                            const char *) -> OGRErr

Delete a datasource.

### Parameters
* **hDriver**: handle to the driver on which data source deletion is based.
* **pszDataSource**: the name of the datasource to delete.

### Returns
OGRERR_NONE on success, and OGRERR_UNSUPPORTED_OPERATION if this is not supported by this driver.
"""
function OGR_Dr_DeleteDataSource(arg1::OGRSFDriverH, arg2)
    ccall((:OGR_Dr_DeleteDataSource, libgdal), OGRErr, (OGRSFDriverH, Cstring), arg1, arg2)
end


"""
    OGROpen(const char *,
            int,
            OGRSFDriverH *) -> OGRDataSourceH

Open a file / data source with one of the registered drivers.

### Parameters
* **pszName**: the name of the file, or data source to open.
* **bUpdate**: FALSE for read-only access (the default) or TRUE for read-write access.
* **pahDriverList**: if non-NULL, this argument will be updated with a pointer to the driver which was used to open the data source.

### Returns
NULL on error or if the pass name is not supported by this driver, otherwise an handle to a GDALDataset. This GDALDataset should be closed by deleting the object when it is no longer needed.
"""
function OGROpen(arg1, arg2::Cint, arg3)
    ccall((:OGROpen, libgdal), OGRDataSourceH, (Cstring, Cint, Ptr{OGRSFDriverH}), arg1, arg2, arg3)
end


"""
    OGROpenShared(const char *,
                  int,
                  OGRSFDriverH *) -> OGRDataSourceH

Open a file / data source with one of the registered drivers if not already opened, or increment reference count of already opened data source previously opened with OGROpenShared()

### Parameters
* **pszName**: the name of the file, or data source to open.
* **bUpdate**: FALSE for read-only access (the default) or TRUE for read-write access.
* **pahDriverList**: if non-NULL, this argument will be updated with a pointer to the driver which was used to open the data source.

### Returns
NULL on error or if the pass name is not supported by this driver, otherwise an handle to a GDALDataset. This GDALDataset should be closed by deleting the object when it is no longer needed.
"""
function OGROpenShared(arg1, arg2::Cint, arg3)
    ccall((:OGROpenShared, libgdal), OGRDataSourceH, (Cstring, Cint, Ptr{OGRSFDriverH}), arg1, arg2, arg3)
end


"""
    OGRReleaseDataSource(OGRDataSourceH) -> OGRErr

Drop a reference to this datasource, and if the reference count drops to zero close (destroy) the datasource.

### Parameters
* **hDS**: handle to the data source to release

### Returns
OGRERR_NONE on success or an error code.
"""
function OGRReleaseDataSource(arg1::OGRDataSourceH)
    ccall((:OGRReleaseDataSource, libgdal), OGRErr, (OGRDataSourceH,), arg1)
end


"""
"""
function OGRRegisterDriver(arg1::OGRSFDriverH)
    ccall((:OGRRegisterDriver, libgdal), Void, (OGRSFDriverH,), arg1)
end


"""
"""
function OGRDeregisterDriver(arg1::OGRSFDriverH)
    ccall((:OGRDeregisterDriver, libgdal), Void, (OGRSFDriverH,), arg1)
end


"""
    OGRGetDriverCount(void) -> int

Fetch the number of registered drivers.

### Returns
the drivers count.
"""
function OGRGetDriverCount()
    ccall((:OGRGetDriverCount, libgdal), Cint, ())
end


"""
    OGRGetDriver(int) -> OGRSFDriverH

Fetch the indicated driver.

### Parameters
* **iDriver**: the driver index, from 0 to GetDriverCount()-1.

### Returns
handle to the driver, or NULL if iDriver is out of range.
"""
function OGRGetDriver(arg1::Cint)
    ccall((:OGRGetDriver, libgdal), OGRSFDriverH, (Cint,), arg1)
end


"""
    OGRGetDriverByName(const char *) -> OGRSFDriverH

Fetch the indicated driver.

### Parameters
* **pszName**: the driver name

### Returns
the driver, or NULL if no driver with that name is found
"""
function OGRGetDriverByName(arg1)
    ccall((:OGRGetDriverByName, libgdal), OGRSFDriverH, (Cstring,), arg1)
end


"""
"""
function OGRGetOpenDSCount()
    ccall((:OGRGetOpenDSCount, libgdal), Cint, ())
end


"""
"""
function OGRGetOpenDS(iDS::Cint)
    ccall((:OGRGetOpenDS, libgdal), OGRDataSourceH, (Cint,), iDS)
end


"""
    OGRRegisterAll(void) -> void

Register all drivers.
"""
function OGRRegisterAll()
    ccall((:OGRRegisterAll, libgdal), Void, ())
end


"""
    OGRCleanupAll(void) -> void

Clean-up all drivers (including raster ones starting with GDAL 2.0.
"""
function OGRCleanupAll()
    ccall((:OGRCleanupAll, libgdal), Void, ())
end


"""
    OGR_SM_Create(OGRStyleTableH hStyleTable) -> OGRStyleMgrH

OGRStyleMgr factory.

### Parameters
* **hStyleTable**: pointer to OGRStyleTable or NULL if not working with a style table.

### Returns
an handle to the new style manager object.
"""
function OGR_SM_Create(hStyleTable::OGRStyleTableH)
    ccall((:OGR_SM_Create, libgdal), OGRStyleMgrH, (OGRStyleTableH,), hStyleTable)
end


"""
    OGR_SM_Destroy(OGRStyleMgrH hSM) -> void

Destroy Style Manager.

### Parameters
* **hSM**: handle to the style manager to destroy.
"""
function OGR_SM_Destroy(hSM::OGRStyleMgrH)
    ccall((:OGR_SM_Destroy, libgdal), Void, (OGRStyleMgrH,), hSM)
end


"""
    OGR_SM_InitFromFeature(OGRStyleMgrH hSM,
                           OGRFeatureH hFeat) -> const char *

Initialize style manager from the style string of a feature.

### Parameters
* **hSM**: handle to the style manager.
* **hFeat**: handle to the new feature from which to read the style.

### Returns
a reference to the style string read from the feature, or NULL in case of error.
"""
function OGR_SM_InitFromFeature(hSM::OGRStyleMgrH, hFeat::OGRFeatureH)
    ccall((:OGR_SM_InitFromFeature, libgdal), Cstring, (OGRStyleMgrH, OGRFeatureH), hSM, hFeat)
end


"""
    OGR_SM_InitStyleString(OGRStyleMgrH hSM,
                           const char * pszStyleString) -> int

Initialize style manager from the style string.

### Parameters
* **hSM**: handle to the style manager.
* **pszStyleString**: the style string to use (can be NULL).

### Returns
TRUE on success, FALSE on errors.
"""
function OGR_SM_InitStyleString(hSM::OGRStyleMgrH, pszStyleString)
    ccall((:OGR_SM_InitStyleString, libgdal), Cint, (OGRStyleMgrH, Cstring), hSM, pszStyleString)
end


"""
    OGR_SM_GetPartCount(OGRStyleMgrH hSM,
                        const char * pszStyleString) -> int

Get the number of parts in a style.

### Parameters
* **hSM**: handle to the style manager.
* **pszStyleString**: (optional) the style string on which to operate. If NULL then the current style string stored in the style manager is used.

### Returns
the number of parts (style tools) in the style.
"""
function OGR_SM_GetPartCount(hSM::OGRStyleMgrH, pszStyleString)
    ccall((:OGR_SM_GetPartCount, libgdal), Cint, (OGRStyleMgrH, Cstring), hSM, pszStyleString)
end


"""
    OGR_SM_GetPart(OGRStyleMgrH hSM,
                   int nPartId,
                   const char * pszStyleString) -> OGRStyleToolH

Fetch a part (style tool) from the current style.

### Parameters
* **hSM**: handle to the style manager.
* **nPartId**: the part number (0-based index).
* **pszStyleString**: (optional) the style string on which to operate. If NULL then the current style string stored in the style manager is used.

### Returns
OGRStyleToolH of the requested part (style tools) or NULL on error.
"""
function OGR_SM_GetPart(hSM::OGRStyleMgrH, nPartId::Cint, pszStyleString)
    ccall((:OGR_SM_GetPart, libgdal), OGRStyleToolH, (OGRStyleMgrH, Cint, Cstring), hSM, nPartId, pszStyleString)
end


"""
    OGR_SM_AddPart(OGRStyleMgrH hSM,
                   OGRStyleToolH hST) -> int

Add a part (style tool) to the current style.

### Parameters
* **hSM**: handle to the style manager.
* **hST**: the style tool defining the part to add.

### Returns
TRUE on success, FALSE on errors.
"""
function OGR_SM_AddPart(hSM::OGRStyleMgrH, hST::OGRStyleToolH)
    ccall((:OGR_SM_AddPart, libgdal), Cint, (OGRStyleMgrH, OGRStyleToolH), hSM, hST)
end


"""
    OGR_SM_AddStyle(OGRStyleMgrH hSM,
                    const char * pszStyleName,
                    const char * pszStyleString) -> int

Add a style to the current style table.

### Parameters
* **hSM**: handle to the style manager.
* **pszStyleName**: the name of the style to add.
* **pszStyleString**: the style string to use, or NULL to use the style stored in the manager.

### Returns
TRUE on success, FALSE on errors.
"""
function OGR_SM_AddStyle(hSM::OGRStyleMgrH, pszStyleName, pszStyleString)
    ccall((:OGR_SM_AddStyle, libgdal), Cint, (OGRStyleMgrH, Cstring, Cstring), hSM, pszStyleName, pszStyleString)
end


"""
    OGR_ST_Create(OGRSTClassId eClassId) -> OGRStyleToolH

OGRStyleTool factory.

### Parameters
* **eClassId**: subclass of style tool to create. One of OGRSTCPen (1), OGRSTCBrush (2), OGRSTCSymbol (3) or OGRSTCLabel (4).

### Returns
an handle to the new style tool object or NULL if the creation failed.
"""
function OGR_ST_Create(eClassId::OGRSTClassId)
    ccall((:OGR_ST_Create, libgdal), OGRStyleToolH, (OGRSTClassId,), eClassId)
end


"""
    OGR_ST_Destroy(OGRStyleToolH hST) -> void

Destroy Style Tool.

### Parameters
* **hST**: handle to the style tool to destroy.
"""
function OGR_ST_Destroy(hST::OGRStyleToolH)
    ccall((:OGR_ST_Destroy, libgdal), Void, (OGRStyleToolH,), hST)
end


"""
    OGR_ST_GetType(OGRStyleToolH hST) -> OGRSTClassId

Determine type of Style Tool.

### Parameters
* **hST**: handle to the style tool.

### Returns
the style tool type, one of OGRSTCPen (1), OGRSTCBrush (2), OGRSTCSymbol (3) or OGRSTCLabel (4). Returns OGRSTCNone (0) if the OGRStyleToolH is invalid.
"""
function OGR_ST_GetType(hST::OGRStyleToolH)
    ccall((:OGR_ST_GetType, libgdal), OGRSTClassId, (OGRStyleToolH,), hST)
end


"""
    OGR_ST_GetUnit(OGRStyleToolH hST) -> OGRSTUnitId

Get Style Tool units.

### Parameters
* **hST**: handle to the style tool.

### Returns
the style tool units.
"""
function OGR_ST_GetUnit(hST::OGRStyleToolH)
    ccall((:OGR_ST_GetUnit, libgdal), OGRSTUnitId, (OGRStyleToolH,), hST)
end


"""
    OGR_ST_SetUnit(OGRStyleToolH hST,
                   OGRSTUnitId eUnit,
                   double dfGroundPaperScale) -> void

Set Style Tool units.

### Parameters
* **hST**: handle to the style tool.
* **eUnit**: the new unit.
* **dfGroundPaperScale**: ground to paper scale factor.
"""
function OGR_ST_SetUnit(hST::OGRStyleToolH, eUnit::OGRSTUnitId, dfGroundPaperScale::Cdouble)
    ccall((:OGR_ST_SetUnit, libgdal), Void, (OGRStyleToolH, OGRSTUnitId, Cdouble), hST, eUnit, dfGroundPaperScale)
end


"""
    OGR_ST_GetParamStr(OGRStyleToolH hST,
                       int eParam,
                       int * bValueIsNull) -> const char *

Get Style Tool parameter value as string.

### Parameters
* **hST**: handle to the style tool.
* **eParam**: the parameter id from the enumeration corresponding to the type of this style tool (one of the OGRSTPenParam, OGRSTBrushParam, OGRSTSymbolParam or OGRSTLabelParam enumerations)
* **bValueIsNull**: pointer to an integer that will be set to TRUE or FALSE to indicate whether the parameter value is NULL.

### Returns
the parameter value as string and sets bValueIsNull.
"""
function OGR_ST_GetParamStr(hST::OGRStyleToolH, eParam::Cint, bValueIsNull)
    ccall((:OGR_ST_GetParamStr, libgdal), Cstring, (OGRStyleToolH, Cint, Ptr{Cint}), hST, eParam, bValueIsNull)
end


"""
    OGR_ST_GetParamNum(OGRStyleToolH hST,
                       int eParam,
                       int * bValueIsNull) -> int

Get Style Tool parameter value as an integer.

### Parameters
* **hST**: handle to the style tool.
* **eParam**: the parameter id from the enumeration corresponding to the type of this style tool (one of the OGRSTPenParam, OGRSTBrushParam, OGRSTSymbolParam or OGRSTLabelParam enumerations)
* **bValueIsNull**: pointer to an integer that will be set to TRUE or FALSE to indicate whether the parameter value is NULL.

### Returns
the parameter value as integer and sets bValueIsNull.
"""
function OGR_ST_GetParamNum(hST::OGRStyleToolH, eParam::Cint, bValueIsNull)
    ccall((:OGR_ST_GetParamNum, libgdal), Cint, (OGRStyleToolH, Cint, Ptr{Cint}), hST, eParam, bValueIsNull)
end


"""
    OGR_ST_GetParamDbl(OGRStyleToolH hST,
                       int eParam,
                       int * bValueIsNull) -> double

Get Style Tool parameter value as a double.

### Parameters
* **hST**: handle to the style tool.
* **eParam**: the parameter id from the enumeration corresponding to the type of this style tool (one of the OGRSTPenParam, OGRSTBrushParam, OGRSTSymbolParam or OGRSTLabelParam enumerations)
* **bValueIsNull**: pointer to an integer that will be set to TRUE or FALSE to indicate whether the parameter value is NULL.

### Returns
the parameter value as double and sets bValueIsNull.
"""
function OGR_ST_GetParamDbl(hST::OGRStyleToolH, eParam::Cint, bValueIsNull)
    ccall((:OGR_ST_GetParamDbl, libgdal), Cdouble, (OGRStyleToolH, Cint, Ptr{Cint}), hST, eParam, bValueIsNull)
end


"""
    OGR_ST_SetParamStr(OGRStyleToolH hST,
                       int eParam,
                       const char * pszValue) -> void

Set Style Tool parameter value from a string.

### Parameters
* **hST**: handle to the style tool.
* **eParam**: the parameter id from the enumeration corresponding to the type of this style tool (one of the OGRSTPenParam, OGRSTBrushParam, OGRSTSymbolParam or OGRSTLabelParam enumerations)
* **pszValue**: the new parameter value
"""
function OGR_ST_SetParamStr(hST::OGRStyleToolH, eParam::Cint, pszValue)
    ccall((:OGR_ST_SetParamStr, libgdal), Void, (OGRStyleToolH, Cint, Cstring), hST, eParam, pszValue)
end


"""
    OGR_ST_SetParamNum(OGRStyleToolH hST,
                       int eParam,
                       int nValue) -> void

Set Style Tool parameter value from an integer.

### Parameters
* **hST**: handle to the style tool.
* **eParam**: the parameter id from the enumeration corresponding to the type of this style tool (one of the OGRSTPenParam, OGRSTBrushParam, OGRSTSymbolParam or OGRSTLabelParam enumerations)
* **nValue**: the new parameter value
"""
function OGR_ST_SetParamNum(hST::OGRStyleToolH, eParam::Cint, nValue::Cint)
    ccall((:OGR_ST_SetParamNum, libgdal), Void, (OGRStyleToolH, Cint, Cint), hST, eParam, nValue)
end


"""
    OGR_ST_SetParamDbl(OGRStyleToolH hST,
                       int eParam,
                       double dfValue) -> void

Set Style Tool parameter value from a double.

### Parameters
* **hST**: handle to the style tool.
* **eParam**: the parameter id from the enumeration corresponding to the type of this style tool (one of the OGRSTPenParam, OGRSTBrushParam, OGRSTSymbolParam or OGRSTLabelParam enumerations)
* **dfValue**: the new parameter value
"""
function OGR_ST_SetParamDbl(hST::OGRStyleToolH, eParam::Cint, dfValue::Cdouble)
    ccall((:OGR_ST_SetParamDbl, libgdal), Void, (OGRStyleToolH, Cint, Cdouble), hST, eParam, dfValue)
end


"""
    OGR_ST_GetStyleString(OGRStyleToolH hST) -> const char *

Get the style string for this Style Tool.

### Parameters
* **hST**: handle to the style tool.

### Returns
the style string for this style tool or "" if the hST is invalid.
"""
function OGR_ST_GetStyleString(hST::OGRStyleToolH)
    ccall((:OGR_ST_GetStyleString, libgdal), Cstring, (OGRStyleToolH,), hST)
end


"""
    OGR_ST_GetRGBFromString(OGRStyleToolH hST,
                            const char * pszColor,
                            int * pnRed,
                            int * pnGreen,
                            int * pnBlue,
                            int * pnAlpha) -> int

Return the r,g,b,a components of a color encoded in #RRGGBB[AA] format.

### Parameters
* **hST**: handle to the style tool.
* **pszColor**: the color to parse
* **pnRed**: pointer to an int in which the red value will be returned
* **pnGreen**: pointer to an int in which the green value will be returned
* **pnBlue**: pointer to an int in which the blue value will be returned
* **pnAlpha**: pointer to an int in which the (optional) alpha value will be returned

### Returns
TRUE if the color could be successfully parsed, or FALSE in case of errors.
"""
function OGR_ST_GetRGBFromString(hST::OGRStyleToolH, pszColor, pnRed, pnGreen, pnBlue, pnAlpha)
    ccall((:OGR_ST_GetRGBFromString, libgdal), Cint, (OGRStyleToolH, Cstring, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), hST, pszColor, pnRed, pnGreen, pnBlue, pnAlpha)
end


"""
    OGR_STBL_Create(void) -> OGRStyleTableH

OGRStyleTable factory.

### Returns
an handle to the new style table object.
"""
function OGR_STBL_Create()
    ccall((:OGR_STBL_Create, libgdal), OGRStyleTableH, ())
end


"""
    OGR_STBL_Destroy(OGRStyleTableH hSTBL) -> void

Destroy Style Table.

### Parameters
* **hSTBL**: handle to the style table to destroy.
"""
function OGR_STBL_Destroy(hSTBL::OGRStyleTableH)
    ccall((:OGR_STBL_Destroy, libgdal), Void, (OGRStyleTableH,), hSTBL)
end


"""
    OGR_STBL_AddStyle(OGRStyleTableH hStyleTable,
                      const char * pszName,
                      const char * pszStyleString) -> int

Add a new style in the table.

### Parameters
* **hStyleTable**: handle to the style table.
* **pszName**: the name the style to add.
* **pszStyleString**: the style string to add.

### Returns
TRUE on success, FALSE on error
"""
function OGR_STBL_AddStyle(hStyleTable::OGRStyleTableH, pszName, pszStyleString)
    ccall((:OGR_STBL_AddStyle, libgdal), Cint, (OGRStyleTableH, Cstring, Cstring), hStyleTable, pszName, pszStyleString)
end


"""
    OGR_STBL_SaveStyleTable(OGRStyleTableH hStyleTable,
                            const char * pszFilename) -> int

Save a style table to a file.

### Parameters
* **hStyleTable**: handle to the style table.
* **pszFilename**: the name of the file to save to.

### Returns
TRUE on success, FALSE on error
"""
function OGR_STBL_SaveStyleTable(hStyleTable::OGRStyleTableH, pszFilename)
    ccall((:OGR_STBL_SaveStyleTable, libgdal), Cint, (OGRStyleTableH, Cstring), hStyleTable, pszFilename)
end


"""
    OGR_STBL_LoadStyleTable(OGRStyleTableH hStyleTable,
                            const char * pszFilename) -> int

Load a style table from a file.

### Parameters
* **hStyleTable**: handle to the style table.
* **pszFilename**: the name of the file to load from.

### Returns
TRUE on success, FALSE on error
"""
function OGR_STBL_LoadStyleTable(hStyleTable::OGRStyleTableH, pszFilename)
    ccall((:OGR_STBL_LoadStyleTable, libgdal), Cint, (OGRStyleTableH, Cstring), hStyleTable, pszFilename)
end


"""
    OGR_STBL_Find(OGRStyleTableH hStyleTable,
                  const char * pszName) -> const char *

Get a style string by name.

### Parameters
* **hStyleTable**: handle to the style table.
* **pszName**: the name of the style string to find.

### Returns
the style string matching the name or NULL if not found or error.
"""
function OGR_STBL_Find(hStyleTable::OGRStyleTableH, pszName)
    ccall((:OGR_STBL_Find, libgdal), Cstring, (OGRStyleTableH, Cstring), hStyleTable, pszName)
end


"""
    OGR_STBL_ResetStyleStringReading(OGRStyleTableH hStyleTable) -> void

Reset the next style pointer to 0.

### Parameters
* **hStyleTable**: handle to the style table.
"""
function OGR_STBL_ResetStyleStringReading(hStyleTable::OGRStyleTableH)
    ccall((:OGR_STBL_ResetStyleStringReading, libgdal), Void, (OGRStyleTableH,), hStyleTable)
end


"""
    OGR_STBL_GetNextStyle(OGRStyleTableH hStyleTable) -> const char *

Get the next style string from the table.

### Parameters
* **hStyleTable**: handle to the style table.

### Returns
the next style string or NULL on error.
"""
function OGR_STBL_GetNextStyle(hStyleTable::OGRStyleTableH)
    ccall((:OGR_STBL_GetNextStyle, libgdal), Cstring, (OGRStyleTableH,), hStyleTable)
end


"""
    OGR_STBL_GetLastStyleName(OGRStyleTableH hStyleTable) -> const char *

Get the style name of the last style string fetched with OGR_STBL_GetNextStyle.

### Parameters
* **hStyleTable**: handle to the style table.

### Returns
the Name of the last style string or NULL on error.
"""
function OGR_STBL_GetLastStyleName(hStyleTable::OGRStyleTableH)
    ccall((:OGR_STBL_GetLastStyleName, libgdal), Cstring, (OGRStyleTableH,), hStyleTable)
end
