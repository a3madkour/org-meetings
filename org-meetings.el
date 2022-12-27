(defvar org-meetings-dir (concat org-directory "/Meetings")
  "The directory where the meeting org files are stored
Defaults to org-directory + '/Meetings'
")
;;default to ^
(defun org-meetings/instantiate ()
  "Instantiate org-meetings by setting up the directory"
  (interactive)
    (if (not (boundp 'org-meetings-dir))
        (setq org-meetings-dir (read-directory-name "Select Meetings Directory")))	
  (if (not (f-directory-p org-meetings-dir))
      (make-directory org-meetings-dir)))

(defun org-meetings/new-non-recurring-meeting (filename &optional template)
  "Add a non-recurring meeting file.
If called with TEMPLATE then that TEMPLATE will be used for entries in this file."
 )
(defun org-meetings/new-recurring-meeting (filename &optional template project-list)
  "Add a recurring meeting.
If called with TEMPLATE then that TEMPLATE will be used for entries in this file."
 )
(defun org-meetings/add-project-list-to-meeting (meeting-name project-list)
  "Add the project list to the provided meeting."
 )
(defun org-meetings/add-project-to-meeting (meeting-name project)
  "Add the project to the provided meeting."
 )
(defun org-meetings/add-template-to-meeting (meeting-name &optional arg template)
  "Add the template to the provided meeting.

If ARG is nil, the user will be prompted to add a template. Otherwise
the provided TEMPLATE will be used.
")
(defun org-meetings/add-meeting-entry (meeting-name &optional arg template)
  "Add an entry to the provided meeting.

If ARG is a negative number an entry will be added with the default template, if ARG is
a positive number then entry will be added with the provided template,
and if ARG is nil then the user will be prompted to select a template.
"
)
