local ls = require("luasnip")  -- Load Luasnip
local s = ls.snippet  -- Shortcut for defining a snippet
local t = ls.text_node  -- Text node
local i = ls.insert_node  -- Insert node

-- Snippet for python_recommended_style
ls.add_snippets("python", {
	s("__main", {
		t({"if __name__ == \"__main__\":", "  "}), i(1)
	})
})
