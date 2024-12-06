#!/bin/bash

echo "Please enter your year of birth: "
read year

current_year=2024

born=$((current_year - year))
age_in_2020=$((2020 - year))
age_in_2030=$((2030 - year))

echo "user's age   $born"
echo "user's age in 2020  $age_in_2020"
echo "user's age in 2030  $age_in_2030"
