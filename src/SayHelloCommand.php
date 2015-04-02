<?php namespace Motty;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

class SayHelloCommand extends Command
{
    public function configure()
    {
        $this->setName('sayHelloTo')
             ->setDescription('Say hello to the name specified')
             ->addArgument('name', InputArgument::REQUIRED, 'Name to say hello to')
            ->addOption('greeting', null, InputOption::VALUE_OPTIONAL, 'Override the default greeting', 'Hello');
    }

    public function execute(InputInterface $input, OutputInterface $output)
    {
        $message = sprintf('%s, %s', $input->getOption('greeting'), $input->getArgument('name'));

        $output->writeln("<info>{$message}</info>");
    }
}
