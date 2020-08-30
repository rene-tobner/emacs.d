;; Switching Between Two Recently Used Buffers
;; http://www.emacswiki.org/emacs/SwitchingBuffers
(defun resently-used-buffer ()
  (other-buffer (current-buffer) 1))

;; key : #<buffer>
;; value : group-name
(setq tabbar-groups-hash (make-hash-table :test 'equal))

(defun tabbar-init-groups-name ()
  (interactive)
  (setq tabbar-groups-hash (make-hash-table :test 'equal)))

(defun tabbar-set-group-name (buff group)
  (if (not (equal (buffer-name buff) "*tmp*"))
      (puthash buff group tabbar-groups-hash)))

(defun tabbar-get-group-name (buff)
  (gethash buff tabbar-groups-hash))

(defun my-tabbar-buffer-groups-function ()
  (let ((g (tabbar-get-group-name (current-buffer))))
    (if (not g)
        (progn
          (setq g (or (tabbar-get-group-name (resently-used-buffer)) "Default"))
          (tabbar-set-group-name (current-buffer) g)))
    (list g)))

;; tabbar.el \u3063\u3066\u30b0\u30eb\u30fc\u30d7\u306e\u4e00\u89a7\u304f\u3089\u3044\u4fdd\u6301\u3057\u3066\u306a\u3044\u306e\uff1f \u3057\u3066\u305d\u3046\u3058\u3083\u306a\u3044\uff1f
(defun tabbar-get-all-group-name ()
  (let (gs unique)
    (setq gs (loop for v being the hash-values
                   in tabbar-groups-hash
                   collect v))
    (setq unique '())
    (while gs
      (setq unique (cons (car gs) unique))
      (setq gs (delq (car gs) gs)))
    (sort unique 'string-lessp)))

(defun tabbar-change-group (name)
  (interactive
   (list (completing-read "group name : "
                          (tabbar-get-all-group-name))))
  (tabbar-set-group-name (current-buffer) name)
  (tabbar-display-update))

(defun tabbar-switch-to-group (name)
  (interactive
   (list (completing-read "group name : "
                          (tabbar-get-all-group-name))))
  (switch-to-buffer (find-if (lambda (buff)
                               (equal name (tabbar-get-group-name buff)))
                             (buffer-list))))

(defun tabbar-kill-group (name)
  (interactive
   (list (completing-read "group name : "
                          (tabbar-get-all-group-name))))
  (mapcar (lambda (buff)
            (if (equal name (tabbar-get-group-name buff))
                (kill-buffer buff)))
          (buffer-list)))

;; \u30b4\u30df\u6383\u9664
(defun tabbar-remove-killed-buffers ()
  (let ((entry (loop for k being the hash-keys
                     in      tabbar-groups-hash
                     using   (hash-values v)
                     collect (cons k v))))
    (tabbar-init-groups-name)
    (mapcar (lambda (e)
              (if (buffer-live-p (car e))
                  (tabbar-set-group-name (car e) (cdr e))))
            entry)))

(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups-function)

;; \u3053\u3093\u306a\u306b\u983b\u7e41\u306b\u3084\u308b\u5fc5\u8981\u304c\u3042\u308b\u306e\u304b\u3069\u3046\u304b
(add-hook 'kill-buffer-hook 'tabbar-remove-killed-buffers)

;; \u3068\u308a\u3042\u3048\u305a\u3001\u30e2\u30fc\u30c9\u30e9\u30a4\u30f3\u306b\u8868\u793a\u3057\u3066\u304a\u304f\u3002
(add-to-list 'default-mode-line-format
             '(:eval 
               (concat " [" (format "%s" (tabbar-current-tabset t)) "] ")))

;; tabbar-buffer-group-function \u3053\u3053\u307e\u3067

(defun tabbar-sort-tab ()
  (interactive)
  (let* ((ctabset (tabbar-current-tabset 't))
         (ctabs (tabbar-tabs ctabset)))
    (if (and ctabset ctabs)
        (progn
          (set ctabset (sort ctabs (lambda (b1 b2)
                                     (string-lessp (buffer-name (car b1))
                                                   (buffer-name (car b2))))))
          (put ctabset 'template nil)
          (tabbar-display-update)))))
