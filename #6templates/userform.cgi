 #!/usr/bin/perl

  use strict;
  use warnings;

  use DBI;
  use CGI;

  require "./templ.pm";

  my $cgi = CGI->new;

  print $cgi->header("text/html");
 
  #������� �������
  my $cards = Templ::tmpl("content/cards.tpl");
  my $test = Templ::tmpl("content/test.tpl");

  #����-��������� ���������� �� ���� ������
  my $host = "localhost"; 
  my $port = "80";

  my $user = "root";
  my $pass = "9101984dvir";

  my $db = "users";

  print "Content-type: text/html\n\n";

  #ϳ��������� �� ��
  $dbh = DBI->connect("DBI:mysql:$db:$host:$port", 
  $user,$pass);

  $sql = $dbh->prepare("SELECT name, address, email FROM users");

  $out = $sql->execute()
  or die "���������� ��������� sql: $sql->errstr";

  my $bodycard;
  while (my @user = $query->fetchrow_array()) {
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

