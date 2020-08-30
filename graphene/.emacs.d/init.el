;; Require Emacs' package functionality
(require 'package)

;; Add the Melpa repository to the list of package sources
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; Initialise the package system.
(package-initialize) 

(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))
(let ((default-directory "~/.emacs.d/plugins/"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(require 'graphene)
(require 'evil-leader)
(global-evil-leader-mode)
;; german mötäl köyböärd
(evil-leader/set-leader "ö")
;; does compute!!! :-))))
(evil-leader/set-key
  "x" 'org-latex-export-to-pdf
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

;; modes without evil
(add-to-list 'evil-emacs-state-modes 'interactive-haskell-mode)
;; Emacs modes to Motion modes
(setq-default evil-motion-state-modes (append evil-emacs-state-modes evil-motion-state-modes))
(setq-default evil-emacs-state-modes nil)

(global-set-key (kbd "C-ö") 'other-window)
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
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-ns-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-completion-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-must-match-map [escape] 'abort-recursive-edit)
(define-key minibuffer-local-isearch-map [escape] 'abort-recursive-edit)

(define-key evil-insert-state-map "\C-l" 'forward-char)
;;(add-hook 'dired-mode-hoo
(defun my-dired-up-directory ()
  "Take dired up one directory, but behave like dired-find-alternate-file"
  (interactive)
  (let ((old (current-buffer)))
    (dired-up-directory)
    (kill-buffer old)))

(eval-after-load 'dired
  '(progn
    (evil-define-key 'normal dired-mode-map "h" 'my-dired-up-directory)
    (evil-define-key 'normal dired-mode-map "l" 'dired-find-alternate-file)
    (evil-define-key 'normal dired-mode-map "o" 'dired-find-file-other-window)
    (evil-define-key 'normal dired-mode-map "s" 'dired-sort-toggle-or-edit)
    (evil-define-key 'normal dired-mode-map "t" 'dired-toggle-marks)
    (evil-define-key 'normal dired-mode-map "m" 'dired-mark)
    (evil-define-key 'normal dired-mode-map "u" 'dired-unmark)
    (evil-define-key 'normal dired-mode-map "U" 'dired-unmark-all-marks)
    (evil-define-key 'normal dired-mode-map "c" 'dired-create-directory)
    (evil-define-key 'normal dired-mode-map "n" 'evil-search-next)
    (evil-define-key 'normal dired-mode-map "N" 'evil-search-previous)
    (evil-define-key 'normal dired-mode-map "q" 'kill-this-buffer)))

;;(require 'dired-sort-map)
(setq dired-listing-switches "-ABhl  --group-directories-first")
(setenv "LC_COLLATE" "C")

;; Chinese-Input
(define-key evil-insert-state-map (kbd "M-SPC") 'toggle-input-method)

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

(global-set-key [f11] 'save-buffer)
(global-set-key [f12] 'kill-this-buffer)
(global-set-key [f4] 'helm-imenu)
(global-set-key [f5] 'helm-projectile-find-file)
(global-set-key (kbd "M-SPC") 'ido-switch-buffer)

(defun bind-ido-keys ()
  "Keybindings for ido mode."
  (define-key ido-completion-map (kbd "M-j") 'ido-next-match)
  (define-key ido-completion-map (kbd "ESC k") 'ido-next-match)
  (define-key ido-completion-map (kbd "ESC .") 'ido-next-match)
  (define-key ido-completion-map (kbd "M-k") 'ido-prev-match)
  (define-key ido-completion-map (kbd "ESC j") 'ido-prev-match)
  (define-key ido-completion-map (kbd "SPC") 'ido-exit-minibuffer)
  (define-key ido-completion-map (kbd "ESC ,") 'ido-prev-match))

(add-hook 'ido-setup-hook #'bind-ido-keys)

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


;; (define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)
(define-key evil-visual-state-map (kbd "C-q -") 'evil-numbers/dec-at-pt)
; ===== Turn off tab character =====

;;
;; Emacs normally uses both tabs and spaces to indent lines. If you
;; prefer, all indentation can be made from spaces only. To request this,
;; set `indent-tabs-mode' to `nil'. This is a per-buffer variable;
;; altering the variable affects only the current buffer, but it can be
;; disabled for all buffers.

;;
;; Use (setq ...) to set value locally to a buffer
;; Use (setq-default ...) to set value globally
;;
(setq-default indent-tabs-mode nil)

;; ========== Set the fill column ==========
(setq-default fill-column 72)

;; ===== Turn on Auto Fill mode automatically in all modes =====

;; Auto-fill-mode the the automatic wrapping of lines and insertion of
;; newlines when the cursor goes over the column limit.

;; This should actually turn on auto-fill-mode by default in all major
;; modes. The other way to do this is to turn on the fill for specific modes
;; via hooks.
;; WORKS?!
(setq auto-fill-mode 1)

 ;; ===== Set standard indent to 2 rather that 4 ====
(setq standard-indent 2)

(setq desktop-restore-frames nil)
(desktop-save-mode 1)


;; http://stackoverflow.com/questions/13176843/how-to-put-elscreen-tabs-on-the-top-only
;; elscreen with only one tab??? evtl. im Toolbar unterbringen?
;; (wenn ich schon keinen Titlebar habe..)
(setq elscreen-display-tab nil) ; disable tabs display

(defun get-alist (key alist)
  (cdr (assoc key alist)))

;; Put tabs display in your frame title bar instead.
(defun elscreen-frame-title-update ()
  (when (elscreen-screen-modified-p 'elscreen-frame-title-update)
    (let* ((screen-list (sort (elscreen-get-screen-list) '<))
           (screen-to-name-alist (elscreen-get-screen-to-name-alist))
           (title (concat "| " (mapconcat
                   (lambda (screen)
                     (format "%d%s %s |"
                             screen (elscreen-status-label screen)
                             (get-alist screen screen-to-name-alist)))
                   screen-list " "))))
      (if (fboundp 'set-frame-name)
          (set-frame-name title)
        (setq frame-title-format title)))))

(eval-after-load "elscreen"
  '(add-hook 'elscreen-screen-update-hook 'elscreen-frame-title-update))

(global-evil-tabs-mode t)

;; gibt es auch in elpa!
(require 'idle-highlight-mode)
(require 'auto-highlight-symbol)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("4c41d3e6fb19438b23899ffcb64cec224f995866911974f274b9c3771630ae96" "ebd976c3d91de7c6858db3ba07c52238d545a106c8fbf05192913f6d42421621" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
