# 開発用Vagrant
Vagrant、chefで構築する開発環境

## 導入手順
下記ツールのインストールが必要
> - [VirtualBox](https://www.virtualbox.org) 4.3 以上
> - [Vagrant](https://www.vagrantup.com) 1.6 以上
> - [Berkshelf](http://berkshelf.com) 3.0 以上

### Vagrant plugin
下記プラグインのインストールが必要

    $ vagrant plugin install vagrant-vbguest
    $ vagrant plugin install vagrant-omnibus
    $ vagrant plugin install vagrant-serverspec
