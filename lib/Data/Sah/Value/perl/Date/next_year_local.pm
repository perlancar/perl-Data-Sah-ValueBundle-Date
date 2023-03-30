package Data::Sah::Value::perl::Date::next_year_local;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    +{
        v => 1,
        summary => 'Next year, from local time',
        prio => 50,
        args => {
        },
    };
}

sub value {
    my %cargs = @_;

    #my $gen_args = $cargs{args} // {};
    my $res = {};

    $res->{expr_value} = 'do { my @lt = localtime(); $lt[5]+1900+1 }';

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|value)$

=head1 DESCRIPTION
