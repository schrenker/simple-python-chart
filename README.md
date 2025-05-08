## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add simple-python https://schrenker.github.io/simple-python-chart

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
simple-python` to see the charts.

To install the simple-python:

    helm install my-simple-python simple-python/simple-python

To uninstall the chart:

    helm uninstall my-simple-python
