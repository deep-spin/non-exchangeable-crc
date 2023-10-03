The code and the procedure described below are mostly taken from the original repository of [Conformal Risk Control](https://github.com/aangelopoulos/conformal-risk/tree/main/qa) and adapted in order to get results for non-X CRC.

## Setup

Create new conda environment:
```
conda create -n crc-qa python=3.8
conda activate crc-qa
```

Install PyTorch, e.g.,
```
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
```

Install Transformers:
```
pip install tranformers
```

Install DPR in a third-party directory, call it:
```
export DPR_DIR=~/dpr
```

and clone/install:
```
pushd $DPR_DIR
git clone git@github.com:facebookresearch/DPR.git
cd DPR
python setup.py develop
popd
```
(Note: if this fails, you might need to add `py_modules=[]` in `setup` function of `setup.py`.)

Install miscellaneous:
```
pip install -r requirements.txt
```

Download DPR data. First, specify a directory where you will want to store the data:
```
export DATA_DIR=~/dpr-data
```

```
python -m dpr.data.download_data \
    --resource "data.retriever_results.nq.single-adv-hn.test" \
    --output_dir $DATA_DIR

python -m dpr.data.download_data \
    --resource "checkpoint.reader.nq-single.hf-bert-base" \
    --output_dir $DATA_DIR

python -m dpr.data.download_data \
    --resource "data.gold_passages_info.nq_test" \
    --output_dir $DATA_DIR
```

Symlink the DPR config dir.
```
ln -s "${DPR_DIR}/conf" "conf"
```

## Prepare data

We're now ready to run inference using their pre-trained model.
```
./inference.sh
```

This will dump predictions in `results/predictions.json` (you can change this location). Next run
```
python convert_predictions.py
```

to put results in the format we expect for conformal analysis.

## Conformal risk control

```
python risk_histogram.py
```

will print out the average risk at level $\alpha = 0.3$, and save histograms to results folder.

## Non-X conformal risk control

Run the `nonx_preprocess.ipynb` notebook. Then, run `python nonx_risk_histogram.py`. Finally, run the `nonx_plots.ipynb` notebook to get the plots presented in the paper.
