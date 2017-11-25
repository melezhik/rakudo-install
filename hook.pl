my $os  = os();
my $url = config()->{url} || config()->{os_url}->{$os};
my $repo = config()->{repo}->{$os};

my $file = $url; s{.*/(.*)}[$1] for $file;

while (1){

  if ($os =~ /(centos|debian|ubuntu|alpine|fedora)/) {
    my $os_short = $1;  
    run_story("/download", { url => $url, file => $file })->{status} or last;
    run_story("/install/$os_short/", { file => $file })->{status} or last; 
    run_story("/install-zef")->{status} or last; 
    set_stdout("done");
    last;
  }
  elsif ( $os =~ 'archlinux' ) {
    run_story("/install/$os/", { repo => $repo });
    last;
  } else {
    set_stdout("os $os not supported");
    last;
  }
  
}
