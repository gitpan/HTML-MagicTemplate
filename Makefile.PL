use ExtUtils::MakeMaker;

WriteMakefile
(
  PREREQ_PM        => { 'Text::MagicTemplate' => '3.05' ,
                        'HTML::TableTiler'    => '1.0' ,
                        'HTML::FillInForm'    => '1.0' } ,
  NAME             => 'HTML::MagicTemplate',
  VERSION_FROM     => 'lib/HTML/MagicTemplate.pm',
  ($] ge '5.005')
     ? ('AUTHOR'   => 'Domizio Demichelis <dd\@4pro.net>',
        'ABSTRACT' => 'HTML handlers for Text::MagicTemplate used in a HTML environment' )
     : (),
);


sub MY::tool_autosplit
{ 'AUTOSPLITFILE => $(PERLRUN) -MAutoSplit  -e "autosplit($$ARGV[0], $$ARGV[1], 1, 0, 0);"'}
