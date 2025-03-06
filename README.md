## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add simple-python-automation https://schrenker.github.io/simple-python-automation-helm-chart

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
simple-python-automation` to see the charts.

To install the simple-python-automation chart:

    helm install my-simple-python-automation simple-python-automation/simple-python-automation

To uninstall the chart:

    helm uninstall my-simple-python-automation
