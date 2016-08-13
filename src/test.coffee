class window.Test

  possessiveName: ->
    if @name[@name.length - 1] in ['s', 'x', 'z']
      "#{@name}'"
    else
      "#{@name}'s"

  possessivePassword: ->
	if @name[@name.length - 1] in ['s', 'x', 'z']
	  "#{@name}'"
	else
	  "#{@name}'s"