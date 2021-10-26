BEGIN {
       FS = ",";	
       pokemonCount = 0;
       pokemon = "";
       averageStat = 0;
       statTotal = 0;
       totalAverageStat = 0;
       attk = "Attack: ";
       def = "Defense: ";
       hp = "Hitpoints: ";
       spAttk = "Special Attack: ";
       spDef = "Special Defense: ";
       spd = "Speed: ";
       total = "Total: ";
       avg = "Average Stat: ";

}
{
	if (pokemon != $1 && $1 != "Name") 
	{
		pokemonCount++;
		pokemon = $1;
		statTotal = $5 + $6 + $7 + $8 + $9 + $10;
		averageStat = (statTotal)/6;
		totalAverageStat += statTotal;
		printf "%-20s\n%-20s%.0f\n%-20s%.0f\n%-20s%.0f\n%-20s%.0f\n%-20s%.0f\n%-20s%.0f\n%-20s%.0f\n%-20s%.0f\n\n\n",\
			  $1, attk, $5, def, $6, hp, $7, spAttk, $8, spDef, $9, spd, $10, total, statTotal, avg, averageStat;
		statTotal = 0;
	}
}

END {
	totalAverageStat /= pokemonCount;
	totalAverageStat /= 6;
	printf "Pokemon Count = %.0f\nAverage Stat Among All Pokemon: %.0f\n\n\n", pokemonCount, totalAverageStat
}
