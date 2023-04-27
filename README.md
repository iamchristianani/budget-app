<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Budget App ](#-budget-app-)
  - [🛠 Built With ](#-built-with-)
  - [🛠 Tech Stack ](#-tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo](#live-demo)
  - [🚀 Video Presentation](#presentation)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Authors](#-authors)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget-app <a name="about-project"></a>

Bill splitter app is an app for managing expenses which are grouped together based on their types. Users can register and sign up to gain access to the application. Registered users can create new groups, as well as assign expenses and their prices to these groups.

## 🛠 Built With <a name="built-with"></a>
This app is build with Ruby on Rails and Postgresql.
### Tech Stack <a name="tech-stack"></a>
> <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
> <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
> <li><a href="https://www.postgresql.org/">Postgresql</a></li>

### Key Features <a name="key-features"></a>

> - User authentication.
> - Navigation buttons for moving between pages.
> - Group creation: Users can create groups with their names and icons.
> - Expense tracking: Users can create and manage expenses and group them by categories.

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://bill-splitter-v1fd.onrender.com/)- Powered by Render

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Video Presentation <a name="presentation"></a>

- [Video Presentation Link](https://www.loom.com/share/76ca96e7229f4800aa389e397c523c7b)- Powered by Loom

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

## UML Diagram :

<img src = 'https://github.com/microverseinc/curriculum-rails/blob/main/capstone/images/erd_diagram.png'>

## To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Mac or PC
- Install Ruby
- Install Rails
- Install Postgresql
- Understanding of Ruby

### Setup

- Clone this repository to your desired folder:

```sh
 git clone https://github.com/iamchristianani/budget-app.git
```

- Navigate into the cloned folder

```sh
 cd budget-app

```
### Install

- Install this project with:

```sh
 bundle install
```

- Set up the database
  Change the username and password of your postgres account in `config/database.yml`

```sh
 rails db:create db:migrate
```

- Start the server

```sh
 rails s
```

- Run tests

```sh
 rails db:migrate RAILS_ENV=test
```

```sh
 rspec spec
```

- if it shows error try using this command

```sh
 bundle exec rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author<a name="authors"></a>

👤 **Christian Ani**

- GitHub: [@iamchristianani](https://github.com/iamchristianani)
- Twitter: [@kriznode](https://twitter.com/kriznode)
- LinkedIn: [Christian Ani](https://www.linkedin.com/in/anikriz/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Implemnt more UX design**
- [ ] **Create Desktop view**
- [ ] **Implement the side menu**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/iamchristianani/budget-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project, please leave a ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>
- Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) in accordance with the [Creative Commons license of the design](https://creativecommons.org/licenses/by-nc/4.0/).

- I would like to thank Microverse for providing us with reading materials that aided us to during the project development

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>