;; 文字コード                                                              
(set-language-environment "Japanese")
         (require 'ucs-normalize)
         (prefer-coding-system 'utf-8-hfs)
         (setq file-name-coding-system 'utf-8-hfs)
         (setq locale-coding-system 'utf-8-hfs)

;; Windowsで英数と日本語にMeiryoを指定                                     
;; Macで英数と日本語にRictyを指定                                          

;         (set-face-attribute 'default nil                                 
;                            :family "Ricty"  ;; 英数                      
;             OA                :height 140)                               
;         (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty"))  ;; 日本語                                                           
