my $url = config()->{url};
my $file = $url; s{.*/(.*)}[$1] for $file;

if (os() =~ /centos/) {
  run_story("/install/centos/", { file => $file }) 
    if run_story("/download", { url => $url, file => $file })->{status};
  set_stdout("done");
} elsif ( os() =~ /debian/ ) {
  run_story("/install/debian/", { file => $file }) 
    if run_story("/download", { url => $url, file => $file })->{status};
  set_stdout("done");
} else {
  set_stdout("os ".os()." not supported");
}
