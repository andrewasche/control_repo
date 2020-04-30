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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCkT/9N469ytKi8K8+uhdyQPeNrVtM/FG7RxOo/USBi1aXkfNcnRIPbmfFcjZ4cQsby2g7klNWtyChS/WHyLQ7I/NSxURdRf4rqoXUuQAZT+9wip7MeINZw7m7JtAqOj5S9ARycWUGESj0UAdXt+3cdvbJIabFbNhJXTe04ODsDKUvHbZrA28W7elQr9zw+A+M0Ey9Nfu5qZsjHdee6wAfUIBvSmtP6BQdXNhoggEfXaVkiijdc0Maau6oJ4EJgYApUmPpi4jN0LIZKuEpPk6iFjTw7Hu5ZjhJqA4E7DgAlzPT9LLUaeSFwxqV96KqGnbXtK2rNnqqwn/CI0I5f+U03',
  }
}
