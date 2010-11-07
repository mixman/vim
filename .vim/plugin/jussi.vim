python <<EOF
def my_caffi(args=None):
	import vim
	#args = vim.eval("a:args")
	print "hello caffi!"
	# do important stuff
	#vim.command("return 1")
EOF

