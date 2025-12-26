<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{
    AuthController,
    PatientController,
    DoctorController,
    AppointmentController,
    DepartmentController,
    ScheduleController,
    PrescriptionController,
    BillingController,
    FeedbackController,
    RoleController
};

// Public Routes
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::get('/status', fn() => response()->json(['message' => 'Clinic API running'], 200));

// Protected Routes
Route::middleware('auth:sanctum')->group(function () {
    Route::apiResource('patients', PatientController::class);
    Route::apiResource('doctors', DoctorController::class);
    Route::apiResource('appointments', AppointmentController::class);
    Route::apiResource('departments', DepartmentController::class);
    Route::apiResource('schedules', ScheduleController::class);
    Route::apiResource('prescriptions', PrescriptionController::class);
    Route::apiResource('billings', BillingController::class);
    Route::apiResource('feedbacks', FeedbackController::class);
    Route::apiResource('roles', RoleController::class);

    Route::post('/logout', [AuthController::class, 'logout']);
});

