;; -*- mode: dotspacemacs -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   ;; dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------
     ;; Example of useful layers you may want to use right away
     ;; Uncomment a layer name and do <leader> f e R to install it
     ;; ----------------------------------------------------------
     abclj
     agda
     auto-completion
     better-defaults
     (c-c++ :variables
            c-c++-enable-clang-support t
            c-c++-default-mode-for-headers 'c++-mode)
     (colors :variables
             colors-enable-nyan-cat-progress-bar t)
     clojure
     emacs-lisp
     evil-monkey
     extra-langs
     (git :variables git-gutter-use-fringe t)
     haskell
     idris
     justin
     markdown
     (org :variables org-enable-github-support t)
     org-babel-clojure
     osx
     puppet
     semantic
     syntax-checking
     spotify
     themes-megapack
     ycmd
     )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progess in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to a .PNG file.
   ;; If the value is nil then no banner is displayed.
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner 'official
   ;; t if you always want to see the changelog at startup
   dotspacemacs-always-show-changelog t
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(;molokai
                         monokai
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil the paste micro-state is enabled. While enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state t
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode t
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil)
   ;; User initialization goes here
  (add-to-list 'exec-path "~/.cabal/bin/")
  (setq-default git-enable-github-support t)
  (setq magit-repo-dirs `("~/src/")))

(eval-when-compile (require 'cl))

(defun configure-c++ ()
  (set-variable 'ycmd-server-command '("python2.7" "/Users/justin/src/ycmd/ycmd"))
  (set-variable 'ycmd-extra-conf-whitelist '("~/src/*")))

(defun configure-org-babel ()
  (setq org-src-fontify-natively t)
  (setq org-src-tab-acts-natively t)
  (setq org-confirm-babel-evaluate nil)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (emacs-lisp . t)
     (clojure . t)
     (python . t)
     (haskell . t)
     (ruby . t)
     (C . t)
     )))

(defun configure-clojure ()
  (setq clojure-enable-fancify-symbols t)
  (put 'prop/for-all 'clojure-backtracking-indent '(4 (2))))

;; M-u to toggle transparency
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(90 85))))

(defun activate-linum ()
  (require 'linum-relative)
  ;; (setq linum-relative-current-symbol "->")
  (setq linum-relative-current-symbol "") ;; just show the current (absolute) line number
  (linum-relative-toggle)
  (global-linum-mode))

(defun extend-monokai ()
    ;; linum-relative doesn't provide a nice way to customize this.
  (set-face-attribute 'fringe nil :background "grey11")
  (set-face-attribute 'linum nil :background "black")
  (add-to-list 'default-frame-alist '(background-color . "black"))
  (defface linum-relative-current-face
    '((t :inherit linum :foreground "DarkOrange2" :background "grey11" :weight bold))
    "Face for displaying current line."
    :group 'linum-relative))

(defun refine-scrolling ()
  ;; Disable overeager scrolling
  (setq mouse-wheel-follow-mouse 't)
  (setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
  (setq redisplay-dont-pause t
        scroll-margin 1
        scroll-step 1
        scroll-conservatively 10000
        scroll-preserve-screen-position 1))

(defun sensible-splits ()
  (defadvice split-window (after move-point-to-new-window activate)
    "Moves the point to the newly created window after splitting."
    (other-window 1)))

(defun dotspacemacs/config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."
  ;; remap mac modifier keys
  (setq mac-option-key-is-meta nil
        mac-command-key-ismeta t
        mac-command-modifier 'meta
        mac-option-modifier 'super)

  ;; RMS is wrong about sentences
  (setq sentence-end-double-space nil)

  ;; text scale stuff
  (global-set-key (kbd "M-+") 'text-scale-increase)
  (global-set-key (kbd "M-_") 'text-scale-decrease)

  ;; command-` should cycle frames as per the rest of OS X
  (global-set-key (kbd "M-`") 'other-frame)

  ;; Command+option+n for new frame
  (global-set-key (kbd "M-s-n") 'make-frame)

  (global-set-key (kbd "M-u") 'toggle-transparency)

  ;; Use tab to enter normal mode
  (define-key evil-insert-state-map (kbd "TAB") 'evil-normal-state)
  (define-key evil-visual-state-map (kbd "TAB") 'evil-normal-state)

  ;; Lazy config
  (configure-c++)
  (activate-linum)
  (extend-monokai)
  (sensible-splits)
  (configure-clojure)
  (configure-org-babel)
  (refine-scrolling))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(expand-region-contract-fast-key "V")
 '(expand-region-reset-fast-key "r")
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(ring-bell-function (quote ignore) t)
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1)))))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(evil-search-highlight-persist-highlight-face ((t (:inherit region :background "dark slate gray"))))
 '(linum-relative-current-face ((t (:inherit linum :background "#444444" :foreground "DarkOrange1" :weight bold))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "yellow green")))))
