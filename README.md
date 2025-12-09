# Baby Tools Shop

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Quickstart](#quickstart)
3. [Usage](#usage)
4. [Additional Notes](#additional-notes)
5. [Photos](#photos)

## Prerequisites

- [Docker](https://www.docker.com/) (recommended for quick setup)
- Git (to clone the repository)

## Quickstart

### Clone the repository

```bash
git clone https://github.com/MarcoLenschau/Baby-Tools-Shop.git
cd Baby-Tools-Shop
```

### Create .env file

Copy the example environment variables:

```bash
cp babyshop_app/babyshop/.env.example babyshop_app/babyshop/.env
```

**Note:** The `.env.example` contains insecure example values. Adjust the values as needed. Sensitive data like `SECRET_KEY` and `IP` should never be committed to the repository!

### Build Docker image

```bash
docker build -t shop .
```

### Start Docker container

```bash
docker run -d -p 8025:8025 shop
```

### Create Django admin user (superuser)

Open a shell in the running container and execute:

```bash
docker exec -it <container_id> python manage.py createsuperuser
```

Follow the instructions to create an admin account. Afterwards, you can log in at `http://localhost:8025/admin`.

## Usage

- Find more Docker options in the [Docker documentation](https://docs.docker.com/engine/reference/commandline/run/).
- Django settings are located in `babyshop_app/babyshop/settings.py`.
- Routes can be found in the respective `urls.py` files.
- Products can be added via the Django admin interface.

## Additional Notes

- **.env & sensitive data:**
	- The `.env.example` file contains example values. Copy it to `.env` and adjust as needed.
	- Only add sensitive data like `SECRET_KEY`, `IP`, etc. to `.env`, never to the repository!
	- Add more environment variables as needed.
- **Python base image:**
	- The Dockerfile currently uses `python:3.9-alpine`. Change the image if you need another Python version, but be aware of possible compatibility issues.
- **.gitignore:**
	- A `.gitignore` is already present and prevents sensitive/unnecessary files from being committed.
- **Admin login:**
	- After creating the superuser, you can log in at `/admin` and manage products.

## Photos

##### Home page with login
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080815407.jpg"></img>
##### Home page with filter
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080840305.jpg"></img>
##### Product detail page
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080934541.jpg"></img>
##### Home page without login
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080953570.jpg"></img>
##### Register page
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081016022.jpg"></img>
##### Login page
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081044867.jpg"></img>