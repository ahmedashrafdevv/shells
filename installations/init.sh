#!/bin/bash
echo "initialiazing begins"
$base_path/helpers/apache.sh
$base_path/helpers/php.sh
$base_path/helpers/docker.sh
$base_path/helpers/git.sh "$1"
$base_path/helpers/go.sh
$base_path/helpers/mysql.sh
$base_path/helpers/laravel.sh
echo "finished"




