# Prometheus-Alert-Manager-With-Loki-Stack-Grafana

This repository contains the necessary files to deploy a Prometheus, Alert Manager, Loki Stack, and Grafana monitoring stack on Kubernetes.

## Installing the Chart

To install the chart, follow these steps:

1. Clone this repository to your local machine:

```bash
git clone https://github.com/PrabhatNew/prometheus-alert_manager-loki_stack-grafana.git
```

2. Change the file permession:

```bash
sudo chmod -R 777 prometheus-alert_manager-loki_stack-grafana
```
3. Run the script:
```bash
cd prometheus-alert_manager-loki_stack-grafana
```
```bash
bash install-prometheus-alert_manager-loki_stack-grafana.sh
```
4. Note that you should edit the `loki_grafana-values.yaml` file for the Loki Stack according to your needs.

## Usage

Note that the Loki Stack dashboard can be accessed using `15141`.

## Troubleshooting

If you encounter any issues during the installation process, please check the following:

- Make sure you have followed all the prerequisites and installation steps correctly.
- Check the logs of the Prometheus, Alert Manager, Loki Stack, and Grafana pods to identify any errors or issues: `kubectl logs <pod-name> -n monitoring`.
- Make sure you have edited the `loki_grafana-values.yaml` file for the Loki Stack correctly, according to your needs.
## All thanks to my brother https://np.linkedin.com/in/suyeshsingh for his awesome effort on creating this repo.