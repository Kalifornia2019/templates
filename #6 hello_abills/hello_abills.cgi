#!/usr/bin/perl

=head1 NAME

 Hello  world

=cut

use strict;
use warnings;

# Turn on the path
BEGIN {
  our $libpath = '../';
  my $sql_type = 'mysql';
  unshift(@INC, $libpath . "Abills/$sql_type/", $libpath . "Abills/modules/", $libpath . '/lib/', $libpath . '/Abills/', $libpath);
}

# Configuration module
use Conf;
our ($libpath, %conf, %lang, $base_dir,);

# config file
do "../libexec/config.pl";

# HTML visualization
use Abills::HTML;
my $html = Abills::HTML->new(
  {
    IMG_PATH => 'img/',
    NO_PRINT => 1,
    CONF     => \%conf,
    CHARSET  => $conf{default_charset},
  }
);

# Connection to the base
use Abills::SQL;
my $db = Abills::SQL->connect(
  $conf{dbtype},
  $conf{dbhost},
  $conf{dbname},
  $conf{dbuser},
  $conf{dbpasswd},
  {
    CHARSET => ($conf{dbcharset}) ? $conf{dbcharset} : undef
  }
);

# Turn on the dictionary
if ($html->{language} ne 'english') {
  do $libpath . "/language/english.pl";
}

if (-f $libpath . "/language/$html->{language}.pl") {
  do $libpath . "/language/$html->{language}.pl";
}

# Module connection
require Abills::Templates;

# Include a configuration file
Conf->new($db, undef, \%conf);

$html->{METATAGS} = templates('metatags_client');

print $html->header();

# Dialog box
print $html->message('info', $lang{INFO}, "Hello world\nSystem name '$conf{WEB_TITLE}'");

1;