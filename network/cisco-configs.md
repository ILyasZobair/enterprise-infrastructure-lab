# Configuration du switch Cisco

## 1. Création des VLAN

```text
enable
configure terminal
vlan 10
 name ADMIN
exit
vlan 20
 name EMPLOYES
exit
vlan 30
 name SERVEURS
exit
```

## 2. Ports Access

```text
interface fastEthernet 0/2
 switchport mode access
 switchport access vlan 10
 spanning-tree portfast
exit
interface fastEthernet 0/3
 switchport mode access
 switchport access vlan 20
 spanning-tree portfast
exit
interface fastEthernet 0/4
 switchport mode access
 switchport access vlan 30
 spanning-tree portfast
exit
```

## 3. Trunk vers le routeur

```text
interface gigabitEthernet 0/1
 switchport mode trunk
 switchport trunk allowed vlan 10,20,30
exit
end
write memory
```

## 4. Vérification

```text
show vlan brief
show interfaces trunk
show running-config
```

**Attention :** adapter les ports au matériel utilisé. Le port trunk doit être connecté au bon équipement. Sur un switch Layer 2, ne pas utiliser `switchport trunk encapsulation dot1q` si la commande n'est pas supportée.
