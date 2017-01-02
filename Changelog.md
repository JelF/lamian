# Lamian version changes (since 0.1.0)

Update this on a pull request, under Lamian::VERSION
(also known as next version). If this constant would be changed without release,
i'll update it here too

## 1.0.0alpha

Add your changes here


## 0.3.3

* 8136689 fixed crashes when dump used outside lamian context


## 0.3.2

* e57e6cec Changed rails dependency from ~> 4.2 to >= 4.2


## 0.3.1

* 34ca83b5 Fixed formatting

Stabilized formatting api, which removes control sequences from loggers data.
E.g. "[23mNice, lol[0m\n" becomes "Nice, lol\n"


## 0.3.0

* d24f895b API update

Updated API, so lamian is now forced to be used with block.
It also simplified usage outside a middleware


## 0.2.0
* 3166517e Added integrtation with rails

Injected middleware before ExceptionNotification, so ExceptionNotification
can use current log without any configuration.
Also added some views


## 0.1.0
* 62eb8685 Made test version to check it's integration with rails application