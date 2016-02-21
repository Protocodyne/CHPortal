proc(_yaml_fix, @string,

	return(replace(replace(replace(@string, "{", "\n  "), "}", ""), ",", "\n "))

)