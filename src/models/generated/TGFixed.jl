#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct TGFixed <: TurbineGov
        efficiency::Float64
        P_ref::Float64
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int64
        internal::InfrastructureSystemsInternal
    end

Parameters of a fixed Turbine Governor that returns a fixed mechanical torque
 given by the product of P_ref*efficiency

# Arguments
- `efficiency::Float64`:  Efficiency factor that multiplies P_ref, validation range: (0, nothing)
- `P_ref::Float64`: Reference Power Set-point, validation range: (0, nothing)
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`
- `n_states::Int64`
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct TGFixed <: TurbineGov
    " Efficiency factor that multiplies P_ref"
    efficiency::Float64
    "Reference Power Set-point"
    P_ref::Float64
    ext::Dict{String, Any}
    states::Vector{Symbol}
    n_states::Int64
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function TGFixed(efficiency, P_ref=1.0, ext=Dict{String, Any}(), )
    TGFixed(efficiency, P_ref, ext, Vector{Symbol}(), 0, InfrastructureSystemsInternal(), )
end

function TGFixed(; efficiency, P_ref=1.0, ext=Dict{String, Any}(), )
    TGFixed(efficiency, P_ref, ext, )
end

# Constructor for demo purposes; non-functional.
function TGFixed(::Nothing)
    TGFixed(;
        efficiency=0,
        P_ref=0,
        ext=Dict{String, Any}(),
    )
end

"""Get TGFixed efficiency."""
get_efficiency(value::TGFixed) = value.efficiency
"""Get TGFixed P_ref."""
get_P_ref(value::TGFixed) = value.P_ref
"""Get TGFixed ext."""
get_ext(value::TGFixed) = value.ext
"""Get TGFixed states."""
get_states(value::TGFixed) = value.states
"""Get TGFixed n_states."""
get_n_states(value::TGFixed) = value.n_states
"""Get TGFixed internal."""
get_internal(value::TGFixed) = value.internal

"""Set TGFixed efficiency."""
set_efficiency!(value::TGFixed, val::Float64) = value.efficiency = val
"""Set TGFixed P_ref."""
set_P_ref!(value::TGFixed, val::Float64) = value.P_ref = val
"""Set TGFixed ext."""
set_ext!(value::TGFixed, val::Dict{String, Any}) = value.ext = val
"""Set TGFixed states."""
set_states!(value::TGFixed, val::Vector{Symbol}) = value.states = val
"""Set TGFixed n_states."""
set_n_states!(value::TGFixed, val::Int64) = value.n_states = val
"""Set TGFixed internal."""
set_internal!(value::TGFixed, val::InfrastructureSystemsInternal) = value.internal = val
