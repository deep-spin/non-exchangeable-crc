# Non-Exchangeable Conformal Risk Control

Official implementation of **Non-Exchangeable Conformal Risk Control**.

**Abstract**:

_Split conformal prediction has recently sparked great interest due to its ability to provide formally guaranteed uncertainty sets or intervals for predictions made by black-box neural models, ensuring a predefined probability of containing the actual ground truth. While the original formulation assumes data exchangeability, some extensions handle non-exchangeable data, which is often the case in many real-world scenarios. In parallel, some progress has been made in conformal methods that provide statistical guarantees for a broader range of objectives, such as bounding the best F1-score or minimizing the false negative rate in expectation. In this paper, we leverage and extend these two lines of work by proposing non-exchangeable conformal risk control, which allows controlling the expected value of any monotone loss function when the data is not exchangeable. Our framework is flexible, makes very few assumptions, and allows weighting the data based on its statistical similarity with the test examples; a careful choice of weights may result on tighter bounds, making our framework useful in the presence of change points, time series, or other forms of distribution drift. Experiments with both synthetic and real world data show the usefulness of our method._

## Acknowledgments

The code in this repository is based on the implementations of [Barber et al. (2023)](https://rinafb.github.io/) and [Angelopoulos et al. (2023)](https://github.com/aangelopoulos/conformal-risk).