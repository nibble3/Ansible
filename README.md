# Ansible
Сгенерировать новый ключ
#ssh-keygen -C mkcs-m1-ans01_rsa_key
скопировать Pub ключ на микротик и привязать его в пользователю
Проверить работу ключа
ssh -T ansible@10.33.207.1 -p 22 -i /etc/ansible/mkcs-m1-ans01_rsa_key -vvv
