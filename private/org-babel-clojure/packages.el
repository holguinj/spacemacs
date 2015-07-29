;;; packages.el --- org-babel-clojure Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq org-babel-clojure-packages
    '(
      ;; TODO
      ))

;; List of packages to exclude.
(setq org-babel-clojure-excluded-packages '())

;; For each package, define a function org-babel-clojure/init-<package-org-babel-clojure>
;;
;; (defun org-babel-clojure/init-ob-clojure ()
;;   (use-package ob-clojure
;;     :defer t
;;     :init
;;     (setq 'org-babel-clojure-backend 'cider)))
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
