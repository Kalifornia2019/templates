  #!/usr/bin/perl

  use strict;
  use DBI;

  #Встанолюємо зєднання з БД
  my $dbh = DBI->connect(          
    "dbi:mysql:dbname=perl", 
    "root",                          
    "9101984dvir",                          
    { RaiseError => 1 },         
  ) or die $DBI::errstr;

  #Відкриваємо зображення
  open IMAGE, "image.png" or die $!;

  #Зчитуємо двійкові дані з файлу зображення
  my ($image, $buff);
  while(read IMAGE, $buff, 1024) {
    $image .= $buff;
  }

  #Вставляємо зображення в табл. Images
  my $stm = $dbh->prepare("INSERT INTO Images(Id, Data) VALUES (1, ?)");
  $stm->bind_param(1, $image, DBI::SQL_BLOB);
  $stm->execute();

  close(IMAGE);
  $stm->finish();
  $dbh->disconnect();