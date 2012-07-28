use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  AUTHOR         => q{Красимир Беров <berov@cpan.org>},
  VERSION_FROM   => 'lib/MyMojo.pm',
  ABSTRACT_FROM  => 'lib/MyMojo.pm',

  PREREQ_PM => {
    'Mojolicious' => '3.14',
    'App::cpanminus' => 0,
    'Mojolicious::Command::deploy',
    'Mojolicious::Plugin::I18N',
  },
  LICENSE      => 'artistic_2',
  META_MERGE   => {
    requires  => {perl => '5.010001'},
    resources => {
      homepage    => 'https://github.com/kberov/my_mojo',
      license     => 'http://www.opensource.org/licenses/artistic-license-2.0',
      MailingList => 'http://groups.google.com/group/mojolicious',
      repository  => 'https://github.com/kberov/my_mojo',
      bugtracker  => 'https://github.com/kberov/my_mojo/issues'
    },
    no_index => {directory => ['t']}
  },
  EXE_FILES => ['script/my_mojo'],
  test => {TESTS => 't/*.t t/*/*.t'}
);
