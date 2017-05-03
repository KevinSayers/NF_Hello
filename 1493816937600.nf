infile = Channel.from('atest','two','three','four')

process hello{ 
	publishDir './', mode:'copy' 
	input: 
	val invar_0 from infile
	output: 
	
	"""
	echo ${invar_0}
	"""
}
