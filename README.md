# Enterprise Infrastructure Lab

## Présentation du projet

Ce projet présente un laboratoire informatique réalisé dans le cadre de la formation Infrastructure Digitale.

Il permet de pratiquer les réseaux, Windows Server et Linux à travers des configurations et des scripts documentés.

## Objectifs

- Créer et organiser des VLAN.
- Configurer le routage inter-VLAN avec Cisco IOS.
- Préparer un plan d'adressage IP.
- Administrer Windows Server avec PowerShell.
- Créer un inventaire du serveur.
- Installer des services réseau sous Linux.
- Réaliser et vérifier des sauvegardes.
- Documenter les tests et les résultats.

## Architecture réseau

| VLAN | Nom | Réseau | Passerelle |
|---|---|---|---|
| 10 | Administration | 192.168.10.0/24 | 192.168.10.1 |
| 20 | Employés | 192.168.20.0/24 | 192.168.20.1 |
| 30 | Serveurs | 192.168.30.0/24 | 192.168.30.1 |

### Serveurs

- Windows Server : 192.168.30.10
- Linux Server : 192.168.30.20

## Technologies

- Cisco IOS
- VLAN et routage inter-VLAN
- Windows Server
- PowerShell
- Linux Ubuntu Server
- Bash
- Nginx
- SSH
- Sauvegarde avec tar

## Structure du projet

- `network/` : configurations réseau et plan IP.
- `windows-server/` : scripts PowerShell.
- `linux/` : scripts Bash.
- `tests/` : procédures de validation.

## Tests réseau

Sur un équipement Cisco, les commandes de vérification principales sont :

```text
show vlan brief
show interfaces trunk
show ip interface brief
show running-config
```

Sur Windows :

```powershell
ipconfig
Get-NetIPConfiguration
Test-NetConnection 192.168.30.20
```

Sur Linux :

```bash
ip -br address
systemctl status ssh
systemctl status nginx
```

## Sécurité

Les configurations doivent être adaptées à l'environnement utilisé. Les mots de passe, clés privées et informations confidentielles ne doivent jamais être publiés sur GitHub.

## Auteur

Étudiant en Infrastructure Digitale — OFPPT.
