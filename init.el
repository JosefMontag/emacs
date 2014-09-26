;;; package -- Summary
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-c h") 'helm-mini)

(load-theme 'xoria t)

(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(;; general configuration
    magit
    flycheck
    ido-vertical-mode
    fuzzy
    s
    ag
    helm
    helm-ls-git
    smooth-scrolling
    auto-complete
    anzu
    yaml-mode
    smex
    paredit
    idle-highlight-mode
    find-file-in-project
    popup
    ;; ruby packages
    inf-ruby
    rspec-mode
    rubocop
    ;; other packages
    haskell-mode)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; -- vendor packages --
(defvar libs-to-require
  '(cl
    linum
    paredit
    smex
    ffap
    find-file-in-project
    recentf
    ansi-color
    dired-x
    iso-transl
    dash
    s
    yaml-mode))

(dolist (lib libs-to-require)
  (require lib))

(provide 'init-packages)
;;; init-packages.el ends here
