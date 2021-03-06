module Space

using ..Util
import ..Util: increment!
using Spec
import Flux     # FIXME: Can we excise this from this submodule?
import Random
using Random: GLOBAL_RNG

export Ω, uid, @id, ID
export ΩBase, resolve, linearize, unlinearize
export append, base, combine, increment!, increment,
       Paired, pair
export ΩProj, parentω, resolve
export TaggedΩ, tag, Tags, hastags
export SimpleΩ

include("idgen.jl")         # Id generation
include("index.jl")         # Pairing functions for omega ids
include("omega.jl")         # Sample Space
include("proj.jl")          # Sample Space Projection
include("tags.jl")          # Metadata
include("tagged.jl")        # Space space Tagged with metadata
include("simple.jl")        # Simple Ω

end