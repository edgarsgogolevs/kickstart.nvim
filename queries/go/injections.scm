; extends


(call_expression
	function: (selector_expression
	operand: (identifier) @_operand
	field: (field_identifier) @_field)
	arguments: (argument_list [
            (interpreted_string_literal
                (interpreted_string_literal_content) @injection.content)
            (raw_string_literal
                (raw_string_literal_content) @injection.content)
        ])
	(#any-of? @_operand
	 "db"
	 "tx")
	(#any-of? @_field
	 "Query"
	 "Exec"
	 "Prepare"
	 "QueryRow")
	(#set! injection.language "sql"))


(call_expression
	function: (selector_expression
	operand: (selector_expression
	operand: (identifier) @_operand
	field: (field_identifier) @_field))
	arguments: (argument_list [
            (interpreted_string_literal
                (interpreted_string_literal_content) @injection.content)
            (raw_string_literal
                (raw_string_literal_content) @injection.content)
        ])
	(#any-of? @_operand
	 "db"
	 "tx")
	(#any-of? @_field
	 "Query"
	 "Exec"
	 "Prepare"
	 "QueryRow")
	(#set! injection.language "sql"))
