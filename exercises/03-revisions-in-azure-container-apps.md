## 01. Wdróż aplikację

Załaduj zmienne środowiskowe.

```bash
set -a
source .env
set +a
```

Za pomocą polecenia `containerapp create` należy wdrożyć obraz kontenera do Azure Container Apps.


```bash
az containerapp create \
  --name blue-green-container-app \
  --resource-group $RESOURCE_GROUP \
  --environment $CONTAINERAPPS_ENVIRONMENT \
  --image docker.io/lukaszkaluzny/container-apps:blue \
  --target-port 80 \
  --ingress 'external' \
  --query properties.configuration.ingress.fqdn
```

## 02. Zweryfikuj wdrożenie

Polecenie `create` zwróciło nazwę domeny dla aplikacji. Skopiuj ten adres do przeglądarki internetowej i zobacz czy odpowiada.

## 03. Zmodyfikuj działanie rewizji w portalu razem z prowadzącym