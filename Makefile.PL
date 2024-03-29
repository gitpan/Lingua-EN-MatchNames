use ExtUtils::MakeMaker;

sub MY::postamble { <<'.'; }

dist_both : dist ppmdist 

ppmdist : ppd pure_all
	$(TAR) $(TARFLAGS) $(DISTNAME).ppm.tar blib
	$(RM_RF) blib
	$(RM_RF) pm_to_blib
	$(COMPRESS) $(DISTNAME).ppm.tar
.

WriteMakefile(
  NAME	          => 'Lingua::EN::MatchNames',
  AUTHOR          => 'Brian Lalonde (brian@webcoder.info)',
  VERSION_FROM    => 'MatchNames.pm', 
  ABSTRACT_FROM   => 'MatchNames.pm',
  BINARY_LOCATION => 'Lingua-EN-MatchNames.ppm.tar.gz',
  PREREQ_PM       => 
  {
    'Lingua::EN::NameParse' => 0,
    'Lingua::EN::Nickname'  => 0,
    'String::Approx'        => 0,
    'Text::Metaphone'       => 0,
    'Text::Soundex'         => 0,
  },
  dist            => 
  {
    TAR      => 'C:\\progra~1\\util\\tar.exe',
    TARFLAGS => 'cvf',
    COMPRESS => 'C:\\progra~1\\util\\gzip.exe --best',
    SUFFIX   => '.gz',
  },
);
