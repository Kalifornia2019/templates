  #!/usr/bin/perl

  use strict;
  use DBI;

  #Змінні-параметри підключення до бази данних
  my $host = "localhost";
  my $port = "80";

  my $user = "root";
  my $pass = "9101984dvir";

  my $db = "perl";

  print "Content-type: text/html\n\n";

  #Підключення до БД
  my $dbh;
  $dbh = DBI->connect("DBI:mysql:$db:$host:$port",
  $user,$pass) or die $DBI::errstr;

  #Робимо виборку з БД
  my $stm = $dbh->prepare("SELECT * FROM Images WHERE Id=1");
  $stm->execute();
  my $image = $stm->fetch();

  #Відкриваємо Image, створюємо новий Image2.png
  open IMAGE, ">Image2.png" or die $!;
  print IMAGE @$image;
  close(IMAGE);

  $stm->finish();
  $dbh->disconnect();