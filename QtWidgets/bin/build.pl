#!/bin/perl
use strict;
use warnings;

sub build_with_QMake {
    print "Running qmake ...\n";
    my $qmake = "/opt/Qt/5.15.17/gcc_64/bin/qmake";

    system($qmake) == 0 or die "Error: qmake failed!\n";
    print "Running make ...\n";
    system("make") == 0 or die "Error: make failed!\n";
}

sub build_with_CMake {
    print "Creating build directory ...\n";
    system("mkdir -p build") == 0 or die "Error: Failed to create build directory!\n";

    print "Changing to build directory ...\n";
    chdir "build" or die "Error: Failed to change directory to build!\n";

    print "Running cmake ...\n";
    system("cmake ..") == 0 or die "Error: cmake failed!\n";

    print "Running make ...\n";
    system("make") == 0 or die "Error: make failed!\n";
}

sub main {
    if (@ARGV != 1) {
        die "Usage: perl build.pl --qmake | --cmake\n";
    }

    my $arg = $ARGV[0];

    if ($arg eq "--qmake") {
        build_with_QMake();
    } elsif ($arg eq "--cmake") {
        build_with_CMake();
    } else {
        die "Error: Invalid argument. Use --qmake or --cmake.\n";
    }
}

main();
