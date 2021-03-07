load("@obazl_rules_ocaml//ocaml:providers.bzl", "OpamConfig", "BuildConfig")

opam_pkgs = {
    "alcotest": ["1.1.0"],
    "base": ["v0.12.0"],
    "base_bigstring": ["v0.12.0"],
    "ocaml-migrate-parsetree": ["1.7.3"],
    "ppx_tools_versioned": ["5.4.0", ["ppx_tools_versioned.metaquot_402"]],
    "ppxlib": ["0.8.1", ["ppxlib.metaquot"]],
    "result": ["1.3"],
    # "unix": [],
    "yojson": ["1.7.0"],
}

opam = OpamConfig(
    version = "2.0",
    builds = {
        "mina-0.1.0": BuildConfig(
            default  = True,
            switch   = "4.07.1",
            compiler = "4.07.1",
            packages = opam_pkgs,
            verify   = True,
        ),
        "4.07.1": BuildConfig(
            compiler = "4.07.1",
            packages = opam_pkgs
        )
    }
)
