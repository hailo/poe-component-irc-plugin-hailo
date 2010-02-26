use strict;
use warnings;
use inc::Module::Install;

my $dist = 'POE-Component-IRC-Plugin-Hailo';
name           ($dist);
author         ('Hinrik Örn Sigurðsson <hinrik.sig@gmail.com>');
abstract_from  ('lib/POE/Component/IRC/Plugin/Hailo.pm');
version_from   ('lib/POE/Component/IRC/Plugin/Hailo.pm');
install_script ('script/irchailo-seed');
license        ('perl');
homepage       ("http://search.cpan.org/dist/$dist");
githubmeta     ();
bugtracker     ("http://github.com/hinrik/\L$dist/issues");
resources      (Ratings => "http://cpanratings.perl.org/d/$dist");

requires       ('POE::Component::Hailo' => '0');
requires       ('POE::Component::IRC'   => '6.22');

test_requires  ('Test::More'   => '0');
test_requires  ('Test::Script' => '0');
tests_recursive();

author_requires('Perl::Critic'        => '1.098');
author_requires('Test::Perl::Critic'  => '0');
author_requires('Test::Pod'           => '1.41');
author_requires('Test::Pod::Coverage' => '1.08');
author_tests   ('xt');

WriteAll();
