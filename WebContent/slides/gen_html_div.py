from os import listdir
from os.path import isfile, join

import sys
import argparse     # for parsing command-line arguments in main()


def generate_div_from_subdir(subdir):
    print("Generating <div> for " + str(subdir))

    onlyfiles = [ f for f in listdir(subdir) if isfile(join(subdir,f)) ]
    print(onlyfiles)

    # Use subdir name as a section title
    print('<h2>{s}</h2>'.format(s=subdir))
    # Set up a galleria gallery for each subdir
    print('<div id="gallery"; align="center">')

    for f in onlyfiles:
        if ('.tif' in f):
            # one of our slides
            # Convert filename to jpg_image_big, jpg_image, thumbnail_image, slide_title, and slide_alt_title
            # NOTE - we are assuming that these files have been created with my mac Automator Service 'slide2jpegs'
            tifname = f

            jpg_image_big = "/".join([subdir, tifname.replace('.tif', '_big.jpg')])
            jpg_image = "/".join([subdir, tifname.replace('.tif', '.jpg')])
            thumbnail_image = "/".join([subdir, tifname.replace('.tif', '_tn.jpg')])

            slide_title = tifname.replace('.tif', '')
            slide_title = slide_title.replace('_', ' ')    # separate words
            slide_title = slide_title.title()    # Capitalize First Letter Of Each Word

            slide_alt_title = slide_title.split()[0]

            html_line = '    <a rel="{big}" href="{jpg}">\n' \
                        '    <img src="{thumb}" title="{title}" alt="{alt}"></a>'.format(big=jpg_image_big,
                                                                                         jpg=jpg_image,
                                                                                         thumb = thumbnail_image,
                                                                                         title=slide_title,
                                                                                         alt=slide_alt_title)
            print(html_line+"\n")
    print('</div>')
    print('<hr>')

#    <a rel="japan/merchants_48.JPG" href="japan/merchants_48.JPG"><img src="japan/merchants_48_tn.jpg" title="Merchants waiting to board our ship" alt="Merchants"></a>

##########################################################################################################
'''Use both Defaults and Raw Descriptions from argparse formatter_class'''
class ArgParseCustomFormatter(argparse.ArgumentDefaultsHelpFormatter, argparse.RawDescriptionHelpFormatter):
    pass

def main(argv):

    try:
        description_text =  __doc__ # Reuse docstring at top of file
        examples_text = \
'''Examples:
    python gallery_htmler.py
    '''
        parser = argparse.ArgumentParser(description=description_text,
                                         epilog=examples_text,
                                         formatter_class=ArgParseCustomFormatter)

    except Exception as e:
        print("argparse error: {exc}".format(exc=e))
        parser.print_help()
        sys.exit(2)

    # Parse command-line arguments
    parser.add_argument("-d", "--dir",
                        default=None,
                        help="The directory to generate an html div from.  (Default=traverse subdirs of current dir)")

    args = parser.parse_args()

    if (args.dir):
        specified_directory = join('.',args.dir)
        generate_div_from_subdir(specified_directory)
    else:
        # No directory specified... look in all subdirs of this dir.
        subdirs = [ f for f in listdir('.') if not isfile(join('.',f)) ]

        for subdir in subdirs:
            generate_div_from_subdir(subdir)

if __name__ == "__main__":
        main(sys.argv[1:])
