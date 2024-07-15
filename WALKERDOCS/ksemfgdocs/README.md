# Local Setup

* run `npm install`
* run `bundle install`
* create `.env` file with `DATABASE_USERNAME` and `DATABASE_PASSWORD` variables defined. (eg. `DATABASE_USERNAME=root`)
* run `bin/dev`
* open `127.0.0.1:3000` in your browser
* bundle install
* bin/rails db:migrate

```bash
npm install postcss-import --save-dev
```

```bash
unix_wrh@LAPTOP-R8L6DPA5:~/KSE_2/ksemfg.com$ mysql --help | grep -A 1 "Default options"
```
Default options are read from the following files in the given order:
/etc/my.cnf /etc/mysql/my.cnf ~/.my.cnf 

```bash
unix_wrh@LAPTOP-R8L6DPA5:~/KSE_2/ksemfg.com$ cat /etc/mysql/my.cnf | grep socket
```
socket = /var/run/mysqld/mysqld.sock

## had to change the socket:
database.yml
```yml
# socket: /tmp/mysql.sock
socket: /var/run/mysqld/mysqld.sock
```

```bash
unix_wrh@LAPTOP-R8L6DPA5:~/ksemfg.com$ which ruby
```
/home/unix_wrh/.rbenv/shims/ruby

```bash
unix_wrh@LAPTOP-R8L6DPA5:~/ksemfg.com$ ruby -v
```
ruby 3.3.0 (2023-12-25 revision 5124f9ac75) [x86_64-linux]

```bash
unix_wrh@LAPTOP-R8L6DPA5:~/ksemfg.com$ rails generate scaffold product name:string oem:integer description:string price:float price_show:bool in_stock:string

```bash
unix_wrh@LAPTOP-R8L6DPA5:~/ksemfg.com$ sudo mysqladmin variables | grep socket
```
mysqlx_socket
/var/run/mysqld/mysqlx.sock
performance_schema_max_socket_classes
10
performance_schema_max_socket_instances 
-1
socket
/var/run/mysqld/mysqld.sock

```bash
unix_wrh@LAPTOP-R8L6DPA5:~/ksemfg.com$ rails -v
```
/home/unix_wrh/.rbenv/versions/3.3.0/bin/ruby: warning: shebang line ending with \r may cause problems
/home/unix_wrh/.rbenv/versions/3.3.0/bin/ruby: warning: shebang line ending with \r may cause problems
Rails 7.1.3.3




```bash
* unix_wrh@LAPTOP-R8L6DPA5:~/ksemfg.com$ which ruby

/home/unix_wrh/.rbenv/shims/ruby
```

* unix_wrh@LAPTOP-R8L6DPA5:~/ksemfg.com$ ruby -v
```bash
ruby 3.3.0 (2023-12-25 revision 5124f9ac75) [x86_64-linux]
```
```bash
chmod +x bin/*
```

https://github.com/voormedia/rails-erd

rails generate scaffold product name:string oem:integer description:string price:float price_show:boolean in_stock:string


## rails generate models
```bash
DISABLE_SPRING=1 rails generate model Product name:string:uniq meta_keywords:string meta_description:text OEM_num:integer description:text price:float price_show:boolean stock:string active:boolean on_sale:boolean sale_value:float defacto_image:string
DISABLE_SPRING=1 rails generate model CategoryToProduct product:references category:references popular_product:boolean
DISABLE_SPRING=1 rails generate model Category name:string description:text type:integer defacto_image:string
DISABLE_SPRING=1 rails generate model Quote first_name:string last_name:string phone_number:string email:string company:string total_price:float
DISABLE_SPRING=1 rails generate model QuoteLineItem quantity:integer product:references quote:references
DISABLE_SPRING=1 rails generate model Content name:string meta_keywords:string meta_description:text file:string type:integer product:references
DISABLE_SPRING=1 rails generate model Admin username:string:uniq password:string
DISABLE_SPRING=1 rails generate model Product name:string:uniq meta_keywords:string meta_description:text OEM_num:integer description:text price:float price_show:boolean stock:string active:boolean on_sale:boolean sale_value:float defacto_image:string
```




## Summary of Associations
| Relationship | Description | Rails Association|
| --- | --- | --- |
| One-to-Many |	One record in a table has many related records in another table | has_many and belongs_to |
| Many-to-Many | Records in one table are related to multiple records in another table | has_and_belongs_to_many or has_many :through |


### Model vs. Scaffold in Rails

- **Model Generator**:
  - Generates only the model, migration, and test files.
  - Use when you want to manually create controllers and views.

- **Scaffold Generator**:
  - Generates the model, migration, controller, views, routes, and test files.
  - Provides a complete CRUD interface.
  - Use for quick setup of a full CRUD feature.

#### Example Commands

**Using Model:**








| Rails Datatype | Description|
|---|---|
| `:string` | Variable-length string, default is 255 characters |
| `:text` | Longer variable-length string |
| `:integer` | Integer number |
| `:bigint` | Large integer number |
| `:float` | Floating point number |
| `:decimal` | High precision floating point number |
| `:datetime` | Date and time |
| `:timestamp` | Date and time |
| `:time` | Time of day |
| `:date` | Date |
| `:binary` | Binary data |
| `:boolean` | Boolean value (`true` or `false`) |
| `:references` | Special type for foreign keys, adds an index |
| `:json` | Stores JSON data (PostgreSQL only) |
| `:jsonb` | Stores binary JSON data (PostgreSQL only) |
| `:hstore` | Stores key-value pairs (PostgreSQL only) |
| `:uuid` | Universally unique identifier |
| `:array` | Stores array of values (PostgreSQL only) |
| `:enum` | Enumeration type, restricts values to predefined set |



```bash
rails routes
```








## Summary of Built-in Attributes and Methods

| Attribute/Method   | Description                                               |
|--------------------|-----------------------------------------------------------|
| `form_with`        | Helper for creating forms tied to a model or URL.         |
| `model:`           | Specifies the model object the form is for.               |
| `local:`           | Specifies whether the form should be submitted locally.   |
| `@photo.errors`    | Returns an ActiveModel::Errors object for the model.      |
| `pluralize`        | Pluralizes a word based on the given count.               |
| `form.label`       | Creates a label tag for a form input.                     |
| `form.text_field`  | Creates a text input field for a form.                    |
| `form.text_area`   | Creates a text area field for a form.                     |
| `form.submit`      | Creates a submit button for the form.                     |
| `_path`            | URL/path helpers provided by Rails.                       |
| `respond_to`       | Responds to different formats (e.g., HTML, JSON).         |
| `before_action`    | Specifies a method to run before certain controller actions.|
| `render`           | Renders a template.                                       |
| `redirect_to`      | Redirects to a different URL or path.                     |





| Action   | Description                                                                                       | Example Code                                                    |
|----------|---------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| `index`  | Displays a list of all records.                                                                   | ```ruby def index \n  @items = Item.all \nend```                |
| `show`   | Displays a single record identified by an ID.                                                     | ```ruby def show \n  @item = Item.find(params[:id]) \nend```    |
| `new`    | Displays a form for creating a new record.                                                        | ```ruby def new \n  @item = Item.new \nend```                   |
| `create` | Saves a new record to the database and handles the form submission from `new`.                    | ```ruby def create \n  @item = Item.new(item_params) \n  if @item.save \n    redirect_to @item \n  else \n    render :new \n  end \nend``` |
| `edit`   | Displays a form for editing an existing record.                                                   | ```ruby def edit \n  @item = Item.find(params[:id]) \nend```    |
| `update` | Modifies an existing record in the database and handles the form submission from `edit`.          | ```ruby def update \n  @item = Item.find(params[:id]) \n  if @item.update(item_params) \n    redirect_to @item \n  else \n    render :edit \n  end \nend``` |
| `destroy`| Deletes an existing record from the database.                                                     | ```ruby def destroy \n  @item = Item.find(params[:id]) \n  @item.destroy \n  redirect_to items_path \nend``` |





```bash
tree . -I "node_modules|public|tmp" > ./tree.md
```

### create a new branch
```bash
cd /path/to/your/project
git branch
git branch walker
git checkout walker
git branch
git push origin walker
```

### update new branch with changes in master
```bash
git checkout master
git pull
# Step 1: Checkout your branch
git checkout your-branch-name
# Step 2: Fetch the latest changes from the remote repository
git fetch origin master
# Step 3: Merge the master branch into your branch
git merge origin/master
```



```bash
# https://support.atlassian.com/bitbucket-cloud/docs/configure-ssh-and-two-step-verification/
# Generate a DSA key pair
ssh-keygen -t rsa -b 4096 -C "walker@osa.io"
```
```bash
Your identification has been saved in /home/unix_wrh/.ssh/id_rsa
Your public key has been saved in /home/unix_wrh/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:nk/19B77xPjIZfduhd6AJCFGw9yxu/n2ljYistU/ASA walker@osa.io
The key's randomart image is:
+---[RSA 4096]----+
|       +o...     |
|        E.+.     |
|       . o.o     |
|          ..o    |
|        S .o.o.. |
|       . . =.o++.|
|        o = ..o*O|
|        .+..ooBBB|
|        .o.o.==*B|
+----[SHA256]-----+
```
```bash
# View your public key
cat /home/unix_wrh/.ssh/id_dsa.pub
# Verify the SSH Key is Loaded by the SSH Agent
ssh-add -l
# If your key is not listed, add it again:
ssh-add ~/.ssh/id_dsa
# Check SSH Configuration
nano ~/.ssh/config
# Add the following configuration for Bitbucket:
Host bitbucket.org
  HostName bitbucket.org
  User git
  IdentityFile ~/.ssh/id_dsa
# Test SSH Connection to Bitbucket:
ssh -T git@bitbucket.org
# Verbose SSH Connection Test
ssh -vT git@bitbucket.org
# Ensure File Permissions:
chmod 600 ~/.ssh/id_dsa
chmod 600 ~/.ssh/id_dsa.pub
# Re-add SSH Key to the Agent
ssh-add ~/.ssh/id_dsa
# Check for Multiple SSH Keys
ssh -i ~/.ssh/id_dsa -T git@bitbucket.org
# Start the SSH agent in the background
eval "$(ssh-agent -s)"
# Add your private key to the SSH agent
ssh-add ~/.ssh/id_dsa
# Change your Git remote URL from HTTPS to SSH:
git remote set-url origin git@bitbucket.org:username/repository.git
# Use the Git Credential Cache: (linux)
git config --global credential.helper cache
# Change credential cashe for 1 hour in seconds
git config --global credential.helper 'cache --timeout=3600'
```



```bash
mysql -u root
SHOW DATABASES;
USE your_database_name;
SHOW TABLES;
DESCRIBE table_name;
SELECT * FROM table_name;
SELECT * FROM table_name LIMIT 10;
```





mysql> show tables;
+-------------------------------+
| Tables_in_kse_mfg_development |
+-------------------------------+
| admins                        |
| ar_internal_metadata          |
| categories                    |
| contents                      |
| products                      |
| products_link_categories      |
| quote_line_items              |
| quotes                        |
| schema_migrations             |
| users                         |
+-------------------------------+


mysql> describe admins;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | bigint       | NO   | PRI | NULL    | auto_increment |
| username   | varchar(255) | YES  | UNI | NULL    |                |
| password   | varchar(255) | YES  |     | NULL    |                |
| created_at | datetime(6)  | NO   |     | NULL    |                |
| updated_at | datetime(6)  | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+


mysql> describe ar_internal_metadata;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| key        | varchar(255) | NO   | PRI | NULL    |       |
| value      | varchar(255) | YES  |     | NULL    |       |
| created_at | datetime(6)  | NO   |     | NULL    |       |
| updated_at | datetime(6)  | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

mysql> describe categories;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | bigint       | NO   | PRI | NULL    | auto_increment |
| name          | varchar(255) | YES  |     | NULL    |                |
| description   | text         | YES  |     | NULL    |                |
| category_type | int          | YES  |     | NULL    |                |
| defacto_image | varchar(255) | YES  |     | NULL    |                |
| created_at    | datetime(6)  | NO   |     | NULL    |                |
| updated_at    | datetime(6)  | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+

mysql> describe contents;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id               | bigint       | NO   | PRI | NULL    | auto_increment |
| name             | varchar(255) | YES  |     | NULL    |                |
| meta_keywords    | varchar(255) | YES  |     | NULL    |                |
| meta_description | text         | YES  |     | NULL    |                |
| file             | varchar(255) | YES  |     | NULL    |                |
| content_type     | int          | YES  |     | NULL    |                |
| product_id       | bigint       | NO   | MUL | NULL    |                |
| created_at       | datetime(6)  | NO   |     | NULL    |                |
| updated_at       | datetime(6)  | NO   |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+

mysql> describe products;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| id               | bigint       | NO   | PRI | NULL    | auto_increment |
| name             | varchar(255) | YES  | UNI | NULL    |                |
| meta_keywords    | varchar(255) | YES  |     | NULL    |                |
| meta_description | text         | YES  |     | NULL    |                |
| OEM_num          | int          | YES  |     | NULL    |                |
| description      | text         | YES  |     | NULL    |                |
| price            | float        | YES  |     | NULL    |                |
| price_show       | tinyint(1)   | YES  |     | NULL    |                |
| stock            | varchar(255) | YES  |     | NULL    |                |
| active           | tinyint(1)   | YES  |     | NULL    |                |
| on_sale          | tinyint(1)   | YES  |     | NULL    |                |
| sale_value       | float        | YES  |     | NULL    |                |
| defacto_image    | varchar(255) | YES  |     | NULL    |                |
| created_at       | datetime(6)  | NO   |     | NULL    |                |
| updated_at       | datetime(6)  | NO   |     | NULL    |                |
| popular          | tinyint(1)   | NO   |     | 0       |                |
+------------------+--------------+------+-----+---------+----------------+

mysql> describe products_link_categories;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | bigint      | NO   | PRI | NULL    | auto_increment |
| product_id  | bigint      | NO   | MUL | NULL    |                |
| category_id | bigint      | NO   | MUL | NULL    |                |
| created_at  | datetime(6) | NO   |     | NULL    |                |
| updated_at  | datetime(6) | NO   |     | NULL    |                |
| quantity    | int         | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+

mysql> describe quote_line_items;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id         | bigint      | NO   | PRI | NULL    | auto_increment |
| quantity   | int         | YES  |     | NULL    |                |
| product_id | bigint      | NO   | MUL | NULL    |                |
| quote_id   | bigint      | NO   | MUL | NULL    |                |
| created_at | datetime(6) | NO   |     | NULL    |                |
| updated_at | datetime(6) | NO   |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

mysql> describe quotes;
+--------------+--------------+------+-----+---------+----------------+
| Field        | Type         | Null | Key | Default | Extra          |
+--------------+--------------+------+-----+---------+----------------+
| id           | bigint       | NO   | PRI | NULL    | auto_increment |
| first_name   | varchar(255) | YES  |     | NULL    |                |
| last_name    | varchar(255) | YES  |     | NULL    |                |
| phone_number | varchar(255) | YES  |     | NULL    |                |
| email        | varchar(255) | YES  |     | NULL    |                |
| company      | varchar(255) | YES  |     | NULL    |                |
| total_price  | float        | YES  |     | NULL    |                |
| created_at   | datetime(6)  | NO   |     | NULL    |                |
| updated_at   | datetime(6)  | NO   |     | NULL    |                |
+--------------+--------------+------+-----+---------+----------------+

mysql> describe schema_migrations;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| version | varchar(255) | NO   | PRI | NULL    |       |
+---------+--------------+------+-----+---------+-------+

mysql> describe users;
+------------------------+--------------+------+-----+---------+----------------+
| Field                  | Type         | Null | Key | Default | Extra          |
+------------------------+--------------+------+-----+---------+----------------+
| id                     | bigint       | NO   | PRI | NULL    | auto_increment |
| email                  | varchar(255) | NO   | UNI |         |                |
| encrypted_password     | varchar(255) | NO   |     |         |                |
| reset_password_token   | varchar(255) | YES  | UNI | NULL    |                |
| reset_password_sent_at | datetime(6)  | YES  |     | NULL    |                |
| remember_created_at    | datetime(6)  | YES  |     | NULL    |                |
| created_at             | datetime(6)  | NO   |     | NULL    |                |
| updated_at             | datetime(6)  | NO   |     | NULL    |                |
+------------------------+--------------+------+-----+---------+----------------+












<a href="//imgur.com/a/1QImMdy">kse_part_type</a>
https://imgur.com/a/1QImMdy

INSERT INTO categories (name, description, type, defacto_image, created_at, updated_at) VALUES ('System', 'System Description', 0, 'https://imgur.com/a/kse-system-bFvL6ox', NOW(), NOW());
INSERT INTO categories (name, description, type, defacto_image, created_at, updated_at) VALUES ('Part Type', 'Part Type Description', 0, 'https://imgur.com/a/1QImMdy', NOW(), NOW());
mysql> select * from categories;
+----+-----------+-----------------------+---------------+----------------------------------------+----------------------------+----------------------------+
| id | name      | description           | category_type | defacto_image                          | created_at                 | updated_at                 |
+----+-----------+-----------------------+---------------+----------------------------------------+----------------------------+----------------------------+
|  1 | Part Type | Part Type Description |             0 | https://imgur.com/a/1QImMdy            | 2024-06-26 16:41:26.000000 | 2024-06-26 16:41:26.000000 |
|  2 | System    | System Description    |             0 | https://imgur.com/a/kse-system-bFvL6ox | 2024-06-26 16:42:14.000000 | 2024-06-26 16:42:14.000000 |
+----+-----------+-----------------------+---------------+----------------------------------------+----------------------------+----------------------------+
2 rows in set (0.01 sec)

mysql> select * from quotes;
+----+------------+------------+--------------+-------------------------+---------+-------------+----------------------------+----------------------------+
| id | first_name | last_name  | phone_number | email                   | company | total_price | created_at                 | updated_at                 |
+----+------------+------------+--------------+-------------------------+---------+-------------+----------------------------+----------------------------+
| 1 | walker | hutchinson | 9415248853 | walkerhutch14@gmail.com | osa | 1000 | 2024-06-26 01:41:55.343935 | 2024-06-26 01:41:55.343935 |
| 2 | xvbx | aaa | 4444444444 | asdfa@gmail.com | asdf | 333 | 2024-06-26 01:44:59.337885 | 2024-06-26 01:44:59.337885 |
| 3 | asdfadf | asdasdd | 888888888 | asdfa@gmail.com | osa | 999999 | 2024-06-26 01:53:34.449030 | 2024-06-26 01:53:34.449030 |
+----+------------+------------+--------------+-------------------------+---------+-------------+----------------------------+----------------------------+

<li>A/C 250 </li>
<li>ACCUGLIDE</li>
<li>ALVEY</li>
<li>HONEYWELL INTELLIGRATED</li>
<li>FKI LOGISTEX </li>
<li>BUSCHMAN</li>
<li>UNISORT IV</li>
<li>UNISORT V</li>
<li>UNSORT X</li>
<li>UNISORT XV </li>
<li>SOUTHEASTERN CONVEYOR </li>
<li>MATHEWS CONVEYOR</li>
<li>TRANSNORM</li>
<li>HK SYSTEMS</li>
<li>INTELLIGRATED</li>
<li>V-BELT CONVEYOR</li>
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('A/C 250', 'AC,250', 'A/C 250 product description', 1001, 'A/C 250 product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/OM3sbV3', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('ACCUGLIDE', 'accuglide', 'Accuglide product description', 1002, 'Accuglide product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/6LNqOuf', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('ALVEY', 'alvey', 'Alvey product description', 1003, 'Alvey product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/DMLIwKG', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('HONEYWELL INTELLIGRATED', 'honeywell,intelligrated', 'Honeywell Intelligrated product description', 1004, 'Honeywell Intelligrated product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/r4Rr5D9', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('FKI LOGISTEX', 'fki,logistex', 'FKI Logistex product description', 1005, 'FKI Logistex product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/qzw7GTr', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('BUSCHMAN', 'buschman', 'Buschman product description', 1006, 'Buschman product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/sEFmoCJ', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('UNISORT IV', 'unisort,iv', 'Unisort IV product description', 1007, 'Unisort IV product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/jytjFRy', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('UNISORT V', 'unisort,v', 'Unisort V product description', 1008, 'Unisort V product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/glvJzCw', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('UNSORT X', 'unsort,x', 'Unsort X product description', 1009, 'Unsort X product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/EfCz3GZ', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('UNISORT XV', 'unisort,xv', 'Unisort XV product description', 1010, 'Unisort XV product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/x9cztI0', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('SOUTHEASTERN CONVEYOR', 'southeastern,conveyor', 'Southeastern Conveyor product description', 1011, 'Southeastern Conveyor product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/1w8CR3g', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('MATHEWS CONVEYOR', 'mathews,conveyor', 'Mathews Conveyor product description', 1012, 'Mathews Conveyor product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/tdMNJkQ', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('TRANSNORM', 'transnorm', 'Transnorm product description', 1013, 'Transnorm product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/1ojyuAJ', NOW(), NOW());
INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('HK SYSTEMS', 'hk,systems', 'HK Systems product description', 1014, 'HK Systems product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/58vKuhN', NOW(), NOW());


INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('INTELLIGRATED', 'intelligrated', 'Intelligrated product description', 1015, 'Intelligrated product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/Intelligrated', NOW(), NOW());

INSERT INTO products (name, meta_keywords, meta_description, OEM_num, description, price, price_show, stock, active, on_sale, sale_value, defacto_image, created_at, updated_at) VALUES ('V-BELT CONVEYOR', 'v-belt,conveyor', 'V-Belt Conveyor product description', 1016, 'V-Belt Conveyor product detailed description.', 0.00, 1, 'In Stock', 1, 0, 0.00, 'https://imgur.com/a/VBeltConveyor', NOW(), NOW());


UPDATE products SET price = 10.00 WHERE id = 1;
UPDATE products SET price = 20.00 WHERE id = 2;
UPDATE products SET price = 30.00 WHERE id = 3;
UPDATE products SET price = 40.00 WHERE id = 4;
UPDATE products SET price = 50.00 WHERE id = 5;
UPDATE products SET price = 60.00 WHERE id = 6;
UPDATE products SET price = 70.00 WHERE id = 7;
UPDATE products SET price = 80.00 WHERE id = 8;
UPDATE products SET price = 90.00 WHERE id = 9;
UPDATE products SET price = 100.00 WHERE id = 10;
UPDATE products SET price = 110.00 WHERE id = 11;
UPDATE products SET price = 120.00 WHERE id = 12;
UPDATE products SET price = 130.00 WHERE id = 13;
UPDATE products SET price = 140.00 WHERE id = 14;


mysql> select * from products;
+----+-------------------------+-------------------------+---------------------------------------------+---------+-------------------------------------------------------+-------+------------+----------+--------+---------+------------+-----------------------------+----------------------------+----------------------------+
| id | name                    | meta_keywords           | meta_description                            | OEM_num | description                                           | price | price_show | stock    | active | on_sale | sale_value | defacto_image               | created_at                 | updated_at                 |
+----+-------------------------+-------------------------+---------------------------------------------+---------+-------------------------------------------------------+-------+------------+----------+--------+---------+------------+-----------------------------+----------------------------+----------------------------+
|  1 | A/C 250                 | AC,250                  | A/C 250 product description                 |    1001 | A/C 250 product detailed description.                 |    10 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/OM3sbV3 | 2024-06-27 10:12:02.000000 | 2024-06-27 10:12:02.000000 |
|  2 | ACCUGLIDE               | accuglide               | Accuglide product description               |    1002 | Accuglide product detailed description.               |    20 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/6LNqOuf | 2024-06-27 10:12:27.000000 | 2024-06-27 10:12:27.000000 |
|  3 | ALVEY                   | alvey                   | Alvey product description                   |    1003 | Alvey product detailed description.                   |    30 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/DMLIwKG | 2024-06-27 10:12:37.000000 | 2024-06-27 10:12:37.000000 |
|  4 | HONEYWELL INTELLIGRATED | honeywell,intelligrated | Honeywell Intelligrated product description |    1004 | Honeywell Intelligrated product detailed description. |    40 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/r4Rr5D9 | 2024-06-27 10:12:42.000000 | 2024-06-27 10:12:42.000000 |
|  5 | FKI LOGISTEX            | fki,logistex            | FKI Logistex product description            |    1005 | FKI Logistex product detailed description.            |    50 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/qzw7GTr | 2024-06-27 10:12:45.000000 | 2024-06-27 10:12:45.000000 |
|  6 | BUSCHMAN                | buschman                | Buschman product description                |    1006 | Buschman product detailed description.                |    60 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/sEFmoCJ | 2024-06-27 10:12:49.000000 | 2024-06-27 10:12:49.000000 |
|  7 | UNISORT IV              | unisort,iv              | Unisort IV product description              |    1007 | Unisort IV product detailed description.              |    70 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/jytjFRy | 2024-06-27 10:12:52.000000 | 2024-06-27 10:12:52.000000 |
|  8 | UNISORT V               | unisort,v               | Unisort V product description               |    1008 | Unisort V product detailed description.               |    80 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/glvJzCw | 2024-06-27 10:12:55.000000 | 2024-06-27 10:12:55.000000 |
|  9 | UNSORT X                | unsort,x                | Unsort X product description                |    1009 | Unsort X product detailed description.                |    90 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/EfCz3GZ | 2024-06-27 10:12:58.000000 | 2024-06-27 10:12:58.000000 |
| 10 | UNISORT XV              | unisort,xv              | Unisort XV product description              |    1010 | Unisort XV product detailed description.              |   100 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/x9cztI0 | 2024-06-27 10:13:19.000000 | 2024-06-27 10:13:19.000000 |
| 11 | SOUTHEASTERN CONVEYOR   | southeastern,conveyor   | Southeastern Conveyor product description   |    1011 | Southeastern Conveyor product detailed description.   |   110 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/1w8CR3g | 2024-06-27 10:13:24.000000 | 2024-06-27 10:13:24.000000 |
| 12 | MATHEWS CONVEYOR        | mathews,conveyor        | Mathews Conveyor product description        |    1012 | Mathews Conveyor product detailed description.        |   120 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/tdMNJkQ | 2024-06-27 10:13:28.000000 | 2024-06-27 10:13:28.000000 |
| 13 | TRANSNORM               | transnorm               | Transnorm product description               |    1013 | Transnorm product detailed description.               |   130 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/1ojyuAJ | 2024-06-27 10:13:31.000000 | 2024-06-27 10:13:31.000000 |
| 14 | HK SYSTEMS              | hk,systems              | HK Systems product description              |    1014 | HK Systems product detailed description.              |   140 |          1 | In Stock |      1 |       0 |          0 | https://imgur.com/a/58vKuhN | 2024-06-27 10:13:34.000000 | 2024-06-27 10:13:34.000000 |
+----+-------------------------+-------------------------+---------------------------------------------+---------+-------------------------------------------------------+-------+------------+----------+--------+---------+------------+-----------------------------+----------------------------+----------------------------+



<span class="child-menu__title">By Part Type</span>
<ul>
    <li><a href="#">Bearings</a></li>
    <li><a href="#">Belting</a></li>
    <li><a href="#">Chain</a></li>
    <li><a href="#">Combiner</a></li>
    <li><a href="#">Conveyor Sorter</a></li>
    <li><a href="#">Encoder</a></li>
    <li><a href="#">Miscellaneous</a></li>
    <li><a href="#">Motor-reducer</a></li>
    <li><a href="#">O-rings</a></li>
    <li><a href="#">Pin Guide</a></li>
    <li><a href="#">Pulleys</a></li>
    <li><a href="#">Rollers</a></li>
    <li><a href="#">Sensors</a></li>
    <li><a href="#">Sorter Components</a></li>
    <li><a href="#">Sorter Tubes</a></li>
    <li><a href="#">Springs</a></li>
    <li><a href="#">Sprockets</a></li>
    <li><a href="#">Valves, cylinders, filter, regulators</a></li>
</ul>



<span class="child-menu__title">By System</span>
<ul>
    <li><a href="#">A/c 250</a></li>
    <li><a href="#">Accu - Glide</a></li>
    <li><a href="#">Alvey</a></li>
    <li><a href="#">Alvey Palletizer</a></li>
    <li><a href="#">HK Systems</a></li>
    <li><a href="#">National</a></li>
    <li><a href="#">Transnorm</a></li>
    <li><a href="#">Unisort IV</a></li>
    <li><a href="#">Unisort V</a></li>
    <li><a href="#">Unisort X</a></li>
    <li><a href="#">Unisort XV</a></li>
</ul>



mysql> describe categories;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | bigint       | NO   | PRI | NULL    | auto_increment |
| name          | varchar(255) | YES  |     | NULL    |                |
| description   | text         | YES  |     | NULL    |                |
| type          | int          | YES  |     | NULL    |                |
| defacto_image | varchar(255) | YES  |     | NULL    |                |
| created_at    | datetime(6)  | NO   |     | NULL    |                |
| updated_at    | datetime(6)  | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+

DELETE FROM categories WHERE id = 1;
DELETE FROM categories WHERE id = 2;

SYSTEM
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('A/c 250', 'A/c 250 Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Accu - Glide', 'Accu - Glide Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Alvey', 'Alvey Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Alvey Palletizer', 'Alvey Palletizer Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('HK Systems', 'HK Systems Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('National', 'National Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Transnorm', 'Transnorm Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Unisort IV', 'Unisort IV Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Unisort V', 'Unisort V Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Unisort X', 'Unisort X Description', 1, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Unisort XV', 'Unisort XV Description', 1, 'https://fake/fake', NOW(), NOW());

PART TYPE
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Bearings', 'Bearings Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Belting', 'Belting Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Chain', 'Chain Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Combiner', 'Combiner Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Conveyor Sorter', 'Conveyor Sorter Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Encoder', 'Encoder Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Miscellaneous', 'Miscellaneous Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Motor-reducer', 'Motor-reducer Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('O-rings', 'O-rings Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Pin Guide', 'Pin Guide Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Pulleys', 'Pulleys Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Rollers', 'Rollers Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Sensors', 'Sensors Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Sorter Components', 'Sorter Components Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Sorter Tubes', 'Sorter Tubes Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Springs', 'Springs Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Sprockets', 'Sprockets Description', 0, 'https://fake/fake', NOW(), NOW());
INSERT INTO categories (name, description, category_type, defacto_image, created_at, updated_at) VALUES ('Valves, cylinders, filter, regulators', 'Valves, cylinders, filter, regulators Description', 0, 'https://fake/fake', NOW(), NOW());

mysql> select * from categories;
+----+---------------------------------------+---------------------------------------------------+---------------+-------------------+----------------------------+----------------------------+
| id | name                                  | description                                       | category_type | defacto_image     | created_at                 | updated_at                 |
+----+---------------------------------------+---------------------------------------------------+---------------+-------------------+----------------------------+----------------------------+
|  3 | A/c 250                               | A/c 250 Description                               |             1 | https://fake/fake | 2024-06-27 12:45:08.000000 | 2024-06-27 12:45:08.000000 |
|  4 | Accu - Glide                          | Accu - Glide Description                          |             1 | https://fake/fake | 2024-06-27 12:45:13.000000 | 2024-06-27 12:45:13.000000 |
|  5 | Alvey                                 | Alvey Description                                 |             1 | https://fake/fake | 2024-06-27 12:45:15.000000 | 2024-06-27 12:45:15.000000 |
|  6 | Alvey Palletizer                      | Alvey Palletizer Description                      |             1 | https://fake/fake | 2024-06-27 12:45:18.000000 | 2024-06-27 12:45:18.000000 |
|  7 | HK Systems                            | HK Systems Description                            |             1 | https://fake/fake | 2024-06-27 12:45:20.000000 | 2024-06-27 12:45:20.000000 |
|  8 | National                              | National Description                              |             1 | https://fake/fake | 2024-06-27 12:45:23.000000 | 2024-06-27 12:45:23.000000 |
|  9 | Transnorm                             | Transnorm Description                             |             1 | https://fake/fake | 2024-06-27 12:45:27.000000 | 2024-06-27 12:45:27.000000 |
| 10 | Unisort IV                            | Unisort IV Description                            |             1 | https://fake/fake | 2024-06-27 12:45:29.000000 | 2024-06-27 12:45:29.000000 |
| 11 | Unisort V                             | Unisort V Description                             |             1 | https://fake/fake | 2024-06-27 12:45:33.000000 | 2024-06-27 12:45:33.000000 |
| 12 | Unisort X                             | Unisort X Description                             |             1 | https://fake/fake | 2024-06-27 12:45:36.000000 | 2024-06-27 12:45:36.000000 |
| 13 | Unisort XV                            | Unisort XV Description                            |             1 | https://fake/fake | 2024-06-27 12:45:38.000000 | 2024-06-27 12:45:38.000000 |
| 15 | Bearings                              | Bearings Description                              |             0 | https://fake/fake | 2024-06-27 13:54:24.000000 | 2024-06-27 13:54:24.000000 |
| 16 | Belting                               | Belting Description                               |             0 | https://fake/fake | 2024-06-27 13:54:31.000000 | 2024-06-27 13:54:31.000000 |
| 17 | Chain                                 | Chain Description                                 |             0 | https://fake/fake | 2024-06-27 13:54:37.000000 | 2024-06-27 13:54:37.000000 |
| 18 | Combiner                              | Combiner Description                              |             0 | https://fake/fake | 2024-06-27 13:54:41.000000 | 2024-06-27 13:54:41.000000 |
| 19 | Conveyor Sorter                       | Conveyor Sorter Description                       |             0 | https://fake/fake | 2024-06-27 13:54:44.000000 | 2024-06-27 13:54:44.000000 |
| 20 | Encoder                               | Encoder Description                               |             0 | https://fake/fake | 2024-06-27 13:54:59.000000 | 2024-06-27 13:54:59.000000 |
| 21 | Miscellaneous                         | Miscellaneous Description                         |             0 | https://fake/fake | 2024-06-27 13:55:05.000000 | 2024-06-27 13:55:05.000000 |
| 22 | Motor-reducer                         | Motor-reducer Description                         |             0 | https://fake/fake | 2024-06-27 13:55:09.000000 | 2024-06-27 13:55:09.000000 |
| 23 | O-rings                               | O-rings Description                               |             0 | https://fake/fake | 2024-06-27 13:58:54.000000 | 2024-06-27 13:58:54.000000 |
| 24 | Pin Guide                             | Pin Guide Description                             |             0 | https://fake/fake | 2024-06-27 13:58:59.000000 | 2024-06-27 13:58:59.000000 |
| 25 | Pulleys                               | Pulleys Description                               |             0 | https://fake/fake | 2024-06-27 13:59:02.000000 | 2024-06-27 13:59:02.000000 |
| 26 | Rollers                               | Rollers Description                               |             0 | https://fake/fake | 2024-06-27 13:59:06.000000 | 2024-06-27 13:59:06.000000 |
| 27 | Sensors                               | Sensors Description                               |             0 | https://fake/fake | 2024-06-27 13:59:08.000000 | 2024-06-27 13:59:08.000000 |
| 28 | Sorter Components                     | Sorter Components Description                     |             0 | https://fake/fake | 2024-06-27 13:59:11.000000 | 2024-06-27 13:59:11.000000 |
| 29 | Sorter Tubes                          | Sorter Tubes Description                          |             0 | https://fake/fake | 2024-06-27 13:59:17.000000 | 2024-06-27 13:59:17.000000 |
| 30 | Springs                               | Springs Description                               |             0 | https://fake/fake | 2024-06-27 13:59:55.000000 | 2024-06-27 13:59:55.000000 |
| 31 | Sprockets                             | Sprockets Description                             |             0 | https://fake/fake | 2024-06-27 13:59:58.000000 | 2024-06-27 13:59:58.000000 |
| 32 | Valves, cylinders, filter, regulators | Valves, cylinders, filter, regulators Description |             0 | https://fake/fake | 2024-06-27 14:00:01.000000 | 2024-06-27 14:00:01.000000 |
+----+---------------------------------------+---------------------------------------------------+---------------+-------------------+----------------------------+----------------------------+















ALTER TABLE products ADD COLUMN popular TINYINT(1) NOT NULL DEFAULT 0;

UPDATE products SET popular = 1 WHERE id = 2;
UPDATE products SET popular = 1 WHERE id = 6;
UPDATE products SET popular = 1 WHERE id = 13;





RENAME TABLE category_to_products TO products_link_categories;

INSERT INTO products_link_categories (product_id, category_id, popular_product, created_at, updated_at) VALUES (1, 1, 1, NOW(), NOW());



ALTER TABLE products_link_categories DROP COLUMN popular_product;

ALTER TABLE products_link_categories ADD COLUMN quantity INT;







```bash
tree . -I "node_modules|tmp" > ./walker/tree.md
```



## delete the branch
```bash
git branch -D walker
```










# admin sign in link:
http://127.0.0.1:3000/admins/sign_in








### delete and admin
```bash
DELETE FROM admins WHERE id = 1;
```



























# Rails naming conventions #

## General Ruby conventions ##

Class names are `CamelCase`.

Methods and variables are `snake_case`.

Methods with a `?` suffix will return a boolean.

Methods with a `!` suffix mean one of two things: either the method operates destructively in some fashion, or it will raise and exception instead of failing (such as Rails models' `#save!` vs. `#save`).

In documentation, `::method_name` denotes a *class method*, while `#method_name` denotes a *instance method*.

## Database ##

*Database tables* use `snake_case`. Table names are **plural**.

*Column names* in the database use `snake_case`, but are generally **singular**.

Example:

```
+--------------------------+
| bigfoot_sightings        |
+------------+-------------+
| id         | ID          |
| sighted_at | DATETIME    |
| location   | STRING      |
| profile_id | FOREIGN KEY |
+------------+-------------+

+------------------------------+
| profiles                     |
+---------------------+--------+
| id                  | ID     |
| name                | STRING |
| years_of_experience | INT    |
+---------------------+--------+
```

## Model ##

Model *class names* use `CamelCase`. These are **singular**, and will map automatically to the plural database table name.

Model *attributes* and *methods* use `snake_case` and match the column names in the database.

Model files go in `app/models/#{singular_model_name}.rb`.

Example:

```ruby
# app/models/bigfoot_sighting.rb
class BigfootSighting < ActiveRecord::Base
  # This class will have these attributes: id, sighted_at, location
end
```
```ruby
# app/models/profile.rb
class Profile < ActiveRecord::Base
  # Methods follow the same conventions as attributes
  def veteran_hunter?
    years_of_experience > 2
  end
end
```

### Relations in models ###

Relations use `snake_case` and follow the type of relation, so `has_one` and `belongs_to` are **singular** while `has_many` is **plural**.

Rails expects foreign keys in the database to have an `_id` suffix, and will map relations to those keys automatically if the names line up.

Example:

```ruby
# app/models/bigfoot_sighting.rb
class BigfootSighting < ActiveRecord::Base
  # This knows to use the profile_id field in the database
  belongs_to :profile
end
```
```ruby
# app/models/profile.rb
class Profile < ActiveRecord::Base
  # This knows to look at the BigfootSighting class and find the foreign key in that table
  has_many :bigfoot_sightings
end
```

## Controllers ##

Controller *class names* use `CamelCase` and have `Controller` as a suffix. The `Controller` suffix is always singular. The name of the resource is usually **plural**.

Controller *actions* use `snake_case` and usually match the standard route names Rails defines (`index`, `show`, `new`, `create`, `edit`, `update`, `delete`).

Controller files go in `app/controllers/#{resource_name}_controller.rb`.

Example:

```ruby
# app/controllers/bigfoot_sightings_controller.rb
BigfootSightingsController < ApplicationController
  def index
    # ...
  end
  def show
    # ...
  end
  # etc
end
```

```ruby
# app/controllers/profiles_controller.rb
ProfilesController < ApplicationController
  def show
    # ...
  end
  # etc
end
```

## Routes ##

Route names are `snake_case`, and usually match the controller. Most of the time routes are **plural** and use the plural `resources`.

[Singular routes](http://edgeguides.rubyonrails.org/routing.html#singular-resources) are a special case. These use the singular `resource` and a singular resource name. However, they still map to a plural controller by default!

Example:

```ruby
resources :bigfoot_sightings
# Users can only see their own profiles, so we'll use `/profile` instead
# of putting an id in the URL.
resource :profile
```

## Views ##

View file names, by default, match the controller and action that they are tied to.

Views go in `app/views/#{resource_name}/#{action_name}.html.erb`.

Examples:

 * `app/views/bigfoot_sightings/index.html.erb`
 * `app/views/bigfoot_sightings/show.html.erb`
 * `app/views/profile/show.html.erb`

# More resources #

* [ActiveRecord naming and schema conventions (including magic column names)](http://edgeguides.rubyonrails.org/active_record_basics.html#naming-conventions)
* [Mind map of Rails conventions](https://teddicodes.files.wordpress.com/2015/02/railsnamingconventions.pdf)










### ActiveRecord Model Attributes and Methods

#### Attribute Methods

| Attribute Method                  | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `id`                              | Primary key for the model (default is `id`).                                 |
| `created_at`                      | Timestamp when the record was created.                                       |
| `updated_at`                      | Timestamp when the record was last updated.                                  |
| `attribute`                       | Retrieves the value of a specified attribute.                                |
| `attribute_before_type_cast`      | Retrieves the value of an attribute before type casting.                     |
| `attribute_change`                | Returns the change to a specified attribute in an array format `[old, new]`. |
| `attributes`                      | Returns a hash of all the model's attributes and their values.               |
| `assign_attributes`               | Assigns multiple attributes at once, without saving them.                    |
| `read_attribute`                  | Reads the value of a specified attribute.                                     |
| `write_attribute`                 | Sets the value of a specified attribute.                                      |

#### Finder Methods

| Finder Method                     | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `find`                            | Finds a record by its primary key.                                           |
| `find_by`                         | Finds a record by specified attributes.                                      |
| `find_by!`                        | Finds a record by specified attributes and raises an error if not found.     |
| `first`                           | Returns the first record.                                                    |
| `last`                            | Returns the last record.                                                     |
| `all`                             | Returns all records.                                                         |
| `where`                           | Returns records matching specified conditions.                               |
| `order`                           | Returns records ordered by specified attributes.                             |
| `limit`                           | Limits the number of records returned.                                       |
| `offset`                          | Skips a specified number of records.                                         |

#### Querying Methods

| Querying Method                   | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `group`                           | Groups records by specified attributes.                                      |
| `having`                          | Filters groups based on specified conditions.                                |
| `joins`                           | Joins tables to the query.                                                   |
| `includes`                        | Eager loads associated records.                                              |
| `select`                          | Selects specific columns from the database.                                  |
| `pluck`                           | Plucks a single column value from the database.                              |
| `distinct`                        | Returns distinct records.                                                    |

#### Creation Methods

| Creation Method                   | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `new`                             | Initializes a new, unsaved record.                                           |
| `create`                          | Creates and saves a new record.                                              |
| `create!`                         | Creates and saves a new record, raising an error if validation fails.        |
| `build`                           | Alias for `new`.                                                             |

#### Update Methods

| Update Method                     | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `save`                            | Saves the record, performing validations.                                    |
| `save!`                           | Saves the record, raising an error if validation fails.                      |
| `update`                          | Updates specified attributes and saves the record.                           |
| `update!`                         | Updates specified attributes and saves the record, raising an error if validation fails. |
| `update_attribute`                | Updates a single attribute and saves the record, without validations.        |
| `update_attributes`               | Alias for `update`.                                                          |
| `update_attributes!`              | Alias for `update!`.                                                         |
| `increment`                       | Increments a numeric attribute by a specified value.                         |
| `increment!`                      | Increments a numeric attribute by a specified value and saves the record.    |
| `decrement`                       | Decrements a numeric attribute by a specified value.                         |
| `decrement!`                      | Decrements a numeric attribute by a specified value and saves the record.    |

#### Deletion Methods

| Deletion Method                   | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `destroy`                         | Deletes the record, invoking callbacks.                                      |
| `destroy!`                        | Deletes the record, raising an error if callbacks fail.                      |
| `delete`                          | Deletes the record without invoking callbacks.                               |
| `delete_all`                      | Deletes all records or those matching specified conditions.                  |

#### Validation Methods

| Validation Method                 | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `valid?`                          | Returns true if the record is valid.                                         |
| `invalid?`                        | Returns true if the record is invalid.                                       |
| `errors`                          | Returns an object with error messages for invalid attributes.                |
| `validate`                        | Runs the model validations.                                                  |
| `validate!`                       | Runs the model validations and raises an error if validation fails.          |

#### Association Methods

| Association Method                | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `belongs_to`                      | Specifies a one-to-one association with another model.                      |
| `has_one`                         | Specifies a one-to-one association with another model.                      |
| `has_many`                        | Specifies a one-to-many association with another model.                     |
| `has_and_belongs_to_many`         | Specifies a many-to-many association with another model.                    |
| `has_many :through`               | Specifies a many-to-many association with another model through a join table.|
| `inverse_of`                      | Specifies the inverse of an association.                                     |
| `dependent`                       | Specifies what happens to associated records when the parent is destroyed.   |

#### Callback Methods

| Callback Method                   | Description                                                                 |
|-----------------------------------|-----------------------------------------------------------------------------|
| `before_validation`               | Runs before validations are performed.                                       |
| `after_validation`                | Runs after validations are performed.                                        |
| `before_save`                     | Runs before the record is saved.                                             |
| `around_save`                     | Runs around the save action.                                                 |
| `after_save`                      | Runs after the record is saved.                                              |
| `before_create`                   | Runs before the record is created.                                           |
| `around_create`                   | Runs around the create action.                                               |
| `after_create`                    | Runs after the record is created.                                            |
| `before_update`                   | Runs before the record is updated.                                           |
| `around_update`                   | Runs around the update action.                                               |
| `after_update`                    | Runs after the record is updated.                                            |
| `before_destroy`                  | Runs before the record is destroyed.                                         |
| `around_destroy`                  | Runs around the destroy action.                                              |
| `after_destroy`                   | Runs after the record is destroyed.                                          |
| `after_commit`                    | Runs after the transaction is committed.                                     |
| `after_rollback`                  | Runs after the transaction is rolled back.                                   |











### Rails Controller Actions and Methods

#### Standard RESTful Actions

| Action        | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| `index`       | Displays a list of all records.                                             |
| `show`        | Displays a specific record based on the `id` parameter.                     |
| `new`         | Renders a form for creating a new record.                                   |
| `create`      | Processes the form submission and creates a new record.                     |
| `edit`        | Renders a form for editing an existing record based on the `id` parameter.  |
| `update`      | Processes the form submission and updates an existing record.               |
| `destroy`     | Deletes a specific record based on the `id` parameter.                      |

#### Custom Actions

| Custom Action | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| `search`      | Searches for records based on provided parameters.                          |
| `archive`     | Archives a specific record based on the `id` parameter.                     |
| `unarchive`   | Unarchives a specific record based on the `id` parameter.                   |
| `export`      | Exports records to a specified format (e.g., CSV, JSON).                    |

#### Callback Methods

| Callback Method   | Description                                                                 |
|-------------------|-----------------------------------------------------------------------------|
| `before_action`   | Runs before the specified actions.                                          |
| `after_action`    | Runs after the specified actions.                                           |
| `around_action`   | Runs around the specified actions.                                          |
| `skip_before_action` | Skips the `before_action` callback for the specified actions.            |
| `skip_after_action`  | Skips the `after_action` callback for the specified actions.             |
| `skip_around_action` | Skips the `around_action` callback for the specified actions.            |

#### Rendering Methods

| Rendering Method     | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `render`             | Renders a specified template or content.                                     |
| `redirect_to`        | Redirects to a specified URL or action.                                      |
| `head`               | Sends only headers in the response.                                          |
| `send_data`          | Sends binary data to the user.                                               |
| `send_file`          | Sends a file to the user.                                                    |

#### Parameter Handling Methods

| Parameter Method     | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `params`             | Accesses the request parameters.                                             |
| `permit`             | Allows specified parameters to be used in the controller actions.            |
| `require`            | Requires the presence of a specified parameter.                              |

#### Session Management Methods

| Session Method       | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `session`            | Accesses the session object.                                                 |
| `cookies`            | Accesses the cookies object.                                                 |

#### Flash Message Methods

| Flash Method         | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `flash`              | Sets or retrieves flash messages.                                            |
| `flash.now`          | Sets flash messages for the current request only.                            |

#### HTTP Request Methods

| Request Method       | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `request`            | Accesses the request object.                                                 |
| `response`           | Accesses the response object.                                                |

#### Filters

| Filter Method        | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `filter_parameter_logging` | Filters out sensitive parameters from the log.                          |
| `before_filter`      | Alias for `before_action`.                                                   |
| `after_filter`       | Alias for `after_action`.                                                    |
| `around_filter`      | Alias for `around_action`.                                                   |

#### Rescue Methods

| Rescue Method        | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `rescue_from`        | Specifies how to handle specific exceptions.                                 |

#### Other Utility Methods

| Utility Method       | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `logger`             | Accesses the logger instance.                                                |
| `head`               | Sends headers as a response without rendering a view.                        |
| `http_basic_authenticate_with` | Implements HTTP Basic Authentication.                              |
