#!/usr/bin/perl

  use strict;
  use warnings;

  use DBI;
  use CGI;

  use lib '/var/www/html/work';
  use templ;

  my $cgi = CGI->new;

  print $cgi->header("text/html");

  #Змінні-параметри підключення до бази данних
  my $host = "localhost"; 
  my $port = "80";

  my $user = "root";
  my $pass = "9101984dvir";

  my $db = "users";


  #Підключення до БД
  my  $dbh = DBI->connect("DBI:mysql:$db:$host:$port", 
  $user,$pass);

  my  $sql = $dbh->prepare("SELECT name, address, email FROM users");

  my $out = $sql->execute()
  or die "Невозможно выполнить sql: $sql->errstr";

   #парсинг шаблонів
  my $cards = Templ::load_tpl("content/cards.tpl");
  my $test = Templ::load_tpl("content/test.tpl");

  my $bodycard;
  while (my @user =$sql->fetchrow_array()) {
    my ($name, $addr, $email) = @user;
  
  $bodycard .= Templ::replace($test, (      
    NAME => $name,
    ADDRESS => $addr,
    EMAIL => $email
    ))
  }

  print Templ::replace($cards, (
    TITLE => "users",
    BODYCARD => $bodycard
  ));

  1; 
