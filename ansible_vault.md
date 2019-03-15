%title: Ansible Vault
%author: Edovo

\    \_              \_ \_     \_       \_\_     \_\_          \_ \_
   / \\   \_ \_\_  \_\_\_(\_) |\_\_ | | \_\_\_  \\ \\   / /\_ \_ \_   \_| | |\_
  / \_ \\ | '\_ \\/ \_\_| | '\_ \\| |/ \_ \\  \\ \\ / / \_\` | | | | | \_\_|
 / \_\_\_ \\| | | \\\_\_ \\ | |\_) | |  \_\_/   \\ V / (\_| | |\_| | | |\_
/\_/   \\\_\\\_| |\_|\_\_\_/\_|\_.\_\_/|\_|\\\_\_\_|    \\\_/ \\\_\_,\_|\\\_\_,\_|\_|\\\_\_|




---

\    \_              \_ \_     \_       \_\_     \_\_          \_ \_
   / \\   \_ \_\_  \_\_\_(\_) |\_\_ | | \_\_\_  \\ \\   / /\_ \_ \_   \_| | |\_
  / \_ \\ | '\_ \\/ \_\_| | '\_ \\| |/ \_ \\  \\ \\ / / \_\` | | | | | \_\_|
 / \_\_\_ \\| | | \\\_\_ \\ | |\_) | |  \_\_/   \\ V / (\_| | |\_| | | |\_
/\_/   \\\_\\\_| |\_|\_\_\_/\_|\_.\_\_/|\_|\\\_\_\_|    \\\_/ \\\_\_,\_|\\\_\_,\_|\_|\\\_\_|

-> hide that plaintext! <-


---

\    \_              \_ \_     \_       \_\_     \_\_          \_ \_
   / \\   \_ \_\_  \_\_\_(\_) |\_\_ | | \_\_\_  \\ \\   / /\_ \_ \_   \_| | |\_
  / \_ \\ | '\_ \\/ \_\_| | '\_ \\| |/ \_ \\  \\ \\ / / \_\` | | | | | \_\_|
 / \_\_\_ \\| | | \\\_\_ \\ | |\_) | |  \_\_/   \\ V / (\_| | |\_| | | |\_
/\_/   \\\_\\\_| |\_|\_\_\_/\_|\_.\_\_/|\_|\\\_\_\_|    \\\_/ \\\_\_,\_|\\\_\_,\_|\_|\\\_\_|

-> hide that plaintext! <-
-> or <-

---

```
$ANSIBLE_VAULT;1.1;AES256
31653831336262663232636137643331623566363765313233383234376336393239656136323139
6337616632306233626430376437343133626561616262370a626163663961326633383938323437
34646263343765633638303733646534663162396437363263376364636534663230613639396133
3339353238386530390a656563396233613161336461623237386366363161313537373665373132
38383464323466363131303031333465323634666563303662353037396561653465
```

---

-> What is Ansible Vault? <-





---

-> What is Ansible Vault? <-

-> It's a command line tool that: <-






---

-> What is Ansible Vault? <-

-> It's a command line tool that: <-

- encrypts strings based on a password string




---

-> What is Ansible Vault? <-

-> It's a command line tool that: <-

- encrypts strings based on a password string
- decrypts strings based on a password string



---

-> What is Ansible Vault? <-

-> It's a command line tool that: <-

- encrypts strings based on a password string
- decrypts strings based on a password string
- both of the above invisibly from ansible runs


---
-> Ansible is great for configuring all the things! <-





---
-> Ansible is great for configuring all the things! <-

Unfortunately configuration can include secrets. 
Currently the edovo ansible repo has some of these secrets in plain text.
While the repo is private this still does not follow best practices and is a dangerous pattern.

---
Encryption is a much safer method for the saving of secrets.
There are many possibilities for accomplishing this with a github repo:






---
Encryption is a much safer method for the saving of secrets.
There are many possibilities for accomplishing this with a github repo:
 - gpg with scripts





---
Encryption is a much safer method for the saving of secrets.
There are many possibilities for accomplishing this with a github repo:
 - gpg with scripts
 - encrypting the whole repo




---
Encryption is a much safer method for the saving of secrets.
There are many possibilities for accomplishing this with a github repo:
 - gpg with scripts
 - encrypting the whole repo
 - ansible-vault



---
Encryption is a much safer method for the saving of secrets.
There are many possibilities for accomplishing this with a github repo:
 - gpg with scripts
 - encrypting the whole repo
 - ansible-vault
 - and others I'm not bothering to write about


---

-> Why Ansible Vault? <-






---

-> Why Ansible Vault? <-

-> It's the simpliest solution. <-




---

-> Why Ansible Vault? <-

-> It's the simpliest solution. <-

Ansible-vault is already built into ansible!



---

-> Why Ansible Vault? <-

-> It's the simpliest solution. <-

Ansible-vault is already built into ansible!
- we don't have to maintain something ourselves


---

-> Why Ansible Vault? <-

-> It's the simpliest solution. <-

Ansible-vault is already built into ansible!
- we don't have to maintain something ourselves
- we can leave most of the repo in plaintext

---

-> How to setup <-












---

-> How to setup <-

The simplest setup with ansible vault is to have plantext file. 
\!!!The file should NOT be in the github repo!!!









---

-> How to setup <-

The simplest setup with ansible vault is to have plantext file. 
\!!!The file should NOT be in the github repo!!!

It is then distributed to folks who work with the repo. 







---

-> How to setup <-

The simplest setup with ansible vault is to have plantext file. 
\!!!The file should NOT be in the github repo!!!

It is then distributed to folks who work with the repo. 

While quick to start, this would be a file in cleartext making it 





---

-> How to setup <-

The simplest setup with ansible vault is to have plantext file. 
\!!!The file should NOT be in the github repo!!!

It is then distributed to folks who work with the repo. 

While quick to start, this would be a file in cleartext making it 
- easy to misplace 




---

-> How to setup <-

The simplest setup with ansible vault is to have plantext file. 
\!!!The file should NOT be in the github repo!!!

It is then distributed to folks who work with the repo. 

While quick to start, this would be a file in cleartext making it 
- easy to misplace 
- hard to track who has access



---

-> How to setup <-

The simplest setup with ansible vault is to have plantext file. 
\!!!The file should NOT be in the github repo!!!

It is then distributed to folks who work with the repo. 

While quick to start, this would be a file in cleartext making it 
- easy to misplace 
- hard to track who has access

Good but not great.

---

-> Fortunately Ansible can also use scripts!  <-










---

-> Fortunately Ansible can also use scripts!  <-

There are many options..
But again makes the most sense to use a service 







---

-> Fortunately Ansible can also use scripts!  <-

There are many options..
But again makes the most sense to use a service 
- maintained by someone else






---

-> Fortunately Ansible can also use scripts!  <-

There are many options..
But again makes the most sense to use a service 
- maintained by someone else
- that can meet some regulatory standards. 





---

-> Fortunately Ansible can also use scripts!  <-

There are many options..
But again makes the most sense to use a service 
- maintained by someone else
- that can meet some regulatory standards. 

The AWS secrets service is all of those!



---

-> Fortunately Ansible can also use scripts!  <-

There are many options..
But again makes the most sense to use a service 
- maintained by someone else
- that can meet some regulatory standards. 

The AWS secrets service is all of those!
- maintained by AWS


---

-> Fortunately Ansible can also use scripts!  <-

There are many options..
But again makes the most sense to use a service 
- maintained by someone else
- that can meet some regulatory standards. 

The AWS secrets service is all of those!
- maintained by AWS
- hippa, and pci compliant.

---

-> The process: <-















---

-> The process: <-

The variable is put in a separate file:













---

-> The process: <-

The variable is put in a separate file:

Before:                       contents:
foo_vaulted.yml  →            foo: super










---

-> The process: <-

The variable is put in a separate file:

Before:                       contents:
foo_vaulted.yml  →            foo: super

you run the command `ansible-vault encrypt foo-vaulted.yml`







---

-> The process: <-

The variable is put in a separate file:

Before:                       contents:
foo_vaulted.yml  →            foo: super

you run the command `ansible-vault encrypt foo-vaulted.yml`

After:                          contents:
foo_vaulted.yml →               $ANSIBLE_VAULT;1.1;AES
                                  30373238373330356232363665306636396162343764663234653363343
                                  32303461373734303532326630306336646631656337630a32613730343
                                  56263363733626362316339343263326337326339616466383032613238

---

When ansible is run it will decrypt any encrypted variables without any user intervention
So just run ansible normally! `ansible-playbook playbooks/foo.yml`







---

When ansible is run it will decrypt any encrypted variables without any user intervention
So just run ansible normally! `ansible-playbook playbooks/foo.yml`

If you want to see the contents of the file again:
`ansible-vault view foo.yml`




---

When ansible is run it will decrypt any encrypted variables without any user intervention
So just run ansible normally! `ansible-playbook playbooks/foo.yml`

If you want to see the contents of the file again:
`ansible-vault view foo.yml`

If you want to edit:
`ansible-vault edit foo.yml`

---

-> What is happening: <-










---

-> What is happening: <-

In the ansible.cfg file the ansible vault file is set








---

-> What is happening: <-

In the ansible.cfg file the ansible vault file is set

ansible.cfg \->   ...
                 some_other_config = otherstuff
                 vault_password_file = aws_vault_pw.py
                 ...





---

-> What is happening: <-

In the ansible.cfg file the ansible vault file is set

ansible.cfg \->   ...
                 some_other_config = otherstuff
                 vault_password_file = aws_vault_pw.py
                 ...

In this case it’s pointing to a script.
The script makes a call against the aws secrets service.
The call requires that the user has aws credentials setup.

---

File: ~/.aws/credentials  \->           contents:
                                       [edovo]
                                       aws_access_key_id=somebunchofstuff
                                       aws_secret_access_key=someotherbunchofstuff







---

File: ~/.aws/credentials  \->           contents:
                                       [edovo]
                                       aws_access_key_id=somebunchofstuff
                                       aws_secret_access_key=someotherbunchofstuff

1. If the aws credentials provided can access the secret...





---

File: ~/.aws/credentials  \->           contents:
                                       [edovo]
                                       aws_access_key_id=somebunchofstuff
                                       aws_secret_access_key=someotherbunchofstuff

1. If the aws credentials provided can access the secret...

2. Ansible-vault just works!



---

File: ~/.aws/credentials  \->           contents:
                                       [edovo]
                                       aws_access_key_id=somebunchofstuff
                                       aws_secret_access_key=someotherbunchofstuff

1. If the aws credentials provided can access the secret...

2. Ansible-vault just works!

3. Profit?

---
\                       \_   \_                \_\_\_
  \_\_ \_ \_   \_  \_\_\_  \_\_\_| |\_(\_) \_\_\_  \_ \_\_  \_\_|\_\_ \\
 / \_\` | | | |/ \_ \\/ \_\_| \_\_| |/ \_ \\| '\_ \\/ \_\_|/ /
| (\_| | |\_| |  \_\_/\\\_\_ \\ |\_| | (\_) | | | \\\_\_ \\\_|
 \\\_\_, |\\\_\_,\_|\\\_\_\_||\_\_\_/\\\_\_|\_|\\\_\_\_/|\_| |\_|\_\_\_(\_)
    |\_|

presentation in MDP:
- https://github.com/visit1985/mdp
- see README in repo
-- https://github.com/edovo-joshua-leigh/presentations
