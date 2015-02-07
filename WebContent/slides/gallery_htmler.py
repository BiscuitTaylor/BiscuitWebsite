from os import listdir
from os.path import isfile, join

subdirs = [ f for f in listdir('.') if not isfile(join('.',f)) ]

for subdir in subdirs:
	onlyfiles = [ f for f in listdir(subdir) if isfile(join(subdir,f)) ]
	print(onlyfiles)
	
	for f in onlyfiles:
	    if ('.tif' in f):
	        # one of our slides
	        # Convert filename to jpg_image, thumbnail_image, slide_title, and slide_alt_title
	        tifname = f
	        
	        jpg_image = "/".join([subdir, tifname.replace('.tif', '.JPG')])
	        thumbnail_image = "/".join([subdir, tifname.replace('.tif', '_tn.jpg')])
	        
	        slide_title = tifname.replace('.tif', '')
	        slide_title = slide_title.replace('_', ' ')	# separate words
	        slide_title = slide_title.title()	# Capitalize First Letter Of Each Word
	        
	        slide_alt_title = slide_title.split()[0]
	        
	        html_line = '<a rel="{jpg}" href="{jpg}"><img src="{thumb}" title="{title}" alt="{alt}"></a>'.format(jpg=jpg_image, thumb = thumbnail_image, title=slide_title, alt=slide_alt_title)
	        print(html_line+"\n")
	
#    <a rel="japan/merchants_48.JPG" href="japan/merchants_48.JPG"><img src="japan/merchants_48_tn.jpg" title="Merchants waiting to board our ship" alt="Merchants"></a>
