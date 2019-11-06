#!/usr/bin/perl
=head1 NAME

 Hello  world

=cut

use strict;
use warnings;

# Включення шляху
BEGIN {
  our $libpath = '/usr/abills/';
  my $sql_type = 'mysql';
  unshift(@INC,
    $libpath . "Abills/$sql_type/",
    $libpath . "Abills/modules/",
    $libpath . '/lib/',
    $libpath . '/Abills/',
    $libpath
  );
}

#Модуль конфігурації
use Conf;
our (
  $libpath,
  %conf,
  %lang,
  $base_dir,
);

# конфігю файл
do "../libexec/config.pl";

# HTML візуалізація
use Abills::HTML;
my $html = Abills::HTML->new(
  {
    IMG_PATH => 'img/',
    NO_PRINT => 1,
    CONF     => \%conf,
    CHARSET  => $conf{default_charset},
  }
);

# Підключення до бази
use Abills::SQL;
my $db = Abills::SQL->connect($conf{dbtype}, $conf{dbhost}, $conf{dbname}, $conf{dbuser}, $conf{dbpasswd}, {
  CHARSET => ($conf{dbcharset}) ? $conf{dbcharset} : undef
});

# Включення словника
if($html->{language} ne 'english') {
  do $libpath . "/language/english.pl";
}

if(-f $libpath . "/language/$html->{language}.pl") {
  do $libpath."/language/$html->{language}.pl";
}

# Підключення модуля
require Abills::Templates;

# Включение конфигурационного файла
Conf->new($db, undef, \%conf);

$html->{METATAGS} = templates('metatags_client');

print $html->header();

# Діалогову вікно
print $html->message('info', $lang{INFO}, "Hello world!!!\n");

1;