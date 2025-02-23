# Testing for fmesher functions using sf objects.
# For testing while editing code.  Eventually these will be the
# basis for proper package tests.  For now should work
# standalone by sourcing the relevant fmesher_*.R scripts directly

library(inlabru)
library(INLA)
library(sf)
source(here::here("R", "fmesher_crs.R"))
source(here::here("R", "sf_utils.R"))
gorillas_sf = readRDS(here::here("sf", "Data", "gorillas_sf.rds"))

#### testing for fm_as_inla_mesh_segment.sf ###

## sfc_POINT ##

# compare inla.mesh.segment with matrix input
# to fm_as_inla_mesh_segment with sf point input

# matrix version
loc.bnd = matrix(c(0,0, 1,0, 1,1, 0,1), 4, 2, byrow=TRUE)
segm.bnd = inla.mesh.segment(loc.bnd, 
                             idx = seq_len(nrow(loc.bnd)),  
                             is.bnd = TRUE)

# Note: this returns different indexing if idx is not set manually here. 
# Setting this to seq_len(nrow(loc.bnd)) makes the test work.

# From inla.mesh.segment documentation:
#   If ‘is.bnd==TRUE’, defaults to linking all
#   the points in ‘loc’, as ‘c(1:nrow(loc),1L)’, otherwise
#   ‘1:nrow(loc)’.
#
# However, fm_as_inla_mesh_segment.SpatialPoints uses seq_len(nrow(loc)) even if
# is.bnd == TRUE
#
# I am not sure if this is the desired behaviour.

# sf version
loc.sf = st_as_sf(as.data.frame(loc.bnd),
                  coords = c(1,2))

segm.bnd.sf = fm_as_inla_mesh_segment(loc.sf)

identical(segm.bnd.sf, segm.bnd)
str(segm.bnd)
str(segm.bnd.sf)

crs = st_crs(st_geometry(loc.sf))

# check warning message for xyz
loc.sf.xyz = st_as_sf(as.data.frame(cbind(loc.bnd, 1)),
                      coords = c(1,2,3))
class(loc.sf.xyz)
class(st_geometry(loc.sf.xyz))
class(st_geometry(loc.sf.xyz)[[1]])

segm.bnd.sf.xym = fm_as_inla_mesh_segment(loc.sf.xyz)

## scf_LINESTRING ##

pts1 <- rbind(c(0,3),c(0,4),c(1,5),c(2,5))
pts2 <- rbind(c(1,1),c(0,0),c(0,-1),c(-2,-2))
seg1 = INLA::inla.mesh.segment(loc = pts1,
                               idx = seq_len(nrow(pts1)),
                               is.bnd = FALSE)

seg2 = INLA::inla.mesh.segment(loc = pts2,
                               idx = seq_len(nrow(pts2)),
                               is.bnd = FALSE)

seg = fm_internal_sp2segment_join(list(seg1, seg2),
                                  grp = seq_len(length(seg)),
                                  closed = FALSE)

line_str1 <- st_linestring(pts1)
line_str2 <- st_linestring(pts2)
line_sfc = st_as_sfc(list(line_str1, line_str2))
line_sf = st_sf(geometry = line_sfc)
seg_sf = fm_as_inla_mesh_segment(line_sf)
identical(seg_sf, seg)

str(seg)
str(seg_sf)

## sfc_POLYGON ##

# check for disjoint polygons
out = matrix(c(0,0,10,0,10,10,0,10,0,0),ncol=2, byrow=TRUE)
hole1 = matrix(c(1,1,1,2,2,2,2,1,1,1),ncol=2, byrow=TRUE)
hole2 = matrix(c(5,5,5,6,6,6,6,5,5,5),ncol=2, byrow=TRUE)
goodp = st_polygon(list(out, hole1, hole2))
st_check_polygon(goodp)   # should be true
badp = st_polygon(list(out, hole1, hole2, out + 15))
st_check_polygon(badp)    # should be false


