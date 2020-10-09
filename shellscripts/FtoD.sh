##!/bin/bash -x
read -p "Enter Fahrenheit temperature (32F-212F): " tf
read -p "Enter Celsius temperature (0C-100C): " tc

FahrenheitTOCelsius()
{
	x=$(($tc - 32))
	y=$(($x * 5))
	z=$(($y / 9))
	echo $z
}

CelsiusTOFahrenheit()
{
        x=$(($tf / 5))
        y=$(($x * 9))
        z=$(($y + 32))
        echo $z

}

FahrenheitTOCelsius $tf
CelsiusTOFahrenheit $tc
