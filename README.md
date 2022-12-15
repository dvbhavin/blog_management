# laravel-9-demo
In this project composer 2.0 version is required

1. Open terminal and go to project directory
	composer update

2. Run command php artisan key:generate

3. Create database in phpmyadmin database name "blog_management_demo"

4. Run command npm install

5. Run command npm i laravel-vite-plugin

6. Run command php artisan migrate

7. Run database seeder in bellow sequence for basic user data

	7.1. php artisan db:seed
    -- After run this command default admin user,default category and fake blog data added to database

8. Open browser and hit this url "http://localhost/blog_management"	

9. Run command npm run dev

default email    : admin@gmail.com
default password : 12345678

