#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct Transfer <: Service
        name::String
        available::Bool
        requirement::Float64
        ext::Dict{String, Any}
        forecasts::InfrastructureSystems.Forecasts
        internal::InfrastructureSystemsInternal
    end



# Arguments
- `name::String`
- `available::Bool`
- `requirement::Float64`
- `ext::Dict{String, Any}`
- `forecasts::InfrastructureSystems.Forecasts`: internal forecast storage
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct Transfer <: Service
    name::String
    available::Bool
    requirement::Float64
    ext::Dict{String, Any}
    "internal forecast storage"
    forecasts::InfrastructureSystems.Forecasts
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function Transfer(name, available, requirement, ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    Transfer(name, available, requirement, ext, forecasts, InfrastructureSystemsInternal(), )
end

function Transfer(; name, available, requirement, ext=Dict{String, Any}(), forecasts=InfrastructureSystems.Forecasts(), )
    Transfer(name, available, requirement, ext, forecasts, )
end

# Constructor for demo purposes; non-functional.
function Transfer(::Nothing)
    Transfer(;
        name="init",
        available=false,
        requirement=0.0,
        ext=Dict{String, Any}(),
        forecasts=InfrastructureSystems.Forecasts(),
    )
end


InfrastructureSystems.get_name(value::Transfer) = value.name
"""Get Transfer available."""
get_available(value::Transfer) = value.available
"""Get Transfer requirement."""
get_requirement(value::Transfer) = value.requirement
"""Get Transfer ext."""
get_ext(value::Transfer) = value.ext

InfrastructureSystems.get_forecasts(value::Transfer) = value.forecasts
"""Get Transfer internal."""
get_internal(value::Transfer) = value.internal


InfrastructureSystems.set_name!(value::Transfer, val::String) = value.name = val
"""Set Transfer available."""
set_available!(value::Transfer, val::Bool) = value.available = val
"""Set Transfer requirement."""
set_requirement!(value::Transfer, val::Float64) = value.requirement = val
"""Set Transfer ext."""
set_ext!(value::Transfer, val::Dict{String, Any}) = value.ext = val

InfrastructureSystems.set_forecasts!(value::Transfer, val::InfrastructureSystems.Forecasts) = value.forecasts = val
"""Set Transfer internal."""
set_internal!(value::Transfer, val::InfrastructureSystemsInternal) = value.internal = val
