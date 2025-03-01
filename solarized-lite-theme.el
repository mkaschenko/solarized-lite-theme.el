;;; solarized-lite-theme.el --- A minimal theme based on the Solarized palette

;; Copyright (C) 2011 Ethan Schoonover

;; Author: Maxim Kashchenko <mkaschenko@me.com>
;; Keywords: faces themes
;; Homepage: https://github.com/mkaschenko/solarized-lite-theme.el

;;; Code:

;; https://github.com/altercation/solarized#the-values
;;
;; SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
;; --------- ------- ---- -------  ----------- ---------- ----------- -----------
;; base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
;; base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
;; base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
;; base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
;; base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
;; base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
;; base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
;; base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
;; yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
;; orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
;; red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
;; magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
;; violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
;; blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
;; cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
;; green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
;;
;; https://github.com/altercation/solarized#usage--development
;;
;; base03
;; base02
;; base01 optional emphasised content
;; base00 body text / default code / primary content
;; base0
;; base1  secondary content
;; base2  background highlights
;; base3  background
;;
;; https://raw.githubusercontent.com/altercation/solarized/master/img/solarized-palette.png
;;
;; yellow  split comp
;; orange  complement
;; red     triad
;; magenta tetrad
;; violet  analogous
;; blue    monotone
;; cyan    analogous
;; green   tetrad

(deftheme solarized-lite
  "A minimal theme based on the Solarized palette.")

(let ((primary '((t (:foreground "#626262"))))
      (secondary '((t (:foreground "#8a8a8a"))))
      (highlights '((t (:background "#e4e4e4"))))
      (red '((t (:foreground "#d70000"))))

      (header '((t (:foreground "#626262" :weight bold))))
      (border '((t (:foreground "#8a8a8a" :background "#e4e4e4")))))

  (custom-theme-set-faces
   'solarized-lite

   '(cursor ((t (:foreground "#626262" :background "#fdf6e3"))))
   `(default ,primary)
   '(link ((t (:foreground "#268bd2" :underline t))))
   `(match ,highlights)
   `(region ,highlights)
   `(warning ,primary)

   ;; ace-jump
   `(ace-jump-face-background ,primary)
   `(ace-jump-face-foreground ,highlights)

   ;; ag
   `(ag-match-face ,highlights)

   ;; compilation
   `(compilation-error ,primary)
   `(compilation-info ,header)
   `(compilation-warning ,primary)
   `(compilation-column-number ,primary)
   `(compilation-line-number ,primary)

   ;; comint
   ;; `(comint-highlight-input ,header)

   ;; display-line-numbers
   `(line-number ,secondary)

   ;; dired
   `(dired-directory ,primary)
   `(dired-marked ,highlights)

   ;; flyspell
   '(flyspell-duplicate ((t (:underline t))))
   '(flyspell-incorrect ((t (:underline t))))

   ;; font-lock
   `(font-lock-builtin-face ,primary)
   `(font-lock-comment-face ,primary)
   `(font-lock-constant-face ,primary)
   `(font-lock-function-name-face ,primary)
   `(font-lock-keyword-face ,primary)
   `(font-lock-string-face ,primary)
   `(font-lock-type-face ,primary)
   `(font-lock-variable-name-face ,primary)

   ;; ido
   `(ido-first-match ,header)
   `(ido-only-match ,header)
   `(ido-subdir ,primary)

   ;; isearch
   `(isearch ,highlights)
   `(isearch-fail ,red)

   ;; lazy-highlight
   `(lazy-highlight ,highlights)

   ;; linum
   ;; `(linum ,secondary)

   ;; magit
   ;; `(git-commit-comment-action ,primary)
   ;; `(git-commit-comment-branch-local ,orange)
   ;; `(git-commit-comment-branch-remote ,orange)
   ;; `(git-commit-comment-file ,orange)
   ;; `(git-commit-comment-heading ,orange)

   ;; `(magit-branch-current ,primary)
   ;; `(magit-branch-local ,primary)
   ;; `(magit-branch-remote ,primary)
   ;; `(magit-branch-remote-head ,primary)
   ;; `(magit-tag ,primary)

   ;; `(magit-diff-added ,primary)
   ;; `(magit-diff-added-highlight ,primary)
   ;; `(magit-diff-context ,primary)
   ;; `(magit-diff-context-highlight ,primary)
   ;; `(magit-diff-removed ,primary)
   ;; `(magit-diff-removed-highlight ,primary)

   ;; `(magit-diff-file-heading ,primary)
   ;; `(magit-diff-file-heading-highlight ,primary)
   ;; `(magit-diff-file-heading-selection ,selection)

   ;; `(magit-diff-hunk-heading ,primary)
   ;; `(magit-diff-hunk-heading-highlight ,primary)
   ;; `(magit-diff-hunk-heading-selection ,header)
   ;; `(magit-diff-hunk-region ,highlights)

   ;; `(magit-diff-lines-heading ,secondary)

   ;; `(magit-diff-revision-summary ,header)
   ;; `(magit-diff-revision-summary-highlight ,header)

   ;; `(magit-diffstat-added ,primary)
   ;; `(magit-diffstat-removed ,primary)

   `(magit-log-author ,primary)
   `(magit-log-date ,primary)
   ;; ;; `(magit-log-graph ,secondary)

   ;; `(magit-section-heading ,primary)
   ;; `(magit-section-heading-selection ,header)
   ;; `(magit-section-highlight ((t nil)))

   ;; `(magit-hash ,secondary)
   `(magit-header-line ,header)

   ;; `(magit-item-mark ((t (:weight bold))))

   ;; minibuffer-prompt
   `(minibuffer-prompt ,primary)

   ;; mode-line
   `(mode-line ,border)
   `(mode-line-buffer-id ,border)
   `(mode-line-active ,border)
   `(mode-line-inactive ,border)

   ;; smartparens
   ;; `(show-paren-match ,highlights)
   ;; `(show-paren-match-expression ,match)
   ;; `(show-paren-mismatch ,red)
   ;; `(sp-pair-overlay-face ,primary)

   ;; xref
   ;; `(xref-file-header ,header)
   ;; `(xref-line-number ,secondary)
   ;; `(xref-match ,highlights)
   ))

(custom-theme-set-variables
 'solarized-lite

 ;; compilation
 '(compilation-message-face 'default)

 ;; ibuffer
 '(ibuffer-fontification-alist (cons '(36 (derived-mode-p 'dired-mode) 'dired-directory)
                                     (cons '(31 (memq major-mode ibuffer-help-buffer-modes) 'default) ibuffer-fontification-alist)))
 '(ibuffer-marked-face 'match)
 )

(provide-theme 'solarized-lite)

;;; solarized-lite-theme.el ends here
