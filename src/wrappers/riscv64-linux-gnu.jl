# Autogenerated wrapper script for FLINT_jll for riscv64-linux-gnu
export libflint

using GMP_jll
using MPFR_jll
using OpenBLAS32_jll
JLLWrappers.@generate_wrapper_header("FLINT")
JLLWrappers.@declare_library_product(libflint, "libflint.so.21")
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll, MPFR_jll, OpenBLAS32_jll)
    JLLWrappers.@init_library_product(
        libflint,
        "lib/libflint.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
      if !Sys.iswindows() && !(get(ENV, "NEMO_THREADED", "") == "1")
    #to match the global gmp ones
    fm = dlsym(libflint_handle, :__flint_set_memory_functions)
    ccall(fm, Nothing,
      (Ptr{Nothing},Ptr{Nothing},Ptr{Nothing},Ptr{Nothing}),
        cglobal(:jl_malloc),
        cglobal(:jl_calloc),
        cglobal(:jl_realloc),
        cglobal(:jl_free))
  end

end  # __init__()
