# Clinic Management System

A comprehensive clinic management system built with Laravel 9, providing a RESTful API for managing patients, doctors, appointments, schedules, prescriptions, billing, and more.

## Features

- **Patient Management**: Complete CRUD operations for patient records
- **Doctor Management**: Manage doctor profiles and information
- **Appointment Scheduling**: Schedule and manage patient appointments
- **Department Management**: Organize clinic departments
- **Schedule Management**: Manage doctor schedules and availability
- **Prescription Management**: Create and manage patient prescriptions
- **Billing System**: Handle billing and payment records
- **Feedback System**: Collect and manage patient feedback
- **Role-Based Access Control**: Manage user roles and permissions
- **Authentication**: Secure API authentication using Laravel Sanctum

## Tech Stack

- **Backend**: Laravel 9.x
- **PHP**: ^8.0.2
- **Authentication**: Laravel Sanctum 3.3
- **Frontend Build Tool**: Vite 4.x
- **HTTP Client**: Guzzle 7.2

## Requirements

- PHP >= 8.0.2
- Composer
- Node.js and npm (for frontend assets)
- MySQL/PostgreSQL/SQLite database
- Web server (Apache/Nginx) or PHP built-in server

## Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Clinic
   ```

2. **Install PHP dependencies**
   ```bash
   composer install
   ```

3. **Install frontend dependencies**
   ```bash
   npm install
   ```

4. **Environment setup**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

5. **Configure database**
   Edit the `.env` file and set your database credentials:
   ```env
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=clinic_db
   DB_USERNAME=your_username
   DB_PASSWORD=your_password
   ```

6. **Run migrations**
   ```bash
   php artisan migrate
   ```

7. **Start the development server**
   ```bash
   php artisan serve
   ```

8. **Start Vite for frontend assets** (in a separate terminal)
   ```bash
   npm run dev
   ```

## API Endpoints

### Authentication
- `POST /api/register` - Register a new user
- `POST /api/login` - Login user
- `POST /api/logout` - Logout user (requires authentication)

### Protected Routes (Require Authentication)
All routes below require `Authorization: Bearer {token}` header.

- **Patients**: `/api/patients` (GET, POST, PUT, DELETE)
- **Doctors**: `/api/doctors` (GET, POST, PUT, DELETE)
- **Appointments**: `/api/appointments` (GET, POST, PUT, DELETE)
- **Departments**: `/api/departments` (GET, POST, PUT, DELETE)
- **Schedules**: `/api/schedules` (GET, POST, PUT, DELETE)
- **Prescriptions**: `/api/prescriptions` (GET, POST, PUT, DELETE)
- **Billings**: `/api/billings` (GET, POST, PUT, DELETE)
- **Feedbacks**: `/api/feedbacks` (GET, POST, PUT, DELETE)
- **Roles**: `/api/roles` (GET, POST, PUT, DELETE)

### Status Check
- `GET /api/status` - Check if API is running

## Project Structure

```
Clinic/
├── app/
│   ├── Console/          # Artisan commands
│   ├── Exceptions/        # Exception handlers
│   ├── Http/
│   │   ├── Controllers/   # Application controllers
│   │   │   ├── Api/       # API controllers
│   │   │   └── ...        # Other controllers
│   │   └── Middleware/    # HTTP middleware
│   └── Models/            # Eloquent models
├── config/                # Configuration files
├── database/              # Migrations, factories, seeders
├── public/                # Public assets
├── resources/
│   ├── css/               # CSS files
│   ├── js/                # JavaScript files
│   └── views/             # Blade templates
├── routes/
│   ├── api.php            # API routes
│   └── web.php            # Web routes
└── tests/                 # Test files
```

## Models

- `User` - User accounts
- `Patient` - Patient records
- `Doctor` - Doctor profiles
- `Appointment` - Appointment records
- `Department` - Clinic departments
- `Schedule` - Doctor schedules
- `Prescription` - Patient prescriptions
- `Billing` - Billing records
- `Feedback` - Patient feedback
- `Role` - User roles

## Authentication

This application uses Laravel Sanctum for API authentication. To authenticate:

1. Register or login to get an access token
2. Include the token in the Authorization header:
   ```
   Authorization: Bearer {your-token-here}
   ```

## Development

### Running Tests
```bash
php artisan test
```

### Code Style
This project uses Laravel Pint for code formatting:
```bash
./vendor/bin/pint
```

### Building Assets
```bash
npm run build
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## Support

For support, please open an issue in the repository or contact the development team.

---

Built with ❤️ using Laravel
