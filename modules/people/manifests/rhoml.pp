class people::rhoml {
  include spotify
  include iterm2::stable
  include flux
  include dropbox
  include sublime_text_2
  include chrome
  include hipchat
  include mou
  include ccleaner
  include colloquy
  include crashplan
  include gitx
  include autoconf
  include dpkg
  include slate
  include vlc
  include keepassx
  include cyberduck
  include adium
  include viscosity
  include sequel
  include firefox
  include java
  include drive
  include virtualbox
  include vagrant
  # Include all Wuaki.TV projects
  include projects::all

  $home                         = "/Users/${::luser}"
  $my                           = "${home}/my"
  $development_path             = "${home}/Development"
  $dotfiles                     = "${my}/dotfiles"
  $ec2                          = "${home}/.ec2"
  $aws_tools                    = "${ec2}/aws-tools"

  ## START Variables for rhoml repositories
  $rhoml_development_path       = "${development_path}/rhoml"
  $rhoml_aws_autoscaling        = "${rhoml_development_path}/aws-autoscaling"
  $rhoml_blog                   = "${rhoml_development_path}/rhommelldotcom"
  $rhoml_puppet_firefox         = "${rhoml_development_path}/puppet_firefox"
  $rhoml_puppet_sequel          = "${rhoml_development_path}/puppet_sequel"
  $rhoml_puppet_tower           = "${rhoml_development_path}/puppet_tower"
  $rhoml_puppet_sublime_text_2  = "${rhoml_development_path}/puppet_sublime_text_2"
  $rhoml_dotfiles               = "${rhoml_development_path}/dotfiles"
  $rhoml_redis_proxy            = "${rhoml_development_path}/redis_proxy"
  $rhoml_puppet_git             = "${rhoml_development_path}/puppet_git"
  $rhoml_lograge                = "${rhoml_development_path}/lograge"
  $rhoml_aws_tools              = "${rhoml_development_path}/aws_tools"
  $rhoml_puppet_osxbundle       = "${rhoml_development_path}/puppet_osxbundle"
  $rhoml_graphite_web           = "${rhoml_development_path}/graphite_web"
  $rhoml_puppet_aws             = "${rhoml_development_path}/puppet_aws"
  $rhoml_hubot_scripts          = "${rhoml_development_path}/hubot_scripts"
  $rhoml_redis_audit            = "${rhoml_development_path}/redis_audit"
  $rhoml_backstop               = "${rhoml_development_path}/backstop"
  $rhoml_swordfish              = "${rhoml_development_path}/swordfish"
  $rhoml_gitflow                = "${rhoml_development_path}/gitflow"
  $rhoml_puppet_rbenv           = "${rhoml_development_path}/puppet_rbenv"
  $rhoml_puppet_homebrew        = "${rhoml_development_path}/puppet_homebrew"
  $rhoml_check_radius           = "${rhoml_development_path}/check_radius"
  $rhoml_check_iptables         = "${rhoml_development_path}/check_iptables"
  $rhoml_mysql_proxy            = "${rhoml_development_path}/mysql_proxy"
  ## END Variables for rhoml repositories

  file { 
    "$my":
      ensure => directory,
      owner  => "${::luser}",
      group  => staff,
      mode   => '0755';
    
    "$development_path":
      ensure => directory,
      owner  => "${::luser}",
      group  => staff,
      mode   => '0755';

    "$ec2":
      ensure => directory,
      owner  => "${::luser}",
      group  => staff,
      mode   => '0755';

    "$rhoml_development_path":
      ensure => directory,
      owner  => "${::luser}",
      group  => staff,
      mode   => '0755'
  }

  repository { 

    "${dotfiles}":
      source  => 'rhoml/dotfiles',
      require => File["${my}"],
      notify  => Exec['ln-dotfiles'];

    "${aws_tools}":
      source   => 'rhoml/aws-tools',
      require  => File["${ec2}"];

    ## Added Github Repositories for rhoml

    "${rhoml_puppet_firefox}":
      source   => 'rhoml/puppet-firefox',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_sequel}":
      source   => 'rhoml/puppet-sequel',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_tower}":
      source   => 'rhoml/puppet-tower',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_sublime_text_2}":
      source   => 'rhoml/puppet-sublime_text_2',
      require  => File["${rhoml_development_path}"];

    "${rhoml_redis_proxy}":
      source   => 'rhoml/redis-proxy',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_git}":
      source   => 'rhoml/puppet-git',
      require  => File["${rhoml_development_path}"];

    "${rhoml_lograge}":
      source   => 'rhoml/lograge',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_osxbundle}":
      source   => 'rhoml/puppet-osxbundle',
      require  => File["${rhoml_development_path}"];

    "${rhoml_graphite_web}":
      source   => 'rhoml/graphite-web',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_aws}":
      source   => 'rhoml/puppet-aws',
      require  => File["${rhoml_development_path}"];

    "${rhoml_hubot_scripts}":
      source   => 'rhoml/hubot-scripts',
      require  => File["${rhoml_development_path}"];

    "${rhoml_redis_audit}":
      source   => 'rhoml/redis-audit',
      require  => File["${rhoml_development_path}"];

    "${rhoml_backstop}":
      source   => 'rhoml/backstop',
      require  => File["${rhoml_development_path}"];

    "${rhoml_swordfish}":
      source   => 'rhoml/swordfish',
      require  => File["${rhoml_development_path}"];

    "${rhoml_gitflow}":
      source   => 'rhoml/gitflow',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_rbenv}":
      source   => 'rhoml/puppet-rbenv',
      require  => File["${rhoml_development_path}"];

    "${rhoml_puppet_homebrew}":
      source   => 'rhoml/puppet-homebrew',
      require  => File["${rhoml_development_path}"];

    "${rhoml_check_radius}":
      source   => 'rhoml/check-radius',
      require  => File["${rhoml_development_path}"];

    "${rhoml_check_iptables}":
      source   => 'rhoml/check-iptables',
      require  => File["${rhoml_development_path}"];

    "${rhoml_mysql_proxy}":
      source   => 'rhoml/mysql_proxy',
      require  => File["${rhoml_development_path}"];

    "${rhoml_blog}":
      source   => 'rhoml/rhommelldotcom',
      require  => File["${rhoml_development_path}"]
  }

  exec { 'ln-dotfiles':
    command      => "/bin/sh ${my}/dotfiles/install.sh",
    refreshonly  => true 
  }
}
