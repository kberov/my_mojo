package MyMojo;
use Mojo::Base 'Mojolicious';
our $VERSION = 0.01;
# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('example#welcome');
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

MyMojo for my|your|our web-presence

=head1 DESCRIPTON

This is a  basic Mojolicious application, which will be used as
a namespace and base to create complex application infrastructures by
adding specific plugins. On its own MyMojo will add
only default functionality eventually present in any Mojolicious application.

We will strive to adhere to the Mojolicious conventions as described in
L<Mojolicious::Guides::Growing> and L<Mojolicious::Guides::CodingGuidelines>.
We will keep dependencies low as much as possible. Each new plugin will have to take care of its own dependencies.

=head1 INSTALL

  #install via CPAN
  cpan MyMojo
  
  #install using App::cpanminus to a custom base directory
  cpanm -L mydirectory MyMojo

=head1 CONTRIBUTE

Feel free to contribute with plugins, suggestions, bug-fixing, comments, requirements.

=head1 DEPENDENCIES

Altough we try to keep MyMojo core minimalistic it depends on other Perl
modules which are very likely to be needed:

L<Mojolicious>, L<App::cpanminus>, L<Mojolicious::Command::deploy>,
L<Mojolicious::Plugin::I18N>

=head1 AUTHOR

Krasimir Berov (Красимир Беров)

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Красимир Беров (L<berov@cpan.org>).

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

See http://dev.perl.org/licenses/ for more information.
