# Nginx + Certbot Docker Setup

## Setup Instructions

1. **Clone the Repository**  
   Clone this repository to your server:

   ```bash
   git clone https://github.com/server-io/docker-nginx-letsencrypt.git
   cd docker-nginx-letsencrypt
   ```

2. **Configure Environment Variables**  
   Rename the `.env.example` file to `.env`:

   ```bash
   mv .env.example .env
   ```

   Edit the `.env` file and replace the placeholders with your details:

   ```env
   EMAIL=your@email.com
   DOMAIN=yourdomain.com
   ```

3. **Point Your Domain to Your Server**  
   Ensure your domain's DNS records point to the server's IP address.

4. **Start the Services**  
   Launch the containers:

   ```bash
   docker compose up -d
   ```

5. **Enjoy!**
   Upload your web pages to ./nginx/html directory

---

### Notes
- Certbot will automatically renew your SSL certificates.  
- You can modify the Nginx configuration in `nginx/conf.d/default.conf` and `nginx/conf.d/default.ssl.conf` as needed.

--

Deploy this project on [Virtual Server with preinstalled Docker](https://serverio.io/vps_docker)
