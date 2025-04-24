return {
	cmd = { "ocamllsp" },
	single_file_support = true,
	filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" },
	root_markers = { "*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace" },
}
