kubectl create namespace observability
helm install prometheus prometheus-community/prometheus -n observability -f prometheus_values.yml