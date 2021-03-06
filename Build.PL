use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'HTML::KhatGallery',
    dist_name           => 'khatgallery',
    license             => 'perl',
    dist_author         => 'Kathryn Andersen',
    dist_version_from   => 'lib/HTML/KhatGallery.pm',
	requires            => {
	     # module requirements here
	'Getopt::Long' => 2.34,
	'Pod::Usage' => 0,
	'Getopt::ArgvFile' => 1.09,
	'POSIX' => 0,
	'File::Basename' => 2.73,
	'File::Spec' => 3.0,
	'Cwd' => 3.0,
	'File::stat' => 1.0,
	'YAML' => 0.35,
	'Image::ExifTool' => 0,
	'Image::Magick' => 0,

	},
    build_requires => {
        'Test::More' => 0,
    },
    script_files => [qw(scripts/khatgallery scripts/kg_image_info)],
    create_makefile_pl => 'traditional',
#    add_to_cleanup      => [ 'khatgallery-*' ],

);

$builder->create_build_script();
