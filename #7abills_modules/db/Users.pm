package Users;

=head1 NAME
  Users Mysql
=cut

use strict;
use warnings FATAL => 'all';
use parent qw( dbcore );

#**********************************************************

=head2 new($db, $admin, $CONF)
  Arguments:
    $db    - ref to DB
    $admin - current Web session admin
    $CONF  - ref to %conf
  Returns:
    object
=cut

#**********************************************************
sub new {
  my $class = shift;
  my ($db, $admin, $CONF) = @_;

  my $self = {};
  bless($self, $class);

  $self->{db}    = $db;
  $self->{admin} = $admin;
  $self->{conf}  = $CONF;

  return $self;
}

#**********************************************************

=head2 list($attr)
  Arguments:
    $attr - hash_ref
  Returns:
=cut

#**********************************************************
sub list {
  my $self = shift;
  my ($attr) = @_;

  my $WHERE = $self->search_former(
    $attr,
    [ [ 'ID', 'INT', 'd.uid', 1 ], [ 'NAME', 'STR', 'd.name', 1 ], [ 'ADDRESS', 'STR', 'd.address', 1 ], [ 'EMAIL', 'STR', 'd.email', 1 ], ],
    {
      WHERE => 1
    }
  );
  $self->query(
    "SELECT
    $self->{SEARCH_FIELDS}
    id
    FROM users_test d 
    $WHERE;
     ",
    undef,
    $attr
  );
  return $self->{list};
}

#**********************************************************

=head2 info($id)
  
=cut

#**********************************************************
sub info {
  my $self = shift;
  my ($id) = @_;

  $self->query(
    "SELECT name, address, email FROM users_test WHERE id = ? ",
    undef,
    {
      INFO => 1,
      Bind => [$id],
    }
  );

  return $self;
}

#**********************************************************

=head2 add($attr)
 
=cut

#**********************************************************
sub add {
  my $self = shift;
  my ($attr) = @_;

  return $self->query_add('users_test', $attr);
}

#**********************************************************

=head2 del($id)
 
=cut

#**********************************************************
sub del {
  my $self = shift;
  my ($id) = @_;

  return $self->query_del('users_test', { ID => $id });
}

#**********************************************************

=head2 change($attr)
 
=cut

#**********************************************************
sub change {
  my $self = shift;
  my ($attr) = @_;

  return $self->changes(
    {
      CHANGE_PARAM => 'ID',
      TABLE        => 'users_test',
      DATA         => $attr
    }
  );
}

1;