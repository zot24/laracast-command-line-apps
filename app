#!/usr/bin/env php
<?php

use Symfony\Component\Console\Application;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Input\InputArgument;

require "vendor/autoload.php";

$app = new Application('Laracast Command Line Apps TDD', '1.0');

$app->register('sayHelloTo')
    ->setDescription('Say hello to the name specified')
    ->addArgument('name', InputArgument::REQUIRED, 'Name to say hello to')
    ->setCode(function (InputInterface $input, OutputInterface $output) {
        $message = 'Hello, ' . $input->getArgument('name') . '!';
        $output->writeln("<info>{$message}</info>");
    });

$app->run();