(lang dune 3.8)

(generate_opam_files)

(package
 (name oni2-oniguruma)
 (depends
  (ocaml
   (>= 5.1.0))
  conf-oniguruma
  dune-configurator
  (ocaml-lsp-server :with-test)
  (ocamlformat :with-test)))
