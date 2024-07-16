.
├── Dockerfile
├── Gemfile
├── Gemfile.lock
├── Procfile.dev
├── README.md
├── Rakefile
├── WALKERDOCS
│   ├── GENERAL
│   │   └── general.md
│   ├── SETUP
│   │   └── setup.md
│   ├── gem
│   │   └── gem.md
│   ├── git
│   │   └── git.md
│   ├── ksemfgdocs
│   │   └── README.md
│   ├── npm
│   │   └── npm.md
│   ├── rails
│   │   └── rails.md
│   ├── ruby
│   │   └── ruby.md
│   └── tree.md
├── app
│   ├── assets
│   │   ├── builds
│   │   │   └── tailwind.css
│   │   ├── config
│   │   │   └── manifest.js
│   │   ├── images
│   │   └── stylesheets
│   │       ├── application.css
│   │       └── application.tailwind.css
│   ├── channels
│   │   └── application_cable
│   │       ├── channel.rb
│   │       └── connection.rb
│   ├── controllers
│   │   ├── admin
│   │   │   └── dashboard_controller.rb
│   │   ├── application_controller.rb
│   │   ├── concerns
│   │   ├── posts_controller.rb
│   │   └── products_controller.rb
│   ├── helpers
│   │   ├── admin
│   │   │   └── dashboard_helper.rb
│   │   ├── application_helper.rb
│   │   ├── posts_helper.rb
│   │   └── products_helper.rb
│   ├── javascript
│   │   ├── application.js
│   │   └── controllers
│   │       ├── application.js
│   │       ├── hello_controller.js
│   │       ├── index.js
│   │       └── product_upload_controller.js
│   ├── jobs
│   │   └── application_job.rb
│   ├── mailers
│   │   └── application_mailer.rb
│   ├── models
│   │   ├── admin.rb
│   │   ├── application_record.rb
│   │   ├── concerns
│   │   ├── post.rb
│   │   └── product.rb
│   └── views
│       ├── admin
│       │   └── dashboard
│       │       └── index.html.erb
│       ├── devise
│       │   ├── confirmations
│       │   │   └── new.html.erb
│       │   ├── mailer
│       │   │   ├── confirmation_instructions.html.erb
│       │   │   ├── email_changed.html.erb
│       │   │   ├── password_change.html.erb
│       │   │   ├── reset_password_instructions.html.erb
│       │   │   └── unlock_instructions.html.erb
│       │   ├── passwords
│       │   │   ├── edit.html.erb
│       │   │   └── new.html.erb
│       │   ├── registrations
│       │   │   ├── edit.html.erb
│       │   │   └── new.html.erb
│       │   ├── sessions
│       │   │   └── new.html.erb
│       │   ├── shared
│       │   │   ├── _error_messages.html.erb
│       │   │   └── _links.html.erb
│       │   └── unlocks
│       │       └── new.html.erb
│       ├── layouts
│       │   ├── application.html.erb
│       │   ├── mailer.html.erb
│       │   └── mailer.text.erb
│       ├── posts
│       │   ├── _form.html.erb
│       │   ├── _post.html.erb
│       │   ├── _post.json.jbuilder
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── index.json.jbuilder
│       │   ├── new.html.erb
│       │   ├── show.html.erb
│       │   └── show.json.jbuilder
│       └── products
│           ├── create.html.erb
│           ├── index.html.erb
│           └── new.html.erb
├── babel.config.js
├── bin
│   ├── bundle
│   ├── dev
│   ├── docker-entrypoint
│   ├── importmap
│   ├── rails
│   ├── rake
│   ├── setup
│   ├── webpack
│   └── webpack-dev-server
├── config
│   ├── application.rb
│   ├── boot.rb
│   ├── cable.yml
│   ├── credentials.yml.enc
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── importmap.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── content_security_policy.rb
│   │   ├── devise.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   └── permissions_policy.rb
│   ├── locales
│   │   ├── devise.en.yml
│   │   └── en.yml
│   ├── master.key
│   ├── puma.rb
│   ├── routes.rb
│   ├── storage.yml
│   ├── tailwind.config.js
│   ├── webpack
│   │   ├── development.js
│   │   ├── environment.js
│   │   ├── production.js
│   │   └── test.js
│   └── webpacker.yml
├── config.ru
├── db
│   ├── migrate
│   │   ├── 20240715024727_create_posts.rb
│   │   ├── 20240715033428_devise_create_admins.rb
│   │   └── 20240716134211_create_products.rb
│   ├── schema.rb
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── log
│   └── development.log
├── package.json
├── postcss.config.js
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── apple-touch-icon-precomposed.png
│   ├── apple-touch-icon.png
│   ├── favicon.ico
│   └── robots.txt
├── rails_mysql_stimulus_turbo
├── storage
├── test
│   ├── application_system_test_case.rb
│   ├── channels
│   │   └── application_cable
│   │       └── connection_test.rb
│   ├── controllers
│   │   ├── admin
│   │   │   └── dashboard_controller_test.rb
│   │   ├── posts_controller_test.rb
│   │   └── products_controller_test.rb
│   ├── fixtures
│   │   ├── admins.yml
│   │   ├── files
│   │   ├── posts.yml
│   │   └── products.yml
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   │   ├── admin_test.rb
│   │   ├── post_test.rb
│   │   └── product_test.rb
│   ├── system
│   │   └── posts_test.rb
│   └── test_helper.rb
├── vendor
│   └── javascript
└── yarn.lock

71 directories, 138 files
