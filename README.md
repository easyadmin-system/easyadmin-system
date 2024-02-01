```
  _____                     _       _           _         ____            _                 
 | ____|__ _ ___ _   _     / \   __| |_ __ ___ (_)_ __   / ___| _   _ ___| |_ ___ _ __ ___  
 |  _| / _` / __| | | |   / _ \ / _` | '_ ` _ \| | '_ \  \___ \| | | / __| __/ _ \ '_ ` _ \ 
 | |__| (_| \__ \ |_| |  / ___ \ (_| | | | | | | | | | |  ___) | |_| \__ \ ||  __/ | | | | |
 |_____\__,_|___/\__, | /_/   \_\__,_|_| |_| |_|_|_| |_| |____/ \__, |___/\__\___|_| |_| |_|
                 |___/                                          |___/                       
```

# easyadmin-system
Easy Admin System - CMS focused on easy use - Docker compose skeleton

* **Easy Admin System v4** - *CMS focused on easy use*
* Version: __4.0__
* Docker compose skeleton using Docker containers with Node.js / NestJS API, React Frontend, MySQL & phpMyAdmin
* Author & Maintainer: Jan Elznic – [Homepage](https://janelznic.cz) – [Github](https://github.com/janelznic) – [GitLab](https://gitlab.elznic.net/janelznic) – [LinkedIn](https://linkedin.com/in/janelznic/)


## Table of Contents
- [easyadmin-system](#easyadmin-system)
  - [Table of Contents](#table-of-contents)
  - [Related repositories](#related-repositories)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Quick run](#quick-run)
    - [Installation](#installation)
    - [Run containers](#run-containers)
  - [Structure](#structure)
    - [Services](#services)
    - [Directories](#directories)
  - [Contributing](#contributing)
    - [Recommendations](#recommendations)
    - [Git Branches](#git-branches)
  - [License](#license)


## Related repositories
* [Docker compose skeleton](https://github.com/easyadmin-system/easyadmin-system) - (easyadmin-system) **(this repository)**
* [Backend API in Node.js](https://github.com/easyadmin-system/easyadmin-core) - (easyadmin-core)
* [Frontend in React](https://github.com/easyadmin-system/easyadmin-frontend) - (easyadmin-frontend)


## Getting Started


### Prerequisites

* You need to install:
  * [Docker](https://docs.docker.com/get-docker/) on your local machine. **<span style="color:red">(required)</span>**
  * [MySQL server](https://dev.mysql.com/doc/refman/8.0/en/installing.html) on your local machine. _(optional)_
  * Create manually a new database (preferably with charset `utf8mb4` and collation `utf8mb4_unicode_ci`). _(optional)_



### Quick run
You can install and run the application in Docker just simply with run `sh run.sh` script!



### Installation

1. Clone git repository:

   `git clone git@github.com:easyadmin-system/easyadmin-system.git`


2. Go to repository directory *easyadmin-system*:

   `cd easyadmin-system`


3. Init git submodules::

   `git submodule init`


4. Update git submodules::

   `git submodule update`


5. Build:

   `docker-compose build`


### Run containers

1. Run all containers:

   `docker-compose up`


2. Open your internet browser and go to:

   `http://localhost:4200`


## Structure


### Services
| Service    | Repository         | Description             | Port | Notes               |
|------------|--------------------|-------------------------|------|---------------------|
| api        | easyadmin-core     | Backend with REST API   | 3000 | Running service     |
| frontend   | easyadmin-frontend | Frontend UI in Angular  | 4200 | Running HTTP server |
| mysql      | -                  | MySQL database instance | 3306 | Running service     |
| mysql_init | -                  | MySQL initialization    | -    | Terminated shortly  |
| phpmyadmin | -                  | phpMyAdmin tool         |      | Running service     |


### Directories
```
├── docker-compose.yml
├── README.md
└── components
   ├── easyadmin-core
   └── easyadmin-frontend
```


## Contributing

### Recommendations
* **.editorconfig** plug-in compatible editor ([http://editorconfig.org](http://editorconfig.org))

### Git Branches
* __master__ - Production, __always stable__
* __test__ - Test (to be merged with *develop* branch), RC versions only
* __develop__ - Development branch (always make feature branches from this)
* __hotfix/*__ - Hotfixes (to be merged with *develop* and *test* branch)
* __feature/*__ - Feature branches (to be merged with *develop* branch only)

__IMPORTANT NOTE:__ Always make pull requests only from your feature branch to *develop* branch, ***NOT*** to *master* branch!


## License

MIT © Jan Elznic – [Homepage](https://janelznic.cz) – [Github](https://github.com/janelznic) – [GitLab](https://gitlab.elznic.net/janelznic) – [LinkedIn](https://linkedin.com/in/janelznic/)
