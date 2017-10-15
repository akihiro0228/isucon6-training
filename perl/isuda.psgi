#!/usr/bin/env plackup
use 5.014;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";
use File::Spec;
use Plack::Builder;

use Isuda::Web;

my $root_dir = $FindBin::Bin;
my $app = Isuda::Web->psgi($root_dir);
builder {
    enable 'ReverseProxy';
    enable 'Session::Cookie',
        session_key => "isuda_session",
        secret      => 'tonymoris';
    $app;
};
