if (os() =~ /centos/) {
  run_story("/install/centos/");
  set_stdout("done");
} elsif ( os() =~ /debian/ ) {
  run_story("/install/debian");
  set_stdout("done");
} else {
  set_stdout("os ".os()." not supported");
}
