<?php

/**
 * Front controller
 *
 * PHP version 7.0
 */

/**
 * Composer
 */
header('Access-Control-Allow-Origin', 'http://localhost:8080');
header('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization');
header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');

require dirname(__DIR__) . '/vendor/autoload.php';


/**
 * Error and Exception handling
 */
error_reporting(E_ALL);
set_error_handler('Core\Error::errorHandler');
set_exception_handler('Core\Error::exceptionHandler');


/**
 * Routing
 */
$router = new Core\Router();


// Add the routes
$router->add('', ['controller' => 'Home', 'action' => 'index']);
$router->add('/user/login', ['controller' => 'User', 'action' => 'login']);
$router->add('seed', ['controller' => 'User', 'action' => 'seed']);
$router->add('{controller}/{action}');
    
$router->dispatch($_SERVER['QUERY_STRING']);
