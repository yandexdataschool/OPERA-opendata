# OPERA opendata baseline repository

## Data download

If you want to go from the source (root files), download it first:

    make get_root
    jupyter convert_OPERA_root_to_csv.ipynb

NB: requires ROOT library to be installed

If you don't want to bother with ROOT installation, you can download CSV files from CERN opendata porta:

    make get_csv

## Brick volume preparation

As soon as you get CSV files, you can combine simulated signal with background:
    
    make prepare

## Signal / Background separation

Have a look at the basic pipeline that separates electromagnetic showers from the background basetracks at [baseline.ipynb](https://github.com/yandexdataschool/OPERA-opendata/blob/master/baseline.ipynb).