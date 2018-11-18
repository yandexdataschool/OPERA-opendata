ROOT_DIR:=data_root
CSV_DIR:=data_csv

get_root:
	echo "get OPERA data from CERN opendata portal"
	-mkdir -p ${ROOT_DIR}

get_csv:
	echo "get OPERA CSV data from CERN opendata portal"
	-mkdir ${CSV_DIR}
	wget --no-check-certificate -P ${CSV_DIR} https://eospublichttp.cern.ch//eos/opendata/opera/datasets/electron-showers/mcdata_taue_10k_showers.csv
	wget --no-check-certificate -P ${CSV_DIR} https://eospublichttp.cern.ch//eos/opendata/opera/datasets/electron-showers/mcdata_nue_10k_showers.csv
	wget --no-check-certificate -P ${CSV_DIR} https://eospublichttp.cern.ch//eos/opendata/opera/datasets/electron-showers/background-129294.csv

root2csv:
	@echo "run \`jupyter convert_OPERA_root_to_csv.ipynb\`"

prepare:
	jupyter-nbconvert --execute combine.ipynb
	ls -l data_csv/
	