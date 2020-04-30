class profile::ssh_server{
  package{ openssh-server:
    ensure => present,
  
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVar6xETMPymsRJti8kkqUk7AiM6YNuZwcPqMzTOl2mUyA/H6AC8kD1OxQJ2t02KZQAhhwfwTqbq9BJzQ4lq3SPBjOavyhF4ch/pcTBkr1GjXw8gyw+vX9yr00q+v8XBGAwtA0H30OVM6Rdd/uv/c9s+bFvlKfEbU05hqU4mP/67FeHGMZYzW/lez0d3H7i0NcPeFyY5aUum1aj2rLsWMf52Fnf/p59LL81XgcU+WaV0Ef8FJTg9IPPbYl6kpu1KYUw9LutER6WwiijDHMuUgF36hepj44BWIMJP7nJo1HKXbnBeAJUigiQcbBs1RkKu80NlIHKgLv32Jnv8zlWwMZ',
  }
}
