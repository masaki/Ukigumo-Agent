package Ukigumo::Agent::Master;
use strict;
use warnings;
use utf8;

use Mouse;

extends 'Ukigumo::Agent::Manager';

has 'client_nodes' => (
    is      => 'rw',
    isa     => 'ArrayRef',
    lazy    => 1,
    default => sub { +[] },
);

override 'run_job' => sub {
    my ($self, $args) = @_;
    super; # TODO: run master phase job and invoke client phase job
};

no Mouse;

1;
