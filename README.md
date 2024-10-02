# RAoPT Evaluation Dataset

This repository contains the datasets used to evaluate the **Reconstruction Attack on Protected Trajectories (RAoPT)**.

The artifact repository is https://github.com/erik-buchholz/RAoPT

## Decompression

To decompress the dataset, run:

```shell
./reassemble_dataset.sh
```

This script will decompress the dataset in `processed_csv`.
Then, the created directory can be copied into the [Artifact's](https://github.com/erik-buchholz/RAoPT) root directory to be used.
I.e., `processed_csv` should be on the same level as `raopt`, `config`, `test`, etc:

```
artifacts/
├── config/
├── environment/
├── output/
├── processed_csv/               # <- HERE
│   ├── geolife/
│   └── tdrive/
├── raopt/
├── test/
├── LICENCE
├── README.md
├── print_results.py
├── requirements.txt
└── setup.py
```

