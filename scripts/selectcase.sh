#!/bin/bash

PS3="Select a city: "
select option in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karach;
do
	case "$option" in
		Tokyo)
			echo "Japan"
			;;
		London|Manchester)
			echo "UK"
			;;
		"Los Angeles"|"New York")
			echo "USA"
			;;
		Moscow)
			echo "Russia"
			;;
		Dubai|"Abu Dhabi")
			echo "UAE"
			;;
		Paris)
			echo "French"
			;;
		Bangalore|Pune)
			echo "India"
			;;
		Johannesburg)
			echo "South Africa"
			;;
		Istanbul)
			echo "Turkey"
			;;
		Milan)
			echo "Italy"
			;;
		Nairobi)
			echo "Kenya"
			;;
		Berlin)
			echo "Germany"
			;;
		Karach)
			echo "Pakistan"
			;;
		*)
			echo "Unknown city"
			;;
	esac
done		
