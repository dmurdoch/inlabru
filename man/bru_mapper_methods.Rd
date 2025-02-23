% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mappers.R
\name{bru_mapper_methods}
\alias{bru_mapper_methods}
\alias{ibm_n.bru_mapper_inla_mesh_2d}
\alias{ibm_values.bru_mapper_inla_mesh_2d}
\alias{ibm_jacobian.bru_mapper_inla_mesh_2d}
\alias{ibm_n.bru_mapper_inla_mesh_1d}
\alias{ibm_values.bru_mapper_inla_mesh_1d}
\alias{ibm_jacobian.bru_mapper_inla_mesh_1d}
\alias{ibm_invalid_output.bru_mapper_index}
\alias{ibm_jacobian.bru_mapper_index}
\alias{ibm_n.bru_mapper_taylor}
\alias{ibm_n_output.bru_mapper_taylor}
\alias{ibm_values.bru_mapper_taylor}
\alias{ibm_jacobian.bru_mapper_taylor}
\alias{ibm_eval.bru_mapper_taylor}
\alias{ibm_n.bru_mapper_linear}
\alias{ibm_values.bru_mapper_linear}
\alias{ibm_jacobian.bru_mapper_linear}
\alias{ibm_n.bru_mapper_matrix}
\alias{ibm_values.bru_mapper_matrix}
\alias{ibm_jacobian.bru_mapper_matrix}
\alias{ibm_n.bru_mapper_factor}
\alias{ibm_values.bru_mapper_factor}
\alias{ibm_jacobian.bru_mapper_factor}
\alias{ibm_n.bru_mapper_const}
\alias{ibm_values.bru_mapper_const}
\alias{ibm_jacobian.bru_mapper_const}
\alias{ibm_eval.bru_mapper_const}
\alias{ibm_n.bru_mapper_scale}
\alias{ibm_n_output.bru_mapper_scale}
\alias{ibm_values.bru_mapper_scale}
\alias{ibm_jacobian.bru_mapper_scale}
\alias{ibm_linear.bru_mapper_scale}
\alias{ibm_eval.bru_mapper_scale}
\alias{ibm_n.bru_mapper_aggregate}
\alias{ibm_n_output.bru_mapper_aggregate}
\alias{ibm_values.bru_mapper_aggregate}
\alias{ibm_jacobian.bru_mapper_aggregate}
\alias{ibm_eval.bru_mapper_aggregate}
\alias{ibm_linear.bru_mapper_aggregate}
\alias{ibm_jacobian.bru_mapper_logsumexp}
\alias{ibm_eval.bru_mapper_logsumexp}
\alias{ibm_linear.bru_mapper_logsumexp}
\alias{ibm_n.bru_mapper_pipe}
\alias{ibm_n_output.bru_mapper_pipe}
\alias{ibm_values.bru_mapper_pipe}
\alias{ibm_jacobian.bru_mapper_pipe}
\alias{ibm_linear.bru_mapper_pipe}
\alias{ibm_eval.bru_mapper_pipe}
\alias{ibm_n.bru_mapper_multi}
\alias{ibm_n_output.bru_mapper_multi}
\alias{ibm_values.bru_mapper_multi}
\alias{ibm_is_linear.bru_mapper_multi}
\alias{ibm_jacobian.bru_mapper_multi}
\alias{ibm_linear.bru_mapper_multi}
\alias{ibm_eval.bru_mapper_multi}
\alias{ibm_invalid_output.bru_mapper_multi}
\alias{[.bru_mapper_multi}
\alias{ibm_names.bru_mapper_multi}
\alias{ibm_names<-.bru_mapper_multi}
\alias{ibm_n.bru_mapper_collect}
\alias{ibm_n_output.bru_mapper_collect}
\alias{ibm_values.bru_mapper_collect}
\alias{ibm_is_linear.bru_mapper_collect}
\alias{ibm_jacobian.bru_mapper_collect}
\alias{ibm_eval.bru_mapper_collect}
\alias{ibm_linear.bru_mapper_collect}
\alias{ibm_invalid_output.bru_mapper_collect}
\alias{[.bru_mapper_collect}
\alias{ibm_names.bru_mapper_collect}
\alias{ibm_names<-.bru_mapper_collect}
\alias{ibm_n.bru_mapper_harmonics}
\alias{ibm_jacobian.bru_mapper_harmonics}
\title{Methods for bru_mapper objects}
\usage{
\method{ibm_n}{bru_mapper_inla_mesh_2d}(mapper, ...)

\method{ibm_values}{bru_mapper_inla_mesh_2d}(mapper, ...)

\method{ibm_jacobian}{bru_mapper_inla_mesh_2d}(mapper, input, ...)

\method{ibm_n}{bru_mapper_inla_mesh_1d}(mapper, ...)

\method{ibm_values}{bru_mapper_inla_mesh_1d}(mapper, ...)

\method{ibm_jacobian}{bru_mapper_inla_mesh_1d}(mapper, input, ...)

\method{ibm_invalid_output}{bru_mapper_index}(mapper, input, state, ...)

\method{ibm_jacobian}{bru_mapper_index}(mapper, input, state, ...)

\method{ibm_n}{bru_mapper_taylor}(mapper, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_n_output}{bru_mapper_taylor}(mapper, input, ...)

\method{ibm_values}{bru_mapper_taylor}(mapper, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_jacobian}{bru_mapper_taylor}(mapper, ..., multi = FALSE)

\method{ibm_eval}{bru_mapper_taylor}(mapper, input = NULL, state = NULL, ...)

\method{ibm_n}{bru_mapper_linear}(mapper, ...)

\method{ibm_values}{bru_mapper_linear}(mapper, ...)

\method{ibm_jacobian}{bru_mapper_linear}(mapper, input, ...)

\method{ibm_n}{bru_mapper_matrix}(mapper, ...)

\method{ibm_values}{bru_mapper_matrix}(mapper, ...)

\method{ibm_jacobian}{bru_mapper_matrix}(mapper, input, state = NULL, inla_f = FALSE, ...)

\method{ibm_n}{bru_mapper_factor}(mapper, ...)

\method{ibm_values}{bru_mapper_factor}(mapper, ...)

\method{ibm_jacobian}{bru_mapper_factor}(mapper, input, ...)

\method{ibm_n}{bru_mapper_const}(mapper, ...)

\method{ibm_values}{bru_mapper_const}(mapper, ...)

\method{ibm_jacobian}{bru_mapper_const}(mapper, input, ...)

\method{ibm_eval}{bru_mapper_const}(mapper, input, state = NULL, ...)

\method{ibm_n}{bru_mapper_scale}(mapper, ..., state = NULL, n_state = NULL)

\method{ibm_n_output}{bru_mapper_scale}(mapper, input, state = NULL, ..., n_state = NULL)

\method{ibm_values}{bru_mapper_scale}(mapper, ..., state = NULL, n_state = NULL)

\method{ibm_jacobian}{bru_mapper_scale}(mapper, input, state = NULL, ..., sub_lin = NULL)

\method{ibm_linear}{bru_mapper_scale}(mapper, input, state, ...)

\method{ibm_eval}{bru_mapper_scale}(mapper, input, state = NULL, ..., sub_lin = NULL)

\method{ibm_n}{bru_mapper_aggregate}(mapper, ..., input = NULL, state = NULL, n_state = NULL)

\method{ibm_n_output}{bru_mapper_aggregate}(mapper, input = NULL, ...)

\method{ibm_values}{bru_mapper_aggregate}(mapper, ..., state = NULL, n_state = NULL)

\method{ibm_jacobian}{bru_mapper_aggregate}(mapper, input, state = NULL, ...)

\method{ibm_eval}{bru_mapper_aggregate}(mapper, input, state = NULL, ..., sub_lin = NULL)

\method{ibm_linear}{bru_mapper_aggregate}(mapper, input, state, ...)

\method{ibm_jacobian}{bru_mapper_logsumexp}(mapper, input, state = NULL, ...)

\method{ibm_eval}{bru_mapper_logsumexp}(mapper, input, state = NULL, ..., sub_lin = NULL)

\method{ibm_linear}{bru_mapper_logsumexp}(mapper, input, state, ...)

\method{ibm_n}{bru_mapper_pipe}(mapper, ..., state = NULL)

\method{ibm_n_output}{bru_mapper_pipe}(mapper, input, state = NULL, ...)

\method{ibm_values}{bru_mapper_pipe}(mapper, ...)

\method{ibm_jacobian}{bru_mapper_pipe}(mapper, input, state = NULL, ...)

\method{ibm_linear}{bru_mapper_pipe}(mapper, input, state, ...)

\method{ibm_eval}{bru_mapper_pipe}(mapper, input, state = NULL, ...)

\method{ibm_n}{bru_mapper_multi}(mapper, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_n_output}{bru_mapper_multi}(mapper, input, ...)

\method{ibm_values}{bru_mapper_multi}(mapper, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_is_linear}{bru_mapper_multi}(mapper, multi = FALSE, ...)

\method{ibm_jacobian}{bru_mapper_multi}(
  mapper,
  input,
  state = NULL,
  inla_f = FALSE,
  multi = FALSE,
  ...,
  sub_A = NULL
)

\method{ibm_linear}{bru_mapper_multi}(mapper, input, state, inla_f = FALSE, ...)

\method{ibm_eval}{bru_mapper_multi}(mapper, input, state = NULL, inla_f = FALSE, ..., pre_A = NULL)

\method{ibm_invalid_output}{bru_mapper_multi}(mapper, input, state, inla_f = FALSE, multi = FALSE, ...)

\method{[}{bru_mapper_multi}(x, i, drop = TRUE)

\method{ibm_names}{bru_mapper_multi}(mapper)

\method{ibm_names}{bru_mapper_multi}(mapper) <- value

\method{ibm_n}{bru_mapper_collect}(mapper, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_n_output}{bru_mapper_collect}(mapper, input, state = NULL, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_values}{bru_mapper_collect}(mapper, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_is_linear}{bru_mapper_collect}(mapper, inla_f = FALSE, multi = FALSE, ...)

\method{ibm_jacobian}{bru_mapper_collect}(
  mapper,
  input,
  state = NULL,
  inla_f = FALSE,
  multi = FALSE,
  ...,
  sub_lin = NULL
)

\method{ibm_eval}{bru_mapper_collect}(
  mapper,
  input,
  state,
  inla_f = FALSE,
  multi = FALSE,
  ...,
  sub_lin = NULL
)

\method{ibm_linear}{bru_mapper_collect}(mapper, input, state, inla_f = FALSE, ...)

\method{ibm_invalid_output}{bru_mapper_collect}(mapper, input, state, inla_f = FALSE, multi = FALSE, ...)

\method{[}{bru_mapper_collect}(x, i, drop = TRUE)

\method{ibm_names}{bru_mapper_collect}(mapper)

\method{ibm_names}{bru_mapper_collect}(mapper) <- value

\method{ibm_n}{bru_mapper_harmonics}(mapper, inla_f = FALSE, ...)

\method{ibm_jacobian}{bru_mapper_harmonics}(mapper, input, state = NULL, inla_f = FALSE, ...)
}
\arguments{
\item{mapper}{A mapper S3 object, inheriting from \code{bru_mapper}.}

\item{...}{Arguments passed on to other methods}

\item{input}{Data input for the mapper.}

\item{state}{A vector of latent state values for the mapping,
of length \code{ibm_n(mapper, inla_f = FALSE)}}

\item{inla_f}{logical; when \code{TRUE} for \code{ibm_n()} and \code{ibm_values()}, the
result must be compatible with the \code{INLA::f(...)} and corresponding
\code{INLA::inla.stack(...)} constructions.  For \verb{ibm_\{eval,jacobian,linear\}},
the \code{input} interpretation may be different.
Implementations do not normally need to do anything different, except
for mappers of the type needed for hidden multicomponent models such
as "bym2", which can be handled by \code{bru_mapper_collect}.}

\item{multi}{logical;
If \code{TRUE} (or positive), recurse one level into sub-mappers}

\item{n_state}{integer giving the length of the state vector for mappers
that have state dependent output size.}

\item{sub_lin}{Internal, optional pre-computed sub-mapper information}

\item{sub_A}{Internal; precomputed Jacobian matrices.}

\item{pre_A}{Internal; precomputed Jacobian matrix}

\item{x}{object from which to extract element(s)}

\item{i}{indices specifying element(s) to extract}

\item{drop}{logical;
For \verb{[.bru_mapper_collect}, whether to extract an individual mapper when
\code{i} identifies a single element. If \code{FALSE}, a list of sub-mappers is
returned (suitable e.g. for creating a new \code{bru_mapper_collect} object).
Default: \code{TRUE}}

\item{value}{a character vector of up to the same length as the number
of mappers in the multi-mapper x}
}
\value{
\itemize{
\item \code{[}-indexing a \code{bru_mapper_multi} extracts a subset
\code{bru_mapper_multi} object (for drop \code{FALSE}) or an individual sub-mapper
(for drop \code{TRUE}, and \code{i} identifies a single element)
}

\itemize{
\item \code{[}-indexing a \code{bru_mapper_collect} extracts a subset
\code{bru_mapper_collect} object (for drop \code{FALSE}) or an individual sub-mapper
(for drop \code{TRUE}, and \code{i} identifies a single element)
}

\itemize{
\item The \code{names()} method for \code{bru_mapper_collect} returns the names from the
sub-mappers list
}
}
\description{
A \code{bru_mapper} sub-class implementation must provide an
\code{ibm_jacobian()} method. If the model size 'n' and definition
values 'values' are stored in the object itself, default methods are
available (see Details). Otherwise the
\code{ibm_n()} and \code{ibm_values()} methods also need to be provided.
}
\details{
\itemize{
\item The \code{ibm_eval.bru_mapper_taylor()} evaluates linearised
mapper information at the given \code{state}. The \code{input} argument is ignored,
so that the usual argument order
\code{ibm_eval(mapper, input, state)} syntax can be used, but also
\code{ibm_eval(mapper, state = state)}.  For a mapper with a named jacobian list,
the \code{state} argument must also be a named list.  If \code{state} is \code{NULL},
all-zero is assumed.
}

For \code{bru_mapper_scale}, \code{input} values without a \code{scale} element
are interpreted as no scaling.

\itemize{
\item For \code{bru_mapper_aggregate}, \code{input} should be a list with elements \code{block}
and \code{weights}. \code{block}
should be a vector of the same length as the \code{state}, or \code{NULL}, with \code{NULL}
equivalent to all-1.
If \code{weights} is \code{NULL}, it's interpreted as all-1.
}

\itemize{
\item For \code{bru_mapper_logsumexp}, \code{input} should be a list with elements \code{block}
and \code{weights}. \code{block}
should be a vector of the same length as the \code{state}, or \code{NULL}, with \code{NULL}
equivalent to all-1.
If \code{weights} is \code{NULL}, it's interpreted as all-1.
}

\itemize{
\item \code{ibm_jacobian} for \code{bru_mapper_multi} accepts a list with
named entries, or a list with unnamed but ordered elements.
The names must match the sub-mappers, see \code{\link[=ibm_names.bru_mapper_multi]{ibm_names.bru_mapper_multi()}}.
Each list element should take a format accepted by the corresponding
sub-mapper. In case each element is a vector, the input can be given as a
data.frame with named columns, a matrix with named columns, or a matrix
with unnamed but ordered columns.
}

\itemize{
\item \code{ibm_invalid_output} for \code{bru_mapper_multi} accepts a list with
named entries, or a list with unnamed but ordered elements.
The names must match the sub-mappers, see \code{\link[=ibm_names.bru_mapper_multi]{ibm_names.bru_mapper_multi()}}.
Each list element should take a format accepted by the corresponding
sub-mapper. In case each element is a vector, the input can be given as a
data.frame with named columns, a matrix with named columns, or a matrix
with unnamed but ordered columns.
}

\itemize{
\item \code{ibm_jacobian} for \code{bru_mapper_collect} accepts a list with
named entries, or a list with unnamed but ordered elements.
The names must match the sub-mappers, see \code{\link[=ibm_names.bru_mapper_collect]{ibm_names.bru_mapper_collect()}}.
Each list element should take a format accepted by the corresponding
sub-mapper. In case each element is a vector, the input can be given as a
data.frame with named columns, a matrix with named columns, or a matrix
with unnamed but ordered columns. When \code{inla_f=TRUE} and \code{hidden=TRUE} in
the mapper definition, the input format should instead match that of
the first, non-hidden, sub-mapper.
}

\itemize{
\item \code{ibm_invalid_output} for \code{bru_mapper_collect} accepts a list with
named entries, or a list with unnamed but ordered elements.
The names must match the sub-mappers, see \code{\link[=ibm_names.bru_mapper_collect]{ibm_names.bru_mapper_collect()}}.
Each list element should take a format accepted by the corresponding
sub-mapper. In case each element is a vector, the input can be given as a
data.frame with named columns, a matrix with named columns, or a matrix
with unnamed but ordered columns.
}
}
\section{Functions}{
\itemize{
\item \code{ibm_names(bru_mapper_multi)}: Returns the names from the sub-mappers list

}}
\seealso{
\link{bru_mapper} for constructor methods, and
\link{bru_get_mapper} for hooks to extract mappers from latent model object
class objects.

\link{bru_mapper}, \link{bru_mapper_generics}
}
