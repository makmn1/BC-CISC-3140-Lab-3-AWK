# Pokémon Stat Parser

Pokémon Stat Parser contains an AWK script that parses a dataset of Pokémon and their statistics. A link to the dataset used can be found [here](https://www.kaggle.com/hamdallak/the-world-of-pokemons
). 

## Report Generation
The AWK script goes through each Pokémon in the dataset and does the following:

1. Each Pokémon's base statistics are read and printed from the data file.
2. Each Pokémon's total and average stat is calculated and printed. 
3. The number of Pokémon processed along with the overall average statistic is printed at the end of the report.

## Installation

After cloning this repo, you can build your program using Makefile via the terminal. Make sure to have Makefile installed using:

```bash
sudo apt install make
```
If you are using a Windows machine and you do not have access to a Unix/Linux environment, install the [Windows Subsystem for Linux 2 (WSL2)](https://docs.microsoft.com/en-us/windows/wsl/install). This will create a Linux virtual machine for you to run this script and to use Makefile.

## Usage

Run this command in the root directory of the repository to build the project. A text file called "my_pokemon_stat_report.txt" will be created in your reports directory. 

```bash
make -f ppb.mak
```
