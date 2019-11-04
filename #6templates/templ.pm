 #!/usr/bin/perl

  package Templ;

  use strict;
  use warnings;
  use IO::File;

  #**********************************************************
  =head2 load_tpl($address) - Load template

  Arguments:
    $address - Path for template file

  Returns:
    Text from file
 
  Example:
    load_tpl("example.tpl");

  =cut
  #**********************************************************
  sub load_tpl {
    my ($address) = @_;
    my $tpl_file_text="";

    my $file = IO::File->new("<$address");

  
    while(<$file>) {
      $tpl_file_text .= $_;
    }

    return $tpl_file_text;
  }
  #**********************************************************
  =head2 replace($address) - Load template

  Arguments:
    $template - text of template for parse
    %variables - hash with values for replace

  Returns:
    Parsed text

  Example:
    replace($template, (title => "Home page"));

  =cut
  #**********************************************************
  sub replace {
    my ($template, %variables) = @_;

    my @names = keys %variables;

    while(<@names>) {
      $template =~ s/\%*$_*\%/$variables{$_}/g;
    }

    return $template;
  }

  1;
