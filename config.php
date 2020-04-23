<?php

use Sami\Sami;
use Symfony\Component\Finder\Finder;

$iterator = Finder::create()
    ->files()
    ->name('*.php')
    ->exclude('Resources')
    ->exclude('tests')
    ->in(__DIR__.'/vendor/greenter')
;

return new Sami($iterator, array(
    'title'                => 'Greenter API',
    'build_dir'            => __DIR__.'/build',
    'cache_dir'            => __DIR__.'/cache',
    'default_opened_level' => 2,
));