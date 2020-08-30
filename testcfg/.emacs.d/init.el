(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/plugins/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'savehist)
(savehist-mode t)

(add-to-list 'default-frame-alist '(font . "Droid Sans Mono 13"))
;;(set-face-attribute 'default t :font "Droid Sans Mono 14" )
;;(set-default-font "Droid Sans Mono 10")

;; für Terminal?!
(setq-default cursor-type 'hbar)
;;(setq evil-default-cursor t)
(show-paren-mode t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-pair-mode)
(global-set-key (kbd "C-ö") 'other-window)

(require 'evil-leader)
(global-evil-leader-mode)
;; german mötäl köyböärd
(evil-leader/set-leader "ö")
;; does compute!!! :-))))
(evil-leader/set-key
  "x" 'org-latex-export-to-pdf
  "c" 'mark-sexp
  "e" 'evil-end-of-visual-line
  "a" 'evil-beginning-of-visual-line
  "f" 'ido-find-file
  ;;"f" 'helm-find-files
  ;;"<SPC>" 'ido-switch-buffer
  "<SPC>" 'helm-mini
  "ö" 'other-window
  "l" 'evil-search-forward
  "m" 'evil-search-backward
  "v" 'eval-last-sexp
  "9" 'insert-char
  "j" 'outline-next-visible-heading
  "k" 'outline-previous-visible-heading
  "i" 'my-save-word
  "g" 'my-surround-german-guillemets
  "d" 'describe-char
  "q" 'evil-jump-to-tag
  "t" 'toggle-input-method
  "r" 'ido-jump-to-tab-group
  "s" 'evil-search-highlight-persist-remove-all
  "<" 'tabbar-switch-grouping-method
)

(require 'evil)
(evil-mode 1)

(require 'evil-visualstar)
(global-evil-visualstar-mode)

(require 'helm-config)
(require 'helm-swoop)

(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
;; (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
(define-key evil-motion-state-map (kbd "M-i") 'helm-swoop-from-evil-search)

;;(setq evil-search-module 'evil-search)
;; modes without evil
(add-to-list 'evil-emacs-state-modes 'interactive-haskell-mode)
;; Emacs modes to Motion modes
(setq evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
;; (setq evil-emacs-state-modes (list 'desktop-menu-mode))
(setq evil-motion-state-modes (delete 'desktop-menu-mode evil-motion-state-modes))
(add-to-list 'evil-overriding-maps 'desktop-menu-mode-map)

(evil-add-hjkl-bindings desktop-menu-mode-map)
;;
;;(define-key evil-normal-state-map (kbd "C-v") 'evil-visual-block)
(define-key evil-normal-state-map (kbd "<f3>") 'helm-do-ag)
(define-key evil-normal-state-map (kbd "C-SPC") 'helm-mini)

(define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-normal-state-map (kbd "SPC") 'evil-scroll-down)
(define-key evil-normal-state-map (kbd "S-SPC") 'evil-scroll-up)
(define-key evil-motion-state-map (kbd "C-u") 'evil-scroll-up)
(define-key evil-motion-state-map (kbd "SPC") 'evil-scroll-down)
(define-key evil-motion-state-map (kbd "S-SPC") 'evil-scroll-up)

(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "C-8") 'evil-switch-to-windows-last-buffer)
(define-key evil-motion-state-map (kbd "C-8") 'evil-switch-to-windows-last-buffer)

;; Make C-g work like <esc>
(define-key evil-normal-state-map "\C-g" 'evil-normal-state)
(define-key evil-visual-state-map "\C-g" 'evil-normal-state)
(define-key evil-insert-state-map "\C-g" 'evil-normal-state)
(define-key evil-normal-state-map "\C-c" 'evil-normal-state)
(define-key evil-visual-state-map "\C-c" 'evil-normal-state)
(define-key evil-insert-state-map "\C-c" 'evil-normal-state)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)

(define-key evil-insert-state-map "\C-l" 'forward-char)

(desktop-save-mode 1)

;; still acceleration but much better
;; http://www.emacswiki.org/emacs/SmoothScrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; j-k to exit
(define-key evil-insert-state-map "j" #'cofi/maybe-exit)

(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "j")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?k)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?k))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))
(global-set-key [f10] 'helm-show-kill-ring)
(global-set-key [f11] 'save-buffer)
(global-set-key [f12] 'kill-this-buffer)
(global-set-key [f4] 'helm-imenu)
(global-set-key [f5] 'helm-projectile-find-file)
(global-set-key (kbd "M-SPC") 'ido-switch-buffer)
(global-set-key (kbd "M-1") 'ido-switch-buffer)
(global-set-key (kbd "M-q") 'ido-switch-buffer)

(defun bind-ido-keys ()
  "Keybindings for ido mode."
  (define-key ido-completion-map (kbd "M-j") 'ido-next-match)
  (define-key ido-completion-map (kbd "M-2") 'ido-next-match)
  (define-key ido-completion-map (kbd "ESC k") 'ido-next-match)
  (define-key ido-completion-map (kbd "ESC .") 'ido-next-match)
  (define-key ido-completion-map (kbd "M-k") 'ido-prev-match)
  (define-key ido-completion-map (kbd "M-3") 'ido-prev-match)
  (define-key ido-completion-map (kbd "ESC j") 'ido-prev-match)
  (define-key ido-completion-map (kbd "SPC") 'ido-exit-minibuffer)
  (define-key ido-completion-map (kbd "ESC ,") 'ido-prev-match))

(add-hook 'ido-setup-hook #'bind-ido-keys)

;;(lazy-highlight-cleanup nil)

;;; describe this point lisp only
(defun describe-foo-at-point ()
  "Show the documentation of the Elisp function and variable near point.
   This checks in turn:
   -- for a function name where point is
   -- for a variable name where point is
   -- for a surrounding function call
   "
  (interactive)
  (let (sym)
    ;; sigh, function-at-point is too clever.  we want only the first half.
    (cond ((setq sym (ignore-errors
                       (with-syntax-table emacs-lisp-mode-syntax-table
                         (save-excursion
                           (or (not (zerop (skip-syntax-backward "_w")))
                               (eq (char-syntax (char-after (point))) ?w)
                               (eq (char-syntax (char-after (point))) ?_)
                               (forward-sexp -1))
                           (skip-chars-forward "`'")
                           (let ((obj (read (current-buffer))))
                             (and (symbolp obj) (fboundp obj) obj))))))
           (describe-function sym))
          ((setq sym (variable-at-point)) (describe-variable sym))
          ;; now let it operate fully -- i.e. also check the
          ;; surrounding sexp for a function call.
          ((setq sym (function-at-point)) (describe-function sym)))))

(define-key emacs-lisp-mode-map [(f1)] 'describe-foo-at-point)
(define-key emacs-lisp-mode-map [(control f1)] 'describe-function)
(define-key emacs-lisp-mode-map [(shift f1)] 'describe-variable)

;; funktioniert mit visual-star!
;; (require 'evil-search-highlight-persist)
;; (global-evil-search-highlight-persist t)

(require 'evil-nerd-commenter)
;; in here evil-normal-state-map keys defined like those for visual below
(evilnc-default-hotkeys)
(define-key evil-visual-state-map ",ci" 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map ",cl" 'evilnc-comment-or-uncomment-to-the-line)
(define-key evil-visual-state-map ",cc" 'evilnc-copy-and-comment-lines)
(define-key evil-visual-state-map ",cp" 'evilnc-comment-or-uncomment-paragraphs)
(define-key evil-visual-state-map ",cr" 'comment-or-uncomment-region)

;; TODO: not yet for visual-block-mode! (takes only the last marked number)
(require 'evil-numbers)
;; (define-key evil-normal-state-map (kbd "C-c +") 'evil-numbers/inc-at-pt)
(define-key evil-visual-state-map (kbd "C-q +") 'evil-numbers/inc-at-pt)
