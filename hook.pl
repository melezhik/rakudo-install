my $url = config()->{url};
my $file = $url; s{.*/(.*)}[$1] for $file;

while (1){

  if (os() =~ /(centos|debian|ubuntu)/) {
    my $os = $1;  
    run_story("/download", { url => $url, file => $file })->{status} or last;
    run_story("/install/$os/", { file => $file })->{status} or last; 
    run_story("/install-zef")->{status} or last; 
    set_stdout("done");
    last;
  } else {
    set_stdout("os ".os()." not supported");
    last;
  }
  
}
