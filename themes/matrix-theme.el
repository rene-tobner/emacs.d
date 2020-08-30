;;; matrix-theme.el --- matrix theme

;; Copyright (C) 2003 by walterh@rocketmail.com
;; Copyright (C) 2013 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/emacs-jp/replace-colorthemes
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of matrix theme from `color-themes'

;;; Code:

(deftheme matrix
  "matrix theme")

(custom-theme-set-faces
 'matrix

 '(default ((t (:background "black" :foreground "#009900"))))
 '(mouse ((t (:foregound "#7eff00"))))
 '(cursor ((t (:foregound "#7eff00"))))
 '(border ((t (:foregound "orange"))))

 '(Buffer-menu-buffer-face ((t (nil))))
 '(CUA-global-mark-face ((t (nil))))
 '(CUA-rectangle-face ((t (nil))))
 '(CUA-rectangle-noselect-face ((t (nil))))
 '(Info-title-1-face ((t (nil))))
 '(Info-title-2-face ((t (nil))))
 '(Info-title-3-face ((t (nil))))
 '(Info-title-4-face ((t (nil))))
 '(antlr-font-lock-keyword-face ((t (nil))))
 '(antlr-font-lock-literal-face ((t (nil))))
 '(antlr-font-lock-ruledef-face ((t (nil))))
 '(antlr-font-lock-ruleref-face ((t (nil))))
 '(antlr-font-lock-tokendef-face ((t (nil))))
 '(antlr-font-lock-tokenref-face ((t (nil))))
 '(bbdb-company ((t (nil))))
 '(bbdb-field-name ((t (nil))))
 '(bbdb-field-value ((t (nil))))
 '(bbdb-name ((t (nil))))
 '(bg:erc-color-face0 ((t (nil))))
 '(bg:erc-color-face1 ((t (nil))))
 '(bg:erc-color-face10 ((t (nil))))
 '(bg:erc-color-face11 ((t (nil))))
 '(bg:erc-color-face12 ((t (nil))))
 '(bg:erc-color-face13 ((t (nil))))
 '(bg:erc-color-face14 ((t (nil))))
 '(bg:erc-color-face15 ((t (nil))))
 '(bg:erc-color-face2 ((t (nil))))
 '(bg:erc-color-face3 ((t (nil))))
 '(bg:erc-color-face4 ((t (nil))))
 '(bg:erc-color-face5 ((t (nil))))
 '(bg:erc-color-face6 ((t (nil))))
 '(bg:erc-color-face7 ((t (nil))))
 '(bg:erc-color-face8 ((t (nil))))
 '(bg:erc-color-face9 ((t (nil))))
 '(blank-space-face ((t (nil))))
 '(blank-tab-face ((t (nil))))
 '(blue ((t (nil))))
 '(bold ((t (:bold t :weight bold))))
 '(bold-italic ((t (:bold t :weight bold))))
 '(border ((t (:background "orange"))))
 '(border-glyph ((t (nil))))
 '(buffers-tab ((t (nil))))
 '(button ((t (nil))))
 '(calendar-today-face ((t (nil))))
 '(change-log-acknowledgement-face ((t (nil))))
 '(change-log-conditionals-face ((t (nil))))
 '(change-log-date-face ((t (nil))))
 '(change-log-email-face ((t (nil))))
 '(change-log-file-face ((t (nil))))
 '(change-log-function-face ((t (nil))))
 '(change-log-list-face ((t (nil))))
 '(change-log-name-face ((t (nil))))
 '(clearcase-dired-checkedout-face ((t (nil))))
 '(comint-highlight-input ((t (nil))))
 '(comint-highlight-prompt ((t (nil))))
 '(cparen-around-andor-face ((t (nil))))
 '(cparen-around-begin-face ((t (nil))))
 '(cparen-around-conditional-face ((t (nil))))
 '(cparen-around-define-face ((t (nil))))
 '(cparen-around-lambda-face ((t (nil))))
 '(cparen-around-letdo-face ((t (nil))))
 '(cparen-around-quote-face ((t (nil))))
 '(cparen-around-set!-face ((t (nil))))
 '(cparen-around-syntax-rules-face ((t (nil))))
 '(cparen-around-vector-face ((t (nil))))
 '(cparen-binding-face ((t (nil))))
 '(cparen-binding-list-face ((t (nil))))
 '(cparen-conditional-clause-face ((t (nil))))
 '(cparen-normal-paren-face ((t (nil))))
 '(cperl-array-face ((t (nil))))
 '(cperl-hash-face ((t (nil))))
 '(cperl-invalid-face ((t (nil))))
 '(cperl-nonoverridable-face ((t (nil))))
 '(cursor ((t (:background "#7eff00" :foreground "black"))))
 '(custom-button-face ((t (nil))))
 '(custom-button-pressed-face ((t (nil))))
 '(custom-changed-face ((t (nil))))
 '(custom-comment-face ((t (nil))))
 '(custom-comment-tag-face ((t (nil))))
 '(custom-documentation-face ((t (nil))))
 '(custom-face-tag-face ((t (nil))))
 '(custom-group-tag-face ((t (nil))))
 '(custom-group-tag-face-1 ((t (nil))))
 '(custom-invalid-face ((t (nil))))
 '(custom-modified-face ((t (nil))))
 '(custom-rogue-face ((t (nil))))
 '(custom-saved-face ((t (nil))))
 '(custom-set-face ((t (nil))))
 '(custom-state-face ((t (nil))))
 '(custom-variable-button-face ((t (nil))))
 '(custom-variable-tag-face ((t (nil))))
 '(cvs-filename-face ((t (nil))))
 '(cvs-handled-face ((t (nil))))
 '(cvs-header-face ((t (nil))))
 '(cvs-marked-face ((t (nil))))
 '(cvs-msg-face ((t (nil))))
 '(cvs-need-action-face ((t (nil))))
 '(cvs-unknown-face ((t (nil))))
 '(cyan ((t (nil))))
 '(diary-face ((t (nil))))
 '(diff-added-face ((t (nil))))
 '(diff-changed-face ((t (nil))))
 '(diff-context-face ((t (nil))))
 '(diff-file-header-face ((t (nil))))
 '(diff-function-face ((t (nil))))
 '(diff-header-face ((t (nil))))
 '(diff-hunk-header-face ((t (nil))))
 '(diff-index-face ((t (nil))))
 '(diff-nonexistent-face ((t (nil))))
 '(diff-removed-face ((t (nil))))
 '(dired-face-boring ((t (nil))))
 '(dired-face-directory ((t (nil))))
 '(dired-face-executable ((t (nil))))
 '(dired-face-flagged ((t (nil))))
 '(dired-face-header ((t (nil))))
 '(dired-face-marked ((t (nil))))
 '(dired-face-permissions ((t (nil))))
 '(dired-face-setuid ((t (nil))))
 '(dired-face-socket ((t (nil))))
 '(dired-face-symlink ((t (nil))))
 '(display-time-mail-balloon-enhance-face ((t (nil))))
 '(display-time-mail-balloon-gnus-group-face ((t (nil))))
 '(display-time-time-balloon-face ((t (nil))))
 '(ebrowse-default-face ((t (nil))))
 '(ebrowse-file-name-face ((t (nil))))
 '(ebrowse-member-attribute-face ((t (nil))))
 '(ebrowse-member-class-face ((t (nil))))
 '(ebrowse-progress-face ((t (nil))))
 '(ebrowse-root-class-face ((t (nil))))
 '(ebrowse-tree-mark-face ((t (nil))))
 '(ecb-sources-face ((t (nil))))
 '(edb-inter-field-face ((t (nil))))
 '(edb-normal-summary-face ((t (nil))))
 '(ediff-current-diff-face-A ((t (nil))))
 '(ediff-current-diff-face-Ancestor ((t (nil))))
 '(ediff-current-diff-face-B ((t (nil))))
 '(ediff-current-diff-face-C ((t (nil))))
 '(ediff-even-diff-face-A ((t (nil))))
 '(ediff-even-diff-face-Ancestor ((t (nil))))
 '(ediff-even-diff-face-B ((t (nil))))
 '(ediff-even-diff-face-C ((t (nil))))
 '(ediff-fine-diff-face-A ((t (nil))))
 '(ediff-fine-diff-face-Ancestor ((t (nil))))
 '(ediff-fine-diff-face-B ((t (nil))))
 '(ediff-fine-diff-face-C ((t (nil))))
 '(ediff-odd-diff-face-A ((t (nil))))
 '(ediff-odd-diff-face-Ancestor ((t (nil))))
 '(ediff-odd-diff-face-B ((t (nil))))
 '(ediff-odd-diff-face-C ((t (nil))))
 '(eieio-custom-slot-tag-face ((t (nil))))
 '(emacs-wiki-bad-link-face ((t (nil))))
 '(emacs-wiki-link-face ((t (nil))))
 '(erc-action-face ((t (nil))))
 '(erc-bold-face ((t (nil))))
 '(erc-current-nick-face ((t (nil))))
 '(erc-dangerous-host-face ((t (nil))))
 '(erc-default-face ((t (nil))))
 '(erc-direct-msg-face ((t (nil))))
 '(erc-error-face ((t (nil))))
 '(erc-fool-face ((t (nil))))
 '(erc-highlight-face ((t (nil))))
 '(erc-input-face ((t (nil))))
 '(erc-inverse-face ((t (nil))))
 '(erc-keyword-face ((t (nil))))
 '(erc-nick-default-face ((t (nil))))
 '(erc-nick-msg-face ((t (nil))))
 '(erc-notice-face ((t (nil))))
 '(erc-pal-face ((t (nil))))
 '(erc-prompt-face ((t (nil))))
 '(erc-timestamp-face ((t (nil))))
 '(erc-underline-face ((t (nil))))
 '(eshell-ls-archive-face ((t (nil))))
 '(eshell-ls-backup-face ((t (nil))))
 '(eshell-ls-clutter-face ((t (nil))))
 '(eshell-ls-directory-face ((t (nil))))
 '(eshell-ls-executable-face ((t (nil))))
 '(eshell-ls-missing-face ((t (nil))))
 '(eshell-ls-picture-face ((t (nil))))
 '(eshell-ls-product-face ((t (nil))))
 '(eshell-ls-readonly-face ((t (nil))))
 '(eshell-ls-special-face ((t (nil))))
 '(eshell-ls-symlink-face ((t (nil))))
 '(eshell-ls-text-face ((t (nil))))
 '(eshell-ls-todo-face ((t (nil))))
 '(eshell-ls-unreadable-face ((t (nil))))
 '(eshell-prompt-face ((t (nil))))
 '(eshell-test-failed-face ((t (nil))))
 '(eshell-test-ok-face ((t (nil))))
 '(excerpt ((t (nil))))
 '(extra-whitespace-face ((t (nil))))
 '(ff-paths-non-existant-file-face ((t (nil))))
 '(fg:black ((t (nil))))
 '(fg:erc-color-face0 ((t (nil))))
 '(fg:erc-color-face1 ((t (nil))))
 '(fg:erc-color-face10 ((t (nil))))
 '(fg:erc-color-face11 ((t (nil))))
 '(fg:erc-color-face12 ((t (nil))))
 '(fg:erc-color-face13 ((t (nil))))
 '(fg:erc-color-face14 ((t (nil))))
 '(fg:erc-color-face15 ((t (nil))))
 '(fg:erc-color-face2 ((t (nil))))
 '(fg:erc-color-face3 ((t (nil))))
 '(fg:erc-color-face4 ((t (nil))))
 '(fg:erc-color-face5 ((t (nil))))
 '(fg:erc-color-face6 ((t (nil))))
 '(fg:erc-color-face7 ((t (nil))))
 '(fg:erc-color-face8 ((t (nil))))
 '(fg:erc-color-face9 ((t (nil))))
 '(fixed ((t (nil))))
 '(fixed-pitch ((t (nil))))
 '(fl-comment-face ((t (nil))))
 '(fl-function-name-face ((t (nil))))
 '(fl-keyword-face ((t (nil))))
 '(fl-string-face ((t (nil))))
 '(fl-type-face ((t (nil))))
 '(flash-paren-face-off ((t (nil))))
 '(flash-paren-face-on ((t (nil))))
 '(flash-paren-face-region ((t (nil))))
 '(flyspell-duplicate-face ((t (nil))))
 '(flyspell-incorrect-face ((t (nil))))
 '(font-latex-bold-face ((t (nil))))
 '(font-latex-italic-face ((t (nil))))
 '(font-latex-math-face ((t (nil))))
 '(font-latex-sedate-face ((t (nil))))
 '(font-latex-string-face ((t (nil))))
 '(font-latex-warning-face ((t (nil))))
 '(font-lock-builtin-face ((t (:foreground "pink2"))))
 '(font-lock-comment-face ((t (:italic t :background "black" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "magenta"))))
 '(font-lock-doc-face ((t (nil))))
 '(font-lock-doc-string-face ((t (nil))))
 '(font-lock-exit-face ((t (nil))))
 '(font-lock-function-name-face ((t (:bold t :underline t :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "yellow1"))))
 '(font-lock-other-emphasized-face ((t (nil))))
 '(font-lock-other-type-face ((t (nil))))
 '(font-lock-preprocessor-face ((t (nil))))
 '(font-lock-reference-face ((t (nil))))
 '(font-lock-special-comment-face ((t (nil))))
 '(font-lock-special-keyword-face ((t (nil))))
 '(font-lock-string-face ((t (:foreground "yellow2"))))
 '(font-lock-type-face ((t (:foreground "LightYellow1"))))
 '(font-lock-variable-name-face ((t (:foreground "light green"))))
 '(font-lock-warning-face ((t (nil))))
 '(fringe ((t (nil))))
 '(gnus-cite-attribution-face ((t (nil))))
 '(gnus-cite-face-1 ((t (nil))))
 '(gnus-cite-face-10 ((t (nil))))
 '(gnus-cite-face-11 ((t (nil))))
 '(gnus-cite-face-2 ((t (nil))))
 '(gnus-cite-face-3 ((t (nil))))
 '(gnus-cite-face-4 ((t (nil))))
 '(gnus-cite-face-5 ((t (nil))))
 '(gnus-cite-face-6 ((t (nil))))
 '(gnus-cite-face-7 ((t (nil))))
 '(gnus-cite-face-8 ((t (nil))))
 '(gnus-cite-face-9 ((t (nil))))
 '(gnus-emphasis-bold ((t (nil))))
 '(gnus-emphasis-bold-italic ((t (nil))))
 '(gnus-emphasis-highlight-words ((t (nil))))
 '(gnus-emphasis-italic ((t (nil))))
 '(gnus-emphasis-strikethru ((t (nil))))
 '(gnus-emphasis-underline ((t (nil))))
 '(gnus-emphasis-underline-bold ((t (nil))))
 '(gnus-emphasis-underline-bold-italic ((t (nil))))
 '(gnus-emphasis-underline-italic ((t (nil))))
 '(gnus-filterhist-face-1 ((t (nil))))
 '(gnus-group-mail-1-empty-face ((t (nil))))
 '(gnus-group-mail-1-face ((t (nil))))
 '(gnus-group-mail-2-empty-face ((t (nil))))
 '(gnus-group-mail-2-face ((t (nil))))
 '(gnus-group-mail-3-empty-face ((t (nil))))
 '(gnus-group-mail-3-face ((t (nil))))
 '(gnus-group-mail-low-empty-face ((t (nil))))
 '(gnus-group-mail-low-face ((t (nil))))
 '(gnus-group-news-1-empty-face ((t (nil))))
 '(gnus-group-news-1-face ((t (nil))))
 '(gnus-group-news-2-empty-face ((t (nil))))
 '(gnus-group-news-2-face ((t (nil))))
 '(gnus-group-news-3-empty-face ((t (nil))))
 '(gnus-group-news-3-face ((t (nil))))
 '(gnus-group-news-4-empty-face ((t (nil))))
 '(gnus-group-news-4-face ((t (nil))))
 '(gnus-group-news-5-empty-face ((t (nil))))
 '(gnus-group-news-5-face ((t (nil))))
 '(gnus-group-news-6-empty-face ((t (nil))))
 '(gnus-group-news-6-face ((t (nil))))
 '(gnus-group-news-low-empty-face ((t (nil))))
 '(gnus-group-news-low-face ((t (nil))))
 '(gnus-header-content-face ((t (nil))))
 '(gnus-header-from-face ((t (nil))))
 '(gnus-header-name-face ((t (nil))))
 '(gnus-header-newsgroups-face ((t (nil))))
 '(gnus-header-subject-face ((t (nil))))
 '(gnus-picon-face ((t (nil))))
 '(gnus-picon-xbm-face ((t (nil))))
 '(gnus-picons-face ((t (nil))))
 '(gnus-picons-xbm-face ((t (nil))))
 '(gnus-server-agent-face ((t (nil))))
 '(gnus-server-closed-face ((t (nil))))
 '(gnus-server-denied-face ((t (nil))))
 '(gnus-server-offline-face ((t (nil))))
 '(gnus-server-opened-face ((t (nil))))
 '(gnus-signature-face ((t (nil))))
 '(gnus-splash ((t (nil))))
 '(gnus-splash-face ((t (nil))))
 '(gnus-summary-cancelled-face ((t (nil))))
 '(gnus-summary-high-ancient-face ((t (nil))))
 '(gnus-summary-high-read-face ((t (nil))))
 '(gnus-summary-high-ticked-face ((t (nil))))
 '(gnus-summary-high-undownloaded-face ((t (nil))))
 '(gnus-summary-high-unread-face ((t (nil))))
 '(gnus-summary-low-ancient-face ((t (nil))))
 '(gnus-summary-low-read-face ((t (nil))))
 '(gnus-summary-low-ticked-face ((t (nil))))
 '(gnus-summary-low-undownloaded-face ((t (nil))))
 '(gnus-summary-low-unread-face ((t (nil))))
 '(gnus-summary-normal-ancient-face ((t (nil))))
 '(gnus-summary-normal-read-face ((t (nil))))
 '(gnus-summary-normal-ticked-face ((t (nil))))
 '(gnus-summary-normal-undownloaded-face ((t (nil))))
 '(gnus-summary-normal-unread-face ((t (nil))))
 '(gnus-summary-selected-face ((t (nil))))
 '(gnus-x-face ((t (nil))))
 '(green ((t (nil))))
 '(gui-button-face ((t (nil))))
 '(gui-element ((t (nil))))
 '(header-line ((t (nil))))
 '(hi-black-b ((t (nil))))
 '(hi-black-hb ((t (nil))))
 '(hi-blue ((t (nil))))
 '(hi-blue-b ((t (nil))))
 '(hi-green ((t (nil))))
 '(hi-green-b ((t (nil))))
 '(hi-pink ((t (nil))))
 '(hi-red-b ((t (nil))))
 '(hi-yellow ((t (nil))))
 '(highlight ((t (:background "#7eff00" :foreground "black"))))
 '(highlight-changes-delete-face ((t (nil))))
 '(highlight-changes-face ((t (nil))))
 '(highline-face ((t (nil))))
 '(holiday-face ((t (nil))))
 '(html-helper-bold-face ((t (nil))))
 '(html-helper-bold-italic-face ((t (nil))))
 '(html-helper-builtin-face ((t (nil))))
 '(html-helper-italic-face ((t (nil))))
 '(html-helper-underline-face ((t (nil))))
 '(html-tag-face ((t (nil))))
 '(hyper-apropos-documentation ((t (nil))))
 '(hyper-apropos-heading ((t (nil))))
 '(hyper-apropos-hyperlink ((t (nil))))
 '(hyper-apropos-major-heading ((t (nil))))
 '(hyper-apropos-section-heading ((t (nil))))
 '(hyper-apropos-warning ((t (nil))))
 '(ibuffer-deletion-face ((t (nil))))
 '(ibuffer-marked-face ((t (nil))))
 '(idlwave-help-link-face ((t (nil))))
 '(idlwave-shell-bp-face ((t (nil))))
 '(ido-first-match-face ((t (nil))))
 '(ido-indicator-face ((t (nil))))
 '(ido-only-match-face ((t (nil))))
 '(ido-subdir-face ((t (nil))))
 '(info-header-node ((t (nil))))
 '(info-header-xref ((t (nil))))
 '(info-menu-5 ((t (nil))))
 '(info-menu-6 ((t (nil))))
 '(info-menu-header ((t (nil))))
 '(info-node ((t (nil))))
 '(info-xref ((t (nil))))
 '(isearch ((t (nil))))
 '(isearch-lazy-highlight-face ((t (nil))))
 '(isearch-secondary ((t (nil))))
 '(italic ((t (:underline t))))
 '(jde-bug-breakpoint-cursor ((t (nil))))
 '(jde-bug-breakpoint-marker ((t (nil))))
 '(jde-db-active-breakpoint-face ((t (nil))))
 '(jde-db-requested-breakpoint-face ((t (nil))))
 '(jde-db-spec-breakpoint-face ((t (nil))))
 '(jde-java-font-lock-api-face ((t (nil))))
 '(jde-java-font-lock-bold-face ((t (nil))))
 '(jde-java-font-lock-code-face ((t (nil))))
 '(jde-java-font-lock-constant-face ((t (nil))))
 '(jde-java-font-lock-doc-tag-face ((t (nil))))
 '(jde-java-font-lock-italic-face ((t (nil))))
 '(jde-java-font-lock-link-face ((t (nil))))
 '(jde-java-font-lock-modifier-face ((t (nil))))
 '(jde-java-font-lock-number-face ((t (nil))))
 '(jde-java-font-lock-operator-face ((t (nil))))
 '(jde-java-font-lock-package-face ((t (nil))))
 '(jde-java-font-lock-pre-face ((t (nil))))
 '(jde-java-font-lock-underline-face ((t (nil))))
 '(lazy-highlight-face ((t (nil))))
 '(left-margin ((t (nil))))
 '(linemenu-face ((t (nil))))
 '(list-mode-item-selected ((t (nil))))
 '(log-view-file-face ((t (nil))))
 '(log-view-message-face ((t (nil))))
 '(magenta ((t (nil))))
 '(makefile-space-face ((t (nil))))
 '(man-bold ((t (nil))))
 '(man-heading ((t (nil))))
 '(man-italic ((t (nil))))
 '(man-xref ((t (nil))))
 '(menu ((t (nil))))
 '(message-cited-text ((t (nil))))
 '(message-cited-text-face ((t (nil))))
 '(message-header-cc-face ((t (nil))))
 '(message-header-contents ((t (nil))))
 '(message-header-name-face ((t (nil))))
 '(message-header-newsgroups-face ((t (nil))))
 '(message-header-other-face ((t (nil))))
 '(message-header-subject-face ((t (nil))))
 '(message-header-to-face ((t (nil))))
 '(message-header-xheader-face ((t (nil))))
 '(message-headers ((t (nil))))
 '(message-highlighted-header-contents ((t (nil))))
 '(message-mml-face ((t (nil))))
 '(message-separator-face ((t (nil))))
 '(message-url ((t (nil))))
 '(minibuffer-prompt ((t (nil))))
 '(mmm-face ((t (nil))))
 '(mode-line ((t (:bold t :background "gray" :foreground "black" :weight bold))))
 '(mode-line-inactive ((t (nil))))
 '(modeline-buffer-id ((t (:background "orange" :foreground "black"))))
 '(modeline-mousable ((t (:background "orange" :foreground "black"))))
 '(modeline-mousable-minor-mode ((t (:background "orange" :foreground "black"))))
 '(mouse ((t (nil))))
 '(mpg123-face-cur ((t (nil))))
 '(mpg123-face-slider ((t (nil))))
 '(my-tab-face ((t (nil))))
 '(nil ((t (nil))))
 '(overlay-empty-face ((t (nil))))
 '(p4-diff-del-face ((t (nil))))
 '(paren-blink-off ((t (nil))))
 '(paren-face ((t (nil))))
 '(paren-face-match ((t (nil))))
 '(paren-face-mismatch ((t (nil))))
 '(paren-face-no-match ((t (nil))))
 '(paren-match ((t (nil))))
 '(paren-mismatch ((t (nil))))
 '(paren-mismatch-face ((t (nil))))
 '(paren-no-match-face ((t (nil))))
 '(pointer ((t (nil))))
 '(primary-selection ((t (nil))))
 '(reb-match-0 ((t (nil))))
 '(reb-match-1 ((t (nil))))
 '(reb-match-2 ((t (nil))))
 '(reb-match-3 ((t (nil))))
 '(red ((t (nil))))
 '(region ((t (:background "#4a9102" :foreground "black"))))
 '(right-margin ((t (nil))))
 '(rpm-spec-dir-face ((t (nil))))
 '(rpm-spec-doc-face ((t (nil))))
 '(rpm-spec-ghost-face ((t (nil))))
 '(rpm-spec-macro-face ((t (nil))))
 '(rpm-spec-package-face ((t (nil))))
 '(rpm-spec-tag-face ((t (nil))))
 '(rpm-spec-var-face ((t (nil))))
 '(scroll-bar ((t (nil))))
 '(secondary-selection ((t (:background "orange" :foreground "black"))))
 '(semantic-dirty-token-face ((t (nil))))
 '(semantic-intangible-face ((t (nil))))
 '(semantic-read-only-face ((t (nil))))
 '(semantic-unmatched-syntax-face ((t (nil))))
 '(senator-intangible-face ((t (nil))))
 '(senator-momentary-highlight-face ((t (nil))))
 '(senator-read-only-face ((t (nil))))
 '(sgml-comment-face ((t (nil))))
 '(sgml-doctype-face ((t (nil))))
 '(sgml-end-tag-face ((t (nil))))
 '(sgml-entity-face ((t (nil))))
 '(sgml-ignored-face ((t (nil))))
 '(sgml-ms-end-face ((t (nil))))
 '(sgml-ms-start-face ((t (nil))))
 '(sgml-pi-face ((t (nil))))
 '(sgml-sgml-face ((t (nil))))
 '(sgml-short-ref-face ((t (nil))))
 '(sgml-shortref-face ((t (nil))))
 '(sgml-start-tag-face ((t (nil))))
 '(sh-heredoc-face ((t (nil))))
 '(shell-option-face ((t (nil))))
 '(shell-output-2-face ((t (nil))))
 '(shell-output-3-face ((t (nil))))
 '(shell-output-face ((t (nil))))
 '(shell-prompt-face ((t (nil))))
 '(show-block-face1 ((t (nil))))
 '(show-block-face2 ((t (nil))))
 '(show-block-face3 ((t (nil))))
 '(show-block-face4 ((t (nil))))
 '(show-block-face5 ((t (nil))))
 '(show-block-face6 ((t (nil))))
 '(show-block-face7 ((t (nil))))
 '(show-block-face8 ((t (nil))))
 '(show-block-face9 ((t (nil))))
 '(show-paren-match-face ((t (:background "orange" :foreground "black"))))
 '(show-paren-mismatch-face ((t (:underline t))))
 '(show-tabs-space-face ((t (nil))))
 '(show-tabs-tab-face ((t (nil))))
 '(smerge-base-face ((t (nil))))
 '(smerge-markers-face ((t (nil))))
 '(smerge-mine-face ((t (nil))))
 '(smerge-other-face ((t (nil))))
 '(speedbar-button-face ((t (nil))))
 '(speedbar-directory-face ((t (nil))))
 '(speedbar-file-face ((t (nil))))
 '(speedbar-highlight-face ((t (nil))))
 '(speedbar-selected-face ((t (nil))))
 '(speedbar-separator-face ((t (nil))))
 '(speedbar-tag-face ((t (nil))))
 '(strokes-char-face ((t (nil))))
 '(swbuff-current-buffer-face ((t (nil))))
 '(tabbar-button-face ((t (nil))))
 '(tabbar-default-face ((t (nil))))
 '(tabbar-selected-face ((t (nil))))
 '(tabbar-separator-face ((t (nil))))
 '(tabbar-unselected-face ((t (nil))))
 '(template-message-face ((t (nil))))
 '(term-black ((t (nil))))
 '(term-blackbg ((t (nil))))
 '(term-blue ((t (nil))))
 '(term-blue-bold-face ((t (nil))))
 '(term-blue-face ((t (nil))))
 '(term-blue-inv-face ((t (nil))))
 '(term-blue-ul-face ((t (nil))))
 '(term-bluebg ((t (nil))))
 '(term-bold ((t (nil))))
 '(term-cyan ((t (nil))))
 '(term-cyan-bold-face ((t (nil))))
 '(term-cyan-face ((t (nil))))
 '(term-cyan-inv-face ((t (nil))))
 '(term-cyan-ul-face ((t (nil))))
 '(term-cyanbg ((t (nil))))
 '(term-default ((t (nil))))
 '(term-default-bg ((t (nil))))
 '(term-default-bg-inv ((t (nil))))
 '(term-default-bold-face ((t (nil))))
 '(term-default-face ((t (nil))))
 '(term-default-fg ((t (nil))))
 '(term-default-fg-inv ((t (nil))))
 '(term-default-inv-face ((t (nil))))
 '(term-default-ul-face ((t (nil))))
 '(term-green ((t (nil))))
 '(term-green-bold-face ((t (nil))))
 '(term-green-face ((t (nil))))
 '(term-green-inv-face ((t (nil))))
 '(term-green-ul-face ((t (nil))))
 '(term-greenbg ((t (nil))))
 '(term-invisible ((t (nil))))
 '(term-invisible-inv ((t (nil))))
 '(term-magenta ((t (nil))))
 '(term-magenta-bold-face ((t (nil))))
 '(term-magenta-face ((t (nil))))
 '(term-magenta-inv-face ((t (nil))))
 '(term-magenta-ul-face ((t (nil))))
 '(term-magentabg ((t (nil))))
 '(term-red ((t (nil))))
 '(term-red-bold-face ((t (nil))))
 '(term-red-face ((t (nil))))
 '(term-red-inv-face ((t (nil))))
 '(term-red-ul-face ((t (nil))))
 '(term-redbg ((t (nil))))
 '(term-underline ((t (nil))))
 '(term-white ((t (nil))))
 '(term-white-bold-face ((t (nil))))
 '(term-white-face ((t (nil))))
 '(term-white-inv-face ((t (nil))))
 '(term-white-ul-face ((t (nil))))
 '(term-whitebg ((t (nil))))
 '(term-yellow ((t (nil))))
 '(term-yellow-bold-face ((t (nil))))
 '(term-yellow-face ((t (nil))))
 '(term-yellow-inv-face ((t (nil))))
 '(term-yellow-ul-face ((t (nil))))
 '(term-yellowbg ((t (nil))))
 '(tex-math-face ((t (nil))))
 '(texinfo-heading-face ((t (nil))))
 '(text-cursor ((t (nil))))
 '(tool-bar ((t (nil))))
 '(tooltip ((t (nil))))
 '(trailing-whitespace ((t (nil))))
 '(underline ((t (:underline t))))
 '(variable-pitch ((t (nil))))
 '(vc-annotate-face-0046FF ((t (nil))))
 '(vcursor ((t (nil))))
 '(vertical-divider ((t (nil))))
 '(vhdl-font-lock-attribute-face ((t (nil))))
 '(vhdl-font-lock-directive-face ((t (nil))))
 '(vhdl-font-lock-enumvalue-face ((t (nil))))
 '(vhdl-font-lock-function-face ((t (nil))))
 '(vhdl-font-lock-generic-/constant-face ((t (nil))))
 '(vhdl-font-lock-prompt-face ((t (nil))))
 '(vhdl-font-lock-reserved-words-face ((t (nil))))
 '(vhdl-font-lock-translate-off-face ((t (nil))))
 '(vhdl-font-lock-type-face ((t (nil))))
 '(vhdl-font-lock-variable-face ((t (nil))))
 '(vhdl-speedbar-architecture-face ((t (nil))))
 '(vhdl-speedbar-architecture-selected-face ((t (nil))))
 '(vhdl-speedbar-configuration-face ((t (nil))))
 '(vhdl-speedbar-configuration-selected-face ((t (nil))))
 '(vhdl-speedbar-entity-face ((t (nil))))
 '(vhdl-speedbar-entity-selected-face ((t (nil))))
 '(vhdl-speedbar-instantiation-face ((t (nil))))
 '(vhdl-speedbar-instantiation-selected-face ((t (nil))))
 '(vhdl-speedbar-package-face ((t (nil))))
 '(vhdl-speedbar-package-selected-face ((t (nil))))
 '(vhdl-speedbar-subprogram-face ((t (nil))))
 '(viper-minibuffer-emacs-face ((t (nil))))
 '(viper-minibuffer-insert-face ((t (nil))))
 '(viper-minibuffer-vi-face ((t (nil))))
 '(viper-replace-overlay-face ((t (nil))))
 '(viper-search-face ((t (nil))))
 '(vm-xface ((t (nil))))
 '(vmpc-pre-sig-face ((t (nil))))
 '(vmpc-sig-face ((t (nil))))
 '(w3m-anchor-face ((t (nil))))
 '(w3m-arrived-anchor-face ((t (nil))))
 '(w3m-header-line-location-content-face ((t (nil))))
 '(w3m-header-line-location-title-face ((t (nil))))
 '(white ((t (nil))))
 '(widget ((t (nil))))
 '(widget-button-face ((t (nil))))
 '(widget-button-pressed-face ((t (nil))))
 '(widget-documentation-face ((t (nil))))
 '(widget-field-face ((t (nil))))
 '(widget-inactive-face ((t (nil))))
 '(widget-single-line-field-face ((t (nil))))
 '(woman-addition-face ((t (nil))))
 '(woman-bold-face ((t (nil))))
 '(woman-italic-face ((t (nil))))
 '(woman-unknown-face ((t (nil))))
 '(x-face ((t (nil))))
 '(xrdb-option-name-face ((t (nil))))
 '(xref-keyword-face ((t (nil))))
 '(xref-list-default-face ((t (nil))))
 '(xref-list-pilot-face ((t (nil))))
 '(xref-list-symbol-face ((t (nil))))
 '(yellow ((t (nil))))
 '(zmacs-region ((t (nil)))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'matrix)

;;; matrix-theme.el ends here
