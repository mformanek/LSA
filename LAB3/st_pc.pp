#Create Users and User Groups on all the machines

  group { 'managers':
  	ensure => 'present',
    gid => 2001,
  }

    group { 'sales':
  	ensure => 'present',
    gid => 2002,
  }

    group { 'accounting':
  	ensure => 'present',
    gid => 2003,
  }

  user { 'mscott':
    ensure     => 'present',
    comment    => 'M Scott',
    managehome => true,
    password   => '!!',
    groups     => 'managers',
    shell      => '/bin/bash',
    uid        => '3001',
  }

  user { 'dschrute':
    ensure     => 'present',
    comment    => 'D Schrute',
    managehome => true,
    password   => '!!',
    groups     => 'managers',
    shell      => '/bin/bash',
    uid        => '3002',
  }

  user { 'jhalpert':
    ensure     => 'present',
    comment    => 'J Halpert',
    managehome => true,
    password   => '!!',
    groups     => 'managers',
    shell      => '/bin/bash',
    uid        => '3003',
  }

  user { 'pbeesly':
    ensure     => 'present',
    comment    => 'P Beesly',
    managehome => true,
    password   => '!!',
    shell      => '/bin/bash',
    uid        => '3004',
  }

  user { 'abernard':
    ensure     => 'present',
    comment    => 'A Bernard',
    managehome => true,
    password   => '!!',
    groups     => 'sales',
    shell      => '/bin/bash',
    uid        => '3005',
  }

user { 'amartin':
    ensure     => 'present',
    comment    => 'A Martin',
    managehome => true,
    password   => '!!',
    groups     => 'accounting',
    shell      => '/bin/bash',
    uid        => '3006',
  }

user { 'kkapoor':
    ensure     => 'present',
    comment    => 'K Kapoor',
    managehome => true,
    password   => '!!',
    shell      => '/bin/bash',
    uid        => '3007',
  }

user { 'omartinez':
    ensure     => 'present',
    comment    => 'O Martinez',
    managehome => true,
    password   => '!!',
    groups     => 'accounting',
    shell      => '/bin/bash',
    uid        => '3008',
  }

user { 'dphilbin':
    ensure     => 'present',
    comment    => 'D Philbin',
    managehome => true,
    password   => '!!',
    shell      => '/bin/bash',
    uid        => '3009',
  }

user { 'tflenderson':
    ensure     => 'present',
    comment    => 'T Flenderson',
    managehome => true,
    password   => '!!',
    shell      => '/bin/bash',
    uid        => '3010',
  }

user { 'kmalone':
    ensure     => 'present',
    comment    => 'K Malone',
    managehome => true,
    password   => '!!',
    groups     => 'accounting',
    shell      => '/bin/bash',
    uid        => '3011',
  }

user { 'plapin':
    ensure     => 'present',
    comment    => 'P Lapin',
    managehome => true,
    password   => '!!',
    groups     => 'sales',
    shell      => '/bin/bash',
    uid        => '3012',
  }

user { 'shudson':
    ensure     => 'present',
    comment    => 'S Hudson',
    managehome => true,
    password   => '!!',
    groups     => 'sales',
    shell      => '/bin/bash',
    uid        => '3013',
  }

user { 'mpalmer':
    ensure     => 'present',
    comment    => 'M Palmer',
    managehome => true,
    password   => '!!',
    shell      => '/bin/bash',
    uid        => '3014',
  }

user { 'cbratton':
    ensure     => 'present',
    comment    => 'C Bratton',
    managehome => true,
    password   => '!!',
    shell      => '/bin/bash',
    uid        => '3015',
  }
user { 'mformanek':
    ensure     => 'present',
    comment    => 'M Formanek',
    managehome => true,
    password   => '!!',
    shell      => '/bin/bash',
    uid        => '251',
  }
