# CloudWatch Metadata Agent

Bu agent, Linux sunucularınızdaki RAM kullanımını (GB cinsinden) toplar ve bir metadata servisi üzerinden CloudWatch'a gönderir.

## Özellikler
- Bellek kullanımını her dakika otomatik olarak raporlar.
- Systemd timer kullanarak hafif bir şekilde çalışır.
- Kolay kurulum scripti içerir.

## Uzaktan Kurulum (Remote Installation)

Linux makinelerinize bu agent'ı hızlıca kurmak için aşağıdaki komutu kullanabilirsiniz:

```bash
curl -sSL https://raw.githubusercontent.com/emirrsener/cloudwatch-metadata-agent/main/install.sh | sudo bash
```

### Manuel Kurulum

1. Repoyu klonlayın:
   ```bash
   git clone https://github.com/emirrsener/cloudwatch-metadata-agent.git
   cd cloudwatch-metadata-agent
   ```

2. Kurulum scriptini çalıştırın:
   ```bash
   sudo chmod +x install.sh
   sudo ./install.sh
   ```

---

# English

This agent collects RAM usage (in GB) from your Linux servers and sends it to CloudWatch via a metadata service.

## Installation

To quickly install this agent on your Linux machines, run the following command:

```bash
curl -sSL https://raw.githubusercontent.com/emirrsener/cloudwatch-metadata-agent/main/install.sh | sudo bash
```