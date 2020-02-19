<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

use React\EventLoop\Factory;
use React\Http\Server;
use Psr\Http\Message\ServerRequestInterface;
use React\Http\Response;

require __DIR__ . "/vendor/autoload.php";

echo 'Going to instance the loop : ' . PHP_EOL;
$loop = Factory::create();
echo 'Loop instanced : ' . get_class($loop) . PHP_EOL;

$loop->addSignal(SIGINT, $func = function ($signal) use ($loop, &$func) {
    $loop->stop();
});

$server = new Server(function (ServerRequestInterface $request) {
    return new Response(
        200,
        array(
            'Content-Type' => 'text/plain'
        ),
        "Hello World!\n"
    );
});

$socket = new React\Socket\Server("0.0.0.0:8000", $loop);
$server->listen($socket);

try {
    $loop->run();
} catch (\Throwable $trowable) {
    echo $trowable->getMessage();
}