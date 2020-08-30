`helm-hatena-bookmark' is `helm' interface of your Hatena::Bookmark.
`helm-c-source-hatena-bookmark' is a source for your Hatena::Bookmark.
`helm-hatena-bookmark-get-dump' is function to get dump your Hatena::Bookmark.

Install
Put this file into load-path'ed directory, and byte compile it if
desired.  And put the following expression into your ~/.emacs.

(require 'helm-hatena-bookmark)
(setq helm-hatena-bookmark-full-frame t)

And, you should execute `helm-hatena-bookmark-get-dump to reflesh dump file.
