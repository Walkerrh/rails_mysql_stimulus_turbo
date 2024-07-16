

# Linux distribution

- **WSL (Windows Subsystem for Linux)**: A compatibility layer for running Linux binary executables natively on Windows. It allows users to run a Linux distribution directly on Windows without the need for a virtual machine or dual-boot setup.

# Package Managers

## Linux-Specific Package Managers

- **APT (Advanced Package Tool)**: Used by Debian-based distributions like Ubuntu for managing software packages.

## Language-Specific Package Managers

- **npm (Node Package Manager)**: For managing JavaScript packages.
- **gem**: For managing Ruby packages.
- **Yarn**: An alternative package manager for JavaScript. Known for its speed, reliability, and deterministic dependency resolution.
- **rbenv**: A version manager for Ruby. It allows you to easily switch between multiple versions of Ruby.

# Tech Stack

## 4. Rails with Hotwire (Stimulus + Turbo)
- **Backend Framework**: Ruby on Rails
- **Frontend**: Hotwire (Stimulus for JavaScript, Turbo for SPA-like behavior)
- **Database**: MySQL
- **CSS Framework**: Tailwind CSS
- **JavaScript**: Stimulus























### Rails Stack Structure Overview

#### 1. Rails (Ruby on Rails)
- **Model (M)**: Represents data and business logic (e.g., `app/models/post.rb`).
- **View (V)**: User interface, rendered using HTML, CSS, and embedded Ruby (e.g., `app/views/posts/index.html.erb`).
- **Controller (C)**: Handles requests, interacts with models, and renders views (e.g., `app/controllers/posts_controller.rb`).

#### 2. Turbo
- **Turbo Drive**: Enhances navigation by keeping page state without full reloads.
- **Turbo Frames**: Allows partial updates of the page.
- **Turbo Streams**: Facilitates real-time updates from server to client.

#### 3. MySQL
- **Database Configuration**: Managed in `config/database.yml`.
- **Database Migrations**: Used to create and modify database tables.

#### 4. Tailwind CSS
- **Utility-First CSS**: Provides utility classes for styling.
- **Configuration**: Managed in `tailwind.config.js`.

#### 5. Stimulus
- **Controller Structure**: Adds dynamic behavior to HTML elements.
- **Configuration**: Managed in `app/javascript/controllers`.






































# Setting Up a Local Environment for a Rails App

# Update package APT
```bash
sudo apt-get update
```

# Install Node.js
```bash
sudo apt install nodejs
```

# Install npm
```bash
sudo apt install npm
```

# Install Yarn
```bash
npm install --global yarn
```

# list and install dependencies
```bash
sudo apt-get install -y build-essential libssl-dev libreadline-dev zlib1g-dev
```

# Clone rbenv repository
```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

# Add rbenv to PATH and initialize
```bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
```

# Clone ruby-build as an rbenv plugin
```bash
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

# Add ruby-build to PATH
```bash
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

# 2. Install a specific version of Ruby:

# Navigate to your project directory
```bash
cd /path/to/your/project
```

# Install Ruby version (e.g., 3.1.2)
```bash
rbenv install 3.1.2
```

# Set the local Ruby version for the project
```bash
rbenv local 3.1.2
```

# OR Set the installed version as the default
```bash
rbenv global 3.1.2
```

# **Install Rails** 
```bash
gem install rails
```

# Rehash rbenv to recognize the installed Ruby
```bash
rbenv rehash
```
# 3. Verify the installation:

# Check the Ruby version
```bash
ruby -v
```

# Check if rbenv recognizes the installed version
```bash
rbenv versions
```

# Install MySQL (example for Ubuntu)
```bash
sudo apt-get install mysql-server
```

# Start the MySQL service
```bash
sudo service mysql start
```

# Create a new Rails application with MySQL
```bash
rails new myapp -d mysql
```

# Update the config/database.yml file
```bash
code config/database.yml
```

# Add the Hotwire gem to the 'Gemfile'
```gemfile
gem 'hotwire-rails'
```

# Add the Hotwire gem to the 'Gemfile'
```gemfile
gem 'hotwire-rails'
```

# Install Bundler
```bash
gem install bundler
```

# OR Install Hotwire: 
```bash
rails hotwire:install
```
rails webpacker:install
# OR Add Tailwind CSS to the 'Gemfile'
```bash
gem 'tailwindcss-rails'
```

# Install Tailwind
```bash
rails tailwindcss:install
```

# Set Up User Model and Authentication
```bash
gem 'devise'
```

#
```bash
bundle install
rails generate devise:install
```

# Navigate to the application directory
```bash
cd myapp
```

# Update config/database.yml with MySQL credentials

# Create the databases
```bash
rails db:create
```

# 
```bash
bundle install
```

# Start the Rails server:
```bash
rails server
```

# Open your web browser and visit:
```bash
http://localhost:3000
```








 











Set Up a Basic Scaffold: 
rails generate scaffold Post title:string content:text
rails db:migrate
Start the Rails Server: rails server
Open your browser and go to http://localhost:3000/posts



gem 'devise'
bundle install
rails generate devise:install
rails generate devise Admin
rails db:migrate
rails generate controller Admin::Dashboard index

rails generate devise:views










git init
git add .
git commit -m "Initial Commit"
git remote add origin https://github.com/Walkerrh/rails_mysql_stimulus_turbo.git
git branch -M maincd
git push -u origin main