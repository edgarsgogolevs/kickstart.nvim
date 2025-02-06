; extends

; support cursor

(call 
 function: (attribute
             object: (identifier) @_object
             attribute: (identifier) @_attribute)
 arguments: (argument_list  
              (string 
                (string_content) @injection.content))
  (#any-of? @_object
   "cursor"
   "cur")
  (#eq? @_attribute "execute")
  (#set! injection.language "sql"))

; support db module

(call 
 function: (attribute
             object: (identifier) @_object
             attribute: (identifier) @_attribute)
 arguments: (argument_list  
              (string 
                (string_content) @injection.content))
  (#eq? @_object "db")
  (#any-of? @_attribute
   "update_id_in"
   "select"
   "select_as_dict"
   "select_as_list"
   "select_row")
  (#set! injection.language "sql"))
