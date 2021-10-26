report : ./reports
	@awk -f src/pokemonDataParser.awk data/pokemon_dataset.csv > reports/my_pokemon_stat_report.txt
	@echo "\nA report has been generated in the reports directory under the file name \"my_pokemon_stat_report.txt\"\n"
./reports: src/pokemonDataParser.awk
	@echo "\nThe reports directory is missing in the current directory. Creating reports directory...\n"
	@mkdir ./reports
	@echo "\nReports directory created.\n"
src/pokemonDataParser.awk : data/pokemon_dataset.csv
	@echo "\nThe script file: \"pokemonDataParser.awk\" is missing in the src directory. If you have this script file, then make sure to resolve any other errors.\
\nIf you don't have it, then go find it.\n"
data/pokemon_dataset.csv:
	@echo "\nThe data file: \"pokemon_dataset.csv\" is missing in the data directory. Go to https://www.kaggle.com/hamdallak/the-world-of-pokemons to download the CSV file.\
\nYou will need to create an account on the website for download access. The file will need to be extracted from a zip folder and renamed to \"pokemon_dataset.csv\"\
\nGo get it.\n" 
