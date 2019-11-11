#!/usr/bin/perl

use strict;
use warnings;

use lib '/var/www/work/db_tpl';

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

# конфіг файл
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
my $config = Conf->new($db, undef, \%conf);

#use parent 'main';
my  $sql = $config->query("SELECT name, address, email FROM users_test;", undef, {COLS_NAME=>1});

print "Content-Type: text/html\n\n";

my $cards = "templates/cards_user.tpl";
my $users = "templates/users_add.tpl";

my $cards_doc = do {
    local $/ = undef;
    open my $fh, "<", $cards
      or die "could not open $cards:$!";
    <$fh>
};

my $users_doc = do {
    local $/ = undef;
    open my $fh, "<", $users
      or die "could not open $users:$!";
    <$fh>
};

my $inner_tpl;

my $list = $config->{'list'};

foreach my $line (@$list)
{$inner_tpl .=$html->tpl_show($users_doc, {name =>($line->{NAME}),
  address=>($line->{ADDRESS}),
  email =>($line->{EMAIL})
});

} 

print $html->tpl_show($cards_doc, {TITLE =>"Користувачі Abills",
  content => $inner_tpl
});


1;