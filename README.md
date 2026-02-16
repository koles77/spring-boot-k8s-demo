# FirstServlet – Spring Boot + Docker + Kubernetes

Простой сервис на Spring Boot с эндпоинтом `/health`, завернутый в Docker и разворачиваемый в локальный Kubernetes‑кластер (Docker Desktop).[web:115][cite:100]

## Требования

- Java 17+
- Maven
- Docker Desktop (с включенным Kubernetes)
- `kubectl` в PATH[web:113]

## Локальный запуск (без Docker)

```bash
mvn clean package
mvn spring-boot:run

Проверка:
http://localhost:8080/health

**Сборка Docker‑образа**
bash
docker build -t firstservlet:latest .
docker run -p 8080:8080 firstservlet:latest

Проверка:
http://localhost:8080/health

**Деплой в Kubernetes**
bash
kubectl apply -f deployment.yaml
kubectl get pods
kubectl get svc
Если кластер локальный (Docker Desktop), проброс порта:
bash
kubectl port-forward svc/firstservlet 8080:8080

Проверка:
http://localhost:8080/health

**Стек**
Spring Boot
Docker
Kubernetes (Deployment + Service)
Git (GitHub)
