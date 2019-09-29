#!/usr/bin/python3
import os
import sys
import subprocess
import platform

def shell(cmd):
    return subprocess.run(cmd, stdout=subprocess.PIPE).stdout.decode("utf-8")

def yesno(question):
    while True:
        response = input(question + " [Y/n] ").lower()
        if response in ["", "y", "yes", "s", "sim"]:
            return True
        elif response in ["n", "no", "não", "nao"]:
            return False
        print ("Resposta inválida. Escolha Y ou N.\n")

def ask_operation(operation, question=None, default_yes=True):
    print ("Posso realiza a operação '{}'? ".format(operation))

USER = os.environ.get("USER", "user")
DISTRO_ID, DISTRO_VERSION, DISTRO_NAME = platform.linux_distribution()

operations = [
    "update-software",
]

print ("""Olá {user}, eu sou o assistente de configuração do Matheus.

Eu sei como formatar o computador é frustrante. Mas fique tranquilo! Irei
ajudar você na instalação de alguns programas básicos e também na configuração
de alguns chatos. Vamos lá!

Para começar, vou precisar de algumas informações...\n\n""".format(user=USER))

print ("""Detectei que a distribuição que você instalou é a seguinte

Distibuição: {distro}
Versão: {version}
""".format(distro=DISTRO_ID, version=DISTRO_VERSION))

if not yesno("Essas informações estão corretas?"):
    print("Infelizmente o script não sabe lidar com isso.")
    sys.exit("Você pode tentar de novo e responder SIM a esta pergunta. Mas não existe garantia de que tudo irá funcionar")

if yesno("Posso instalar mp3, codecs e outras coisas do ubuntu-restricted-extras? "):
    operations.append("install-ubuntu-restricted")

if yesno("Você vai precisar compilar alguns programas? "):
    operations.append("install-make-tools")

if yesno("Você sabe administrar o sistema? "):
    operations.append("install-admin-tools")


