# Задание 4

## Таблица ролей

| Роль  | Тип роли  | Права роли | Группы пользователей |
| --- | --- | --- | --- |
| security-editor | role | secrets, configmaps: get, create, delete, update | admin |
| namespace-editor | role | pods, services, deployments: create, delete, update | admin, devops |
| namespace-observer | role | pods, services, deployments: get, list, watch | admin, devops, developer |
| cluster-editor | cluster-role | кластерные ресурсы, pods, namespace, nodes, persistent-volumes: create, delete, update | admin, devops |
| cluster-observer | cluster-role | кластерные ресурсы, pods, namespace, nodes, persistent-volumes: get, list, watch | admin, devops |

## Как запустить

1. Выполнить файл `start.sh`