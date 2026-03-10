# CloudWatch Metadata Agent

Bu agent, Linux sunucularınızdaki RAM kullanımını (GB cinsinden) toplar ve bir metadata servisi üzerinden CloudWatch'a gönderir.

## Özellikler
- Bellek kullanımını her dakika otomatik olarak raporlar.
- Systemd timer kullanarak hafif bir şekilde çalışır.
- Kolay kurulum scripti içerir.

## Uzaktan Kurulum (Remote Installation)

Linux makinelerinize bu agent'ı en hızlı şekilde kurmak için aşağıdaki komutu kullanabilirsiniz:

```bash
curl -sSL https://raw.githubusercontent.com/emirrsener/cloudwatch-metadata-agent/main/install.sh | sudo bash
```

### Paket ile Kurulum (.deb / .rpm)

Eğer paket yönetici üzerinden kurmak isterseniz:

**Ubuntu/Debian (.deb):**
```bash
wget https://github.com/emirrsener/cloudwatch-metadata-agent/releases/download/v0.1.0/cloudwatch-agent-0.1.0.deb
sudo dpkg -i cloudwatch-agent-0.1.0.deb
```

**CentOS/RHEL (.rpm):**
```bash
wget https://github.com/emirrsener/cloudwatch-metadata-agent/releases/download/v0.1.0/cloudwatch-agent-0.1.0-1.noarch.rpm
sudo rpm -ivh cloudwatch-agent-0.1.0-1.noarch.rpm
```

### Manuel Kurulum
...