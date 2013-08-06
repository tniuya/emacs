;; Emacsに行番号を表示する                                                      
;;http://web.student.tuwien.ac.at/~e0225855/linum/linum.el                      
(require 'line-num)
(global-linum-mode)
;; 行番号表示                                                                   
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#800"
                    :height 0.9)

;; 行番号フォーマット                                                           
(setq linum-format "%4d ")

