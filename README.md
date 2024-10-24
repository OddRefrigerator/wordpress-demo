# WordPress Demo

This repository contains a demo setup for WordPress, showcasing a simple environment to get WordPress up and running quickly. It is designed for educational purposes and for testing WordPress features in a local or development environment.

## Features

- **Pre-configured WordPress Setup:** A fully functional WordPress demo with minimal configuration.
- **Docker Support:** Uses Docker and Docker Compose for easy setup and teardown.
- **Customizable:** Environment variables allow easy customization of the WordPress setup.
- **Lightweight and Portable:** Quickly spin up or destroy your WordPress instance without affecting your local machine configuration.

## Requirements

- [Docker](https://www.docker.com/) installed on your machine.
- [Docker Compose](https://docs.docker.com/compose/) installed.

## Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/OddRefrigerator/wordpress-demo.git
   cd wordpress-demo
   ```

2. Start the WordPress demo environment using Docker Compose:

   ```bash
   docker-compose up -d
   ```

   This will pull the required images and start the containers for WordPress and MySQL.

3. Once the containers are up and running, open your browser and go to:

   ```
   http://localhost:8000
   ```

   Follow the on-screen instructions to complete the WordPress installation (choose a site name, admin credentials, etc.).

## Customization

You can customize the environment using the `.env` file. The following parameters can be adjusted:

- **WORDPRESS_DB_NAME:** Set the name of the WordPress database (default: `wordpress`).
- **WORDPRESS_DB_USER:** Set the username for the MySQL database (default: `user`).
- **WORDPRESS_DB_PASSWORD:** Set the password for the MySQL database (default: `password`).
- **WORDPRESS_DB_HOST:** Hostname of the MySQL server (default: `db`).

You can edit these values in the `.env` file before running `docker-compose up`.

## Stopping and Cleaning Up

To stop the WordPress environment, run:

```bash
docker-compose down
```

This will stop and remove the containers. The data (like the WordPress content and database) will persist unless you remove the volumes.

To remove all data and start fresh:

```bash
docker-compose down -v
```

## Troubleshooting

- If you encounter issues with the WordPress site not loading, ensure that Docker is running and the containers are healthy. You can check the container status using:

  ```bash
  docker ps
  ```

- Check logs for any errors:

  ```bash
  docker-compose logs
  ```

## Contributing

Contributions are welcome! If you find a bug or have an idea for a new feature, feel free to submit an issue or a pull request.

### Steps for Contribution

1. Fork the repository.
2. Create a new branch for your feature or fix:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of your feature or fix"
   ```
4. Push your branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request with a detailed explanation of your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any inquiries or issues, feel free to open an issue on GitHub or contact the repository owner.

---

Enjoy your WordPress demo setup!
