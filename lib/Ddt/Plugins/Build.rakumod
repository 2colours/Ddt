use Ddt;
use Ddt::Distribution;
unit module Ddt::Plugins::Build;

constant builder-extensions = <pm pm6 rakumod>;

#| Build the module in current directory
multi MAIN("build") is export 
{
    my $ddt = Ddt::Distribution.new: TOPDIR;
    $ddt.generate-README;
    $ddt.generate-META6;
    return unless "Build".IO.extension(builder-extensions.any, :0parts).f;
    run "zef", "build", ".";
}

