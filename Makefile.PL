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
  AUTHOR          => 'Brian Lalonde (brianl@sd81.k12.wa.us)',
  VERSION_FROM    => 'MatchNames.pm', 
  ABSTRACT_FROM   => 'MatchNames.pm',
  BINARY_LOCATION => 'Lingua-EN-MatchNames.ppm.tar.gz',
  dist            => 
  {
    TAR      => 'c:\\winnt\\unixtool\\tar.exe',
    TARFLAGS => 'cvf',
    COMPRESS => 'c:\\winnt\\unixtool\\gzip.exe --best',
    SUFFIX   => '.gz',
  },
);
