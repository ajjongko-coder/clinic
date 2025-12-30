# Clinic Management System - Database Setup Script
Write-Host "=== Clinic Management System - Database Setup ===" -ForegroundColor Cyan
Write-Host ""

# Check if MySQL is running
Write-Host "Step 1: Checking MySQL connection..." -ForegroundColor Yellow
try {
    $connection = New-Object System.Data.SqlClient.SqlConnection
    $connection.ConnectionString = "Server=127.0.0.1;Port=3306;Uid=root;Pwd=;"
    $connection.Open()
    $connection.Close()
    Write-Host "✓ MySQL is running!" -ForegroundColor Green
} catch {
    Write-Host "✗ MySQL is not running or not accessible" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please start MySQL from XAMPP Control Panel:" -ForegroundColor Yellow
    Write-Host "1. Open XAMPP Control Panel" -ForegroundColor White
    Write-Host "2. Click 'Start' next to MySQL" -ForegroundColor White
    Write-Host "3. Wait for MySQL to start (status should turn green)" -ForegroundColor White
    Write-Host "4. Run this script again" -ForegroundColor White
    Write-Host ""
    exit
}

Write-Host ""
Write-Host "Step 2: Creating database 'clinic_db'..." -ForegroundColor Yellow

# Create database using PHP
$createDbScript = @"
<?php
try {
    `$pdo = new PDO('mysql:host=127.0.0.1;port=3306', 'root', '');
    `$pdo->exec('CREATE DATABASE IF NOT EXISTS clinic_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci');
    echo 'Database created successfully!';
} catch (PDOException `$e) {
    echo 'Error: ' . `$e->getMessage();
}
"@

$createDbScript | Out-File -FilePath "temp_create_db.php" -Encoding UTF8
$result = php temp_create_db.php
Remove-Item "temp_create_db.php"

if ($result -like "*successfully*") {
    Write-Host "✓ Database 'clinic_db' created!" -ForegroundColor Green
} else {
    Write-Host "Database may already exist or there was an error" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Step 3: Running Laravel migrations..." -ForegroundColor Yellow
php artisan migrate --force

Write-Host ""
Write-Host "=== Setup Complete! ===" -ForegroundColor Green
Write-Host ""
Write-Host "Your API is available at: http://localhost:8000/api" -ForegroundColor Cyan
Write-Host "Test endpoint: http://localhost:8000/api/status" -ForegroundColor Cyan


