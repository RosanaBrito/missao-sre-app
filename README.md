# 🚀 Missão SRE: Plataforma de Containers na AWS

Este projeto é uma demonstração completa de um ciclo de DevOps/SRE, construindo uma pipeline de CI/CD para uma aplicação Python (Flask) e implantando-a em um cluster Kubernetes (AWS EKS).

## 🎯 Objetivo

O objetivo é simular um ambiente de produção real, demonstrando as seguintes habilidades:
* Containerização de aplicações com **Docker**.
* Automação de build e push de imagens com **GitHub Actions (CI)**.
* Provisionamento de infraestrutura como código (IaC) na nuvem com **EKS (via `eksctl`)**.
* Orquestração de containers e implantação com **Kubernetes (Deployment & Service)**.
* Exposição da aplicação para a internet de forma resiliente usando um **Load Balancer**.

---

## 🛠️  Tecnologias Utilizadas

* **Aplicação:** Python (Flask)
* **Containerização:** Docker
* **CI/CD:** GitHub Actions
* **Container Registry:** Docker Hub
* **Cloud Provider:** AWS (Amazon Web Services)
* **Orquestração:** Kubernetes (Amazon EKS)
* **CLI Tools:** `aws-cli`, `kubectl`, `eksctl`

---

## 📖 Estrutura do Projeto

* `app.py`: A aplicação web "Olá, SRE!" em Flask.
* `requirements.txt`: Dependências da aplicação Python.
* `Dockerfile`: Para construir a imagem da aplicação.
* `deployment.yml`: O manifesto Kubernetes que define o `Deployment` (3 réplicas) e o `Service` (LoadBalancer) para rodar a aplicação no cluster.
* `.github/workflows/ci-pipeline.yml`: O workflow do GitHub Actions que automaticamente constrói e publica a imagem no Docker Hub a cada `push` na branch `main`.

---

## 🔄 Fluxo do CI/CD

1.  Um `git push` é feito para a branch `main`.
2.  O GitHub Actions é acionado (baseado no `ci-pipeline.yml`).
3.  A action faz o login no Docker Hub (usando segredos).
4.  A imagem Docker é construída (`docker build`).
5.  A imagem é enviada (`docker push`) para o Docker Hub com a tag `latest`.
