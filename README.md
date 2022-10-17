# Blog Movies & Movies (Only for study)

###### Based on the Ruby course from [Paulo Eduardo Melo](https://www.youtube.com/c/PauloEduardoMelo).

## Preview

![Screenshot_1](https://user-images.githubusercontent.com/26965306/196195546-85121c73-1211-4591-8584-af4ad1c77a08.png)
![Screenshot_2](https://user-images.githubusercontent.com/26965306/196195694-7ed587f2-79cc-4cfe-a62b-27cd58493449.png)
![Screenshot_3](https://user-images.githubusercontent.com/26965306/196195715-c8dd02b7-bb2c-4ac5-aec4-a7ae3b3f1055.png)
![Screenshot_4](https://user-images.githubusercontent.com/26965306/196195738-d79eb1a5-25bf-45c0-a55e-5ea771bd7709.png)
![Screenshot_5](https://user-images.githubusercontent.com/26965306/196195790-a6b9f13f-906e-4c08-82b3-a2a384d78a9c.png)
![Screenshot_6](https://user-images.githubusercontent.com/26965306/196195808-71622770-8297-445d-8904-a026a79ca256.png)

Building a blog using Bootstrap 5 with Ruby on Rails 6 in MVC pattern.

This repository is part of the [Curso Ruby on Rails 6 MVC](https://www.youtube.com/watch?v=rCwMlbpC7dU) on YouTube.

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.0.4
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.6.1
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      SQLite3 (dev) / PostgreSQL (prod)
    </td>
  </tr>
</table>

## Initial settings to run the project

```bash
# clone the project
git clone https://github.com/MisaelBeray/blog-movies

# enter the cloned directory
cd blogstrap

# install Ruby on Rails dependencies
bundle install

# install Node dependencies
yarn install

# create the development and test databases
rails db:create

# create the tables
rails db:migrate

# run the project
rails s
```

Open the browser at the address `http://localhost:3000`

## Configuration for Production

```bash
# delete the config/credentials.yml.enc file
rm config/credentials.yml.enc

# run the command to create credentials and master key (replace 'code' if you don't use VS Code)
EDITOR="code --wait" bin/rails credentials:edit
```

Add the information below in the [credentials](https://guides.rubyonrails.org/security.html#custom-credentials) to configure the email used by the Devise
gem (replace with the values ​​you want):

```yml
# ... your content above

# GMail
gmail:
  mailer_sender: 'Sender <your@email.com>'
  user_name: your@email.com
  password: your_password

# or Zoho
zoho:
  mailer_sender: 'Sender <your@email.com>'
  user_name: your@email.com
  password: your_password
  domain: your_domain.com.br

exception_recipients: exceptions@example.com
```

Save and close the `config/credentials.yml.enc` file.

If you want to use another email provider, change it in the file
`config/environments/production.rb`.

To configure [Exception Notification](https://github.com/smartinez87/exception_notification), change it in the file
`config/initializers/exception_notification.rb`.

Open the browser at the address ...
