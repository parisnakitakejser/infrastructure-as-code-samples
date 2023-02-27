helm repo add grafana https://grafana.github.io/helm-charts
helm upgrade --install grafana grafana/grafana -n observability -f ./amp_query_override_values.yml --set persistence.enabled=true --set persistence.storageClassName="gp2" --set adminPassword="test123456" --set service.type=LoadBalancer
