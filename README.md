# Redmine Tags [![Build Status](https://travis-ci.org/ixti/redmine_tags.svg?branch=master)](https://travis-ci.org/ixti/redmine_tags)

Allows marking up different models in Redmine with tags.
Inspired by original `redmine_tags` of Eric Davis.


## Supported models

- Issues
- Wiki pages


## Requirements

- Redmine `>= 3.0.0`


## Installing

1. Clone this repository into `redmine/plugins/redmine_tags`

    ```
    cd redmine/plugins
    git clone https://github.com/ixti/redmine_tags.git
    ```

2. Install dependencies and migrate database:

    ```
    bundle install
    rake redmine:plugins:migrate NAME=redmine_tags RAILS_ENV=production
    ```

3. Restart your Redmine web server.


## Running tests

Make sure you have the latest database structure loaded to the test database:

```
rake db:structure:dump
rake db:drop db:create db:structure:load RAILS_ENV=test
```

For the minitest suite run:

```
rake redmine:plugins:test NAME=redmine_tags
```

For the rspec suite you need to have the
[redmine_testing_gems](https://github.com/ZitecCOM/redmine_testing_gems) plugin:

```
git clone https://github.com/ZitecCOM/redmine_testing_gems.git
bundle install
```

After you cloned the plugin, run the follwing command:

```
rake redmine:plugins:spec RAILS_ENV=test NAME=redmine_tags
```


## Removal

WARNING: This plugin shares the `tags` and `taggings` tables with other plugins
that use the `acts-as-taggable-on` gem. Do not run the below command if you have
another active plugin using them.

```
rake redmine:plugins:migrate NAME=redmine_tags VERSION=0 FORCE_REDMINE_TAGS_TABLES_REMOVAL=yes
```


## License

This plugin is licensed under the terms of GNU/GPL v3+.
See COPYING and LICENSE for details.
