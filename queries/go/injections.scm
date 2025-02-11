; extends

(call_expression
	function: (selector_expression
	operand: (identifier) @_operand
	field: (field_identifier) @_field)
	arguments: (argument_list
		(interpreted_string_literal
		(interpreted_string_literal_content) @injection.content))
	(#eq? @_operand "db")
	(#eq? @_field "Query")
	(#set! injection.language "sql"))
