# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "1.2.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",        "1.0.0"
github "gcc",            "1.0.0"
github "git",            "1.0.0"
github "homebrew",       "1.1.2"
github "hub",            "1.0.0"
github "nginx",          "1.1.0"
github "nodejs",         "1.0.0"
github "nvm",            "1.0.0"
github "ruby",           "3.1.0"
github "stdlib",         "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",           "1.0.0"


github "flux",           "0.0.1"
github "spotify",        "1.0.0"
github "iterm2",         "1.0.0"
github "java",           "1.0.6"
github "sparrow",        "1.0.0"
github "alfred",         "1.0.1"
github "dropbox",        "1.0.0"
github "tower",          "0.1.2", :repo => "rhoml/puppet-tower"
github "sublime_text_2", "1.1.0", :repo => "rhoml/puppet-sublime_text_2"
github "chrome",         "1.1.0"
github "hipchat",        "1.0.1"
github "mou",            "1.0.0"
github "ccleaner",       "1.0.1"
github "tmux",           "1.0.1"
github "wget",           "1.0.0"
github "heroku",         "1.0.0"
github "handbrake",      "1.0.0"
github "geoip",          "1.0.0"
github "colloquy",       "1.0.0"
github "istatmenus3",    "1.0.0"
github "caffeine",       "1.0.0"
github "crashplan",      "1.0.1"
github "gitx",           "1.1.0"
github "firefox",        "1.0.3"
github "gpgme",          "1.0.0"
github "autoconf",       "1.0.0"
github "dpkg",           "1.0.0"
github "emacs",          "1.0.0"
github "erlang",         "1.0.0"
github "ghostscript",    "1.0.0"
github "graphviz",       "1.0.0"
github "repository",     "1.0.0"
github "screen",         "1.0.0"
github "slate",          "1.0.0"
github "sudo",           "1.0.0"
github "sysctl",         "1.0.0"
github "viscosity",      "1.0.0"
github "vlc",            "1.0.0"
github "watts",          "1.0.0"
github "zsh",            "1.0.0"
github "wunderlist",     "1.0.0"
github "keepassx",       "1.0.0"
github "cord",           "1.0.0"
github "textexpander",   "1.0.0"
github "cyberduck",      "1.0.0"
github "jumpcut",        "1.0.0"
github "adium",          "1.0.1"
github "vim",            "1.0.0"
github "sequel",         "0.1.0", :repo => "rhoml/puppet-sequel"
github "drive",          "0.1.0", :repo => "rhoml/puppet-drive"
github "virtualbox",     "1.0.1"
github "vagrant",        "2.0.3"



# Optional/custom modules. There are tons available at
# https://github.com/boxen.
