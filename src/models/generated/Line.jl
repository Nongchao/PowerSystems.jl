#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct Line <: ACBranch
        name::String
        available::Bool
        activepower_flow::Float64
        reactivepower_flow::Float64
        arc::Arc
        r::Float64
        x::Float64
        b::NamedTuple{(:from, :to), Tuple{Float64, Float64}}
        rate::Float64
        anglelimits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
        services::Vector{Service}
        ext::Dict{String, Any}
        forecasts::InfrastructureSystems.Forecasts
        internal::InfrastructureSystemsInternal
    end



# Arguments
- `name::String`
- `available::Bool`
- `activepower_flow::Float64`
- `reactivepower_flow::Float64`
- `arc::Arc`
- `r::Float64`: System per-unit value, validation range: (0, 4), action if invalid: error
- `x::Float64`: System per-unit value, validation range: (0, 4), action if invalid: error
- `b::NamedTuple{(:from, :to), Tuple{Float64, Float64}}`: System per-unit value, validation range: (0, 100), action if invalid: error
- `rate::Float64`
- `anglelimits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}`, validation range: (-1.571, 1.571), action if invalid: error
- `services::Vector{Service}`: Services that this device contributes to
- `ext::Dict{String, Any}`
- `forecasts::InfrastructureSystems.Forecasts`: internal forecast storage
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct Line <: ACBranch
    name::String
    available::Bool
    activepower_flow::Float64
    reactivepower_flow::Float64
    arc::Arc
    "System per-unit value"
    r::Float64
    "System per-unit value"
    x::Float64
    "System per-unit value"
    b::NamedTuple{(:from, :to), Tuple{Float64, Float64}}
    rate::Float64
    anglelimits::NamedTuple{(:min, :max), Tuple{Float64, Float64}}
    "Services that this device contributes to"
    services::Vector{Service}
    ext::Dict{String, Any}
    "internal forecast storage"
    forecasts::InfrastructureSystems.Forecasts
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function Line(name, available, activepower_flow, reactivepower_flow, arc, r, x, b, rate, anglelimits, services=Device[], ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    Line(name, available, activepower_flow, reactivepower_flow, arc, r, x, b, rate, anglelimits, services, ext, forecasts, InfrastructureSystemsInternal(), )
end

function Line(; name, available, activepower_flow, reactivepower_flow, arc, r, x, b, rate, anglelimits, services=Device[], ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    Line(name, available, activepower_flow, reactivepower_flow, arc, r, x, b, rate, anglelimits, services, ext, forecasts, )
end

# Constructor for demo purposes; non-functional.
function Line(::Nothing)
    Line(;
        name="init",
        available=false,
        activepower_flow=0.0,
        reactivepower_flow=0.0,
        arc=Arc(Bus(nothing), Bus(nothing)),
        r=0.0,
        x=0.0,
        b=(from=0.0, to=0.0),
        rate=0.0,
        anglelimits=(min=-1.571, max=1.571),
        services=Device[],
        ext=Dict{String, Any}(),
        forecasts=InfrastructureSystems.Forecasts(),
    )
end


InfrastructureSystems.get_name(value::Line) = value.name
"""Get Line available."""
get_available(value::Line) = value.available
"""Get Line activepower_flow."""
get_activepower_flow(value::Line) = value.activepower_flow
"""Get Line reactivepower_flow."""
get_reactivepower_flow(value::Line) = value.reactivepower_flow
"""Get Line arc."""
get_arc(value::Line) = value.arc
"""Get Line r."""
get_r(value::Line) = value.r
"""Get Line x."""
get_x(value::Line) = value.x
"""Get Line b."""
get_b(value::Line) = value.b
"""Get Line rate."""
get_rate(value::Line) = value.rate
"""Get Line anglelimits."""
get_anglelimits(value::Line) = value.anglelimits
"""Get Line services."""
get_services(value::Line) = value.services
"""Get Line ext."""
get_ext(value::Line) = value.ext

InfrastructureSystems.get_forecasts(value::Line) = value.forecasts
"""Get Line internal."""
get_internal(value::Line) = value.internal


InfrastructureSystems.set_name!(value::Line, val::String) = value.name = val
"""Set Line available."""
set_available!(value::Line, val::Bool) = value.available = val
"""Set Line activepower_flow."""
set_activepower_flow!(value::Line, val::Float64) = value.activepower_flow = val
"""Set Line reactivepower_flow."""
set_reactivepower_flow!(value::Line, val::Float64) = value.reactivepower_flow = val
"""Set Line arc."""
set_arc!(value::Line, val::Arc) = value.arc = val
"""Set Line r."""
set_r!(value::Line, val::Float64) = value.r = val
"""Set Line x."""
set_x!(value::Line, val::Float64) = value.x = val
"""Set Line b."""
set_b!(value::Line, val::NamedTuple{(:from, :to), Tuple{Float64, Float64}}) = value.b = val
"""Set Line rate."""
set_rate!(value::Line, val::Float64) = value.rate = val
"""Set Line anglelimits."""
set_anglelimits!(value::Line, val::NamedTuple{(:min, :max), Tuple{Float64, Float64}}) = value.anglelimits = val
"""Set Line services."""
set_services!(value::Line, val::Vector{Service}) = value.services = val
"""Set Line ext."""
set_ext!(value::Line, val::Dict{String, Any}) = value.ext = val

InfrastructureSystems.set_forecasts!(value::Line, val::InfrastructureSystems.Forecasts) = value.forecasts = val
"""Set Line internal."""
set_internal!(value::Line, val::InfrastructureSystemsInternal) = value.internal = val
