use v6.c;
use Test;
use File::Temp;
use Ddt :TEST;

plan 1;

subtest "Generate a test file", {
    plan 2;
    temp $*CWD = tempdir.IO;
    ddt "new", "Foo::Bar";
    chdir "Foo-Bar";
    ok ddt('generate', 'test', 'foo').success, "Generate test command exited successful";
    ok <t/foo.t>.IO.e, "Test file was created";
}
