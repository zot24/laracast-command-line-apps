#!/usr/bin/env php
<?php

use Motty\SayHelloCommand;
use Symfony\Component\Console\Application;

require "vendor/autoload.php";

$app = new Application('Laracast Command Line Apps TDD', '1.0');

$app->add(new SayHelloCommand());

$app->run();