# Plan d'adressage IP

| VLAN | Service | Réseau | Masque | Passerelle |
|---|---|---|---|---|
| 10 | Administration | 192.168.10.0/24 | 255.255.255.0 | 192.168.10.1 |
| 20 | Employés | 192.168.20.0/24 | 255.255.255.0 | 192.168.20.1 |
| 30 | Serveurs | 192.168.30.0/24 | 255.255.255.0 | 192.168.30.1 |

## Adresses des équipements

- PC Administration : 192.168.10.10
- PC Employés : 192.168.20.10
- Windows Server : 192.168.30.10
- Linux Server : 192.168.30.20

## Remarques

- Masque réseau : 255.255.255.0 (/24).
- Vérifier que chaque adresse IP est unique.
- Configurer les passerelles sur les équipements concernés.
- Ces adresses sont un exemple de laboratoire.
