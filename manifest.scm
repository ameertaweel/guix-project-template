(use-modules (gnu packages))

(concatenate-manifests
 (list
  ;; override minimal Guix deps
  (specifications->manifest
   (list "bash" "git" "git:send-email"))
  ;; make imported guix modules work in repl
  (package->development-manifest (specification->package "guix"))))
