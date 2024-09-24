ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure("2") do |config|

  # Serveur pour MariaDB
  config.vm.define "mariadb" do |mariadb|
    mariadb.vm.network "private_network", ip: "192.168.10.20"
    mariadb.vm.network "forwarded_port", guest: 3306, host: 3306 # Port par défaut de MariaDB
    mariadb.vm.provider "docker" do |mariadb|
      mariadb.build_dir = "."
      mariadb.has_ssh = true
      mariadb.privileged = true
      mariadb.create_args = ["-v", "/sys/fs/cgroup:/sys/fs/cgroup:ro"]
      mariadb.name = "mariadb"
    end
  end

  # Serveur pour WordPress Admin
  config.vm.define "wordpress_admin" do |wp_admin|
    wp_admin.vm.network "private_network", ip: "192.168.10.21"
    wp_admin.vm.network "forwarded_port", guest: 80, host: 8081 # Port pour accéder à WordPress Admin
    wp_admin.vm.provider "docker" do |wp_admin|
      wp_admin.build_dir = "."
      wp_admin.has_ssh = true
      wp_admin.privileged = true
      wp_admin.create_args = ["-v", "/sys/fs/cgroup:/sys/fs/cgroup:ro"]
      wp_admin.name = "wordpress_admin"
    end
  end

  # Serveur pour un WordPress supplémentaire
  config.vm.define "wordpress_extra" do |wp_extra|
    wp_extra.vm.network "private_network", ip: "192.168.10.22"
    wp_extra.vm.network "forwarded_port", guest: 80, host: 8082 # Port pour accéder au deuxième WordPress
    wp_extra.vm.provider "docker" do |wp_extra|
      wp_extra.build_dir = "."
      wp_extra.has_ssh = true
      wp_extra.privileged = true
      wp_extra.create_args = ["-v", "/sys/fs/cgroup:/sys/fs/cgroup:ro"]
      wp_extra.name = "wordpress_extra"
    end
  end

  # Serveur pour le load balancer
  config.vm.define "load_balancer" do |lb|
    lb.vm.network "private_network", ip: "192.168.10.23"
    lb.vm.provider "docker" do |lb|
      lb.build_dir = "."
      lb.has_ssh = true
      lb.privileged = true
      lb.create_args = ["-v", "/sys/fs/cgroup:/sys/fs/cgroup:ro"]
      lb.name = "load_balancer"
    end
  end

end

