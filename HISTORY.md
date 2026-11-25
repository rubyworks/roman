# RELEASE HISTORY


## Unreleased (0.3.1)

Changes:

* Fix negative numbers, which raised NoMethodError when converted to a
  string: `(-4).to_roman.to_s` is now `-IV`. (Bartosz Dziewoński, #1)


## 0.3.0 / 2026-04-02

Maintenance release. Modernized project tooling.

Changes:

* Replace custom Indexer system with standard gemspec.
* Replace Travis CI with GitHub Actions.
* Add Rakefile.
* Update URLs to HTTPS.
* Clean up obsolete files and .gitignore.


## 0.2.0 / 2013-03-10

This release fixes the conversion of lower-case letters.

Changes:

* Fixed conversion of lower-case letters.


## 0.1.0 / 2010-10-10

Initialize release.

Changes:

* All of them ;)
