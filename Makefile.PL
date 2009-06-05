use strict;
use inc::Module::Install;
name 'POE-Component-SmokeBox-Uploads-RSS';
author 'Chris Williams <chris@bingosnet.co.uk>';
license 'perl';
auto_license holder => 'Chris Williams';
version_from 'lib/POE/Component/SmokeBox/Uploads/RSS.pm';
abstract_from 'lib/POE/Component/SmokeBox/Uploads/RSS.pm';
readme_from 'lib/POE/Component/SmokeBox/Uploads/RSS.pm';
perl_version '5.006';
build_requires 'Test::More' => 0.47;
requires 'HTTP::Request' => 0;
requires 'HTML::LinkExtor' => 0;
requires 'POE' => 0.38;
requires 'POE::Component::Client::HTTP' => 0.82;
requires 'POE::Component::RSSAggregator' => 1.02;
clean_files 'network.tests';
clean_files 'search-cpan-recent.sto';
my $value = prompt( 'Do you want live network tests [N/y]?', 'N' );
if ( $value =~ /^y$/i ) {
  open FH, "> network.tests" or die "$!\n";
  print FH "Bleh\n";
  close FH;
}
auto_provides;
githubmeta;
WriteAll();
