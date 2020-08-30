;; This are setting for nice tabbar items
;; to have an idea of what it looks like http://imgur.com/b0SNN
;; inspired by Amit Patel screenshot http://www.emacswiki.org/pics/static/NyanModeWithCustomBackground.png

;; Tabbar
(require 'tabbar)
(set-face-attribute 'tabbar-default nil
                    ;;:family "Ricty"
                    :foreground "#c4c1b0"
                    :background "#002c37"
                    :height 1.0)
(set-face-attribute 'tabbar-unselected nil
                    :foreground "#586e75"
                    :background "#002b36"
                    :box nil)
(set-face-attribute 'tabbar-selected nil
                    :foreground "#073642"
                    :background "#586e75"
                    :box nil)
(set-face-attribute 'tabbar-button nil
                    :box nil)
(set-face-attribute 'tabbar-separator nil
                    :foreground "#002c37"
                    :background "#002c37"
                    :height 1.0)
(set-face-attribute 'tabbar-modified nil
		    :foreground "#d33682"
		    :box nil)

;; Change padding of the tabs
;; we also need to set separator to avoid overlapping tabs by highlighted tabs
(custom-set-variables
 '(tabbar-separator (quote (0.5))))
;; adding spaces
(defun tabbar-buffer-tab-label (tab)
  "Return a label for TAB.
That is, a string used to represent it on the tab bar."
  (let ((label  (if tabbar--buffer-show-groups
                    (format "[%s]  " (tabbar-tab-tabset tab))
                  (format "%s  " (tabbar-tab-value tab)))))
    ;; Unless the tab bar auto scrolls to keep the selected tab
    ;; visible, shorten the tab label to keep as many tabs as possible
    ;; in the visible area of the tab bar.
    (if tabbar-auto-scroll-flag
        label
      (tabbar-shorten
       label (max 1 (/ (window-width)
                       (length (tabbar-view
                                (tabbar-current-tabset)))))))))

(tabbar-mode 1)
