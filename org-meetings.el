;;(setq org-meetings-dir (concat org-directory "/Meetings"))
;;default to ^
(defun org-meetings/instantiate
    (if (not org-meetings-dir)
        (setq org-meetings-dir (read-directory-name "Select Meetings Directory")))	
  (if (not (f-directory-p org-meetings-dir))
      (make-directory org-meetings-dir)))

;;recurring meetings; will have the same file
;;keep track of the 
;;adding a new recurring meetings entry will add a headline to that meetings file
;;with the template (via org-capture?)
;;customize the template
;;non-recurring meetings will not
