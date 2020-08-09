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
    'theme'                => 'greenter',
    'title'                => 'Greenter API',
    'build_dir'            => __DIR__.'/build',
    'cache_dir'            => __DIR__.'/cache',
    'template_dirs'        => array(__DIR__.'/themes/greenter'),
    'default_opened_level' => 2,
));