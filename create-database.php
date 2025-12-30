<?php
// Create database script for Clinic Management System
try {
    $pdo = new PDO('mysql:host=127.0.0.1;port=3306', 'root', '');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Create database
    $pdo->exec('CREATE DATABASE IF NOT EXISTS clinic_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci');
    
    echo "✓ Database 'clinic_db' created successfully!\n";
    echo "You can now run: php artisan migrate\n";
} catch (PDOException $e) {
    if ($e->getCode() == 2002) {
        echo "✗ Error: MySQL server is not running!\n";
        echo "\nPlease:\n";
        echo "1. Open XAMPP Control Panel\n";
        echo "2. Start MySQL service\n";
        echo "3. Run this script again\n";
    } else {
        echo "✗ Error: " . $e->getMessage() . "\n";
    }
    exit(1);
}


