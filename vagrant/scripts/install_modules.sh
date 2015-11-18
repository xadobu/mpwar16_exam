dir='/vagrant/modules'
url='https://github.com/xadobu/mpwar16_exam_mymodule.git'
modulename='mymodule'

puppet module install example42/yum --modulepath $dir --version 2.1.25;
puppet module install example42/php  --modulepath $dir --version 2.0.25;
puppet module install puppetlabs-apache --modulepath $dir --version 1.6.0;
puppet module install puppetlabs/mysql --modulepath $dir --version 3.6.1;
puppet module install crayfishx/firewalld --modulepath $dir --version 1.2.3;
puppet module install example42-timezone --modulepath $dir --version 2.0.13;
puppet module install example42/ntp --modulepath $dir --version 2.0.15;
puppet module install puppetlabs-mongodb --modulepath $dir --version 0.11.0;

yum install -y git
git clone $url $dir/$modulename

exit 0;