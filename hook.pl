if (os() =~ /centos/) {
  my $url = config()->{rpm_url};
  my $file = $url; s{.*/(.*)}[$1] for $file;
  run_story("/install/centos/", { file => $file }) 
    if run_story("/download", { url => $url, file => $file })->{status};
  set_stdout("done");
} elsif ( os() =~ /debian/ ) {
  run_story("/install/debian");
  set_stdout("done");
} else {
  set_stdout("os ".os()." not supported");
}
