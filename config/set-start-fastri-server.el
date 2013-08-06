;; start fastri-server
;;http://d.hatena.ne.jp/yukihr/20100211/1265866546
(defun start-fastri-server()
  (let*
      ((progname "fastri-server")
       (buffname (format "*%S*" progname)))
    (start-process progname buffname progname)))
(start-fastri-server)
