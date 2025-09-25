# Non-Exchangeable Conformal Risk Control

Official implementation of [Non-Exchangeable Conformal Risk Control](https://arxiv.org/abs/2310.01262).

**Abstract**:

_Split conformal prediction has recently sparked great interest due to its ability to provide formally guaranteed uncertainty sets or intervals for predictions made by black-box neural models, ensuring a predefined probability of containing the actual ground truth. While the original formulation assumes data exchangeability, some extensions handle non-exchangeable data, which is often the case in many real-world scenarios. In parallel, some progress has been made in conformal methods that provide statistical guarantees for a broader range of objectives, such as bounding the best F1-score or minimizing the false negative rate in expectation. In this paper, we leverage and extend these two lines of work by proposing non-exchangeable conformal risk control, which allows controlling the expected value of any monotone loss function when the data is not exchangeable. Our framework is flexible, makes very few assumptions, and allows weighting the data based on its statistical similarity with the test examples; a careful choice of weights may result on tighter bounds, making our framework useful in the presence of change points, time series, or other forms of distribution drift. Experiments with both synthetic and real world data show the usefulness of our method._

## Acknowledgments

The code in this repository is based on the implementations of [Barber et al. (2023)](https://rinafb.github.io/) and [Angelopoulos et al. (2023)](https://github.com/aangelopoulos/conformal-risk).

Funding:
> This work was partly funded by the European Union's Horizon Europe (HE) Research and Innovation programme under Grant Agreement No 101070631 and from the UK Research and Innovation (UKRI) under the UK government's HE funding grant No 10039436.

## Citation

```
@misc{farinhas2023nonexchangeable,
    title={Non-Exchangeable Conformal Risk Control},
    author={António Farinhas and Chrysoula Zerva and Dennis Ulmer and André F. T. Martins},
    year={2023},
    eprint={2310.01262},
    archivePrefix={arXiv},
    primaryClass={cs.LG}
}
```
