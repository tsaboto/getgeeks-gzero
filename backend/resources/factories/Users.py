def factory_new_user():

    return{
        'name': 'Maria Santos',
        'email': 'santos@gmail.com',
        'password': 'pwd123'
    }

def factory_get_user():

    return{
        'name': 'Paulo Campos',
        'email': 'campos@gmail.com',
        'password': 'pwd123'
    }

def factory_remove_user():

    return{
        'name': 'Fernado Silva',
        'email': 'silva@gmail.com',
        'password': 'pwd123'
    }

def factory_update_user():


    email= 'capitao@gmail.com'

    return {

        'before': {
            'name': 'Marvel Capitao',
            'email': email,
            'password': 'pwd123'
        },
        'after':{
            'name': 'Capitao Marvel',
            'email': email,
            'whatsapp': '11998989988',
            'avatar': 'https://avatars.githubusercontent.com/u/10034574?s=400&u=179d7dc57b8d3067493c1d931d8bafb74cf2421d'
        }
    }

def factory_user_session(target):

    name = 'Kate Bishop'
    email = 'kate@hotmail.com'
    password = 'pwd123'

    data = {
        'signup': {
            'name': name,
            'email': email,
            'password': password
        },
        'login': {
            'email': email,
            'password': password
        }
    }

    return data[target]


def factory_be_geek():

    return {
        'name': 'Joao Lucas',
        'email': 'joao@qaninja.com.br',
        'password': 'pwd123',
        'geek_profile': {
            'whatsapp': '11999999999',
            'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.',
            'printer_repair': 'Sim',
            'work': 'Presencial',
            'cost': '150.99'
        }
    }

def factory_search_for_geeks():

    return {
        'user': {
            'name': 'Peter Quill',
            'email': 'quill@marvel.com',
            'password': 'pwd123'
        },
        'geeks': [
            {
                'name': 'Riri Willians',
                'email': 'riri@marvel.com',
                'password': 'pwd123',
                'geek_profile': {
                    'whatsapp': '11999999999',
                    'desc': 'Seu computador está lento? Reiniciando do nada? Talvez seja um vírus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware.',
                    'printer_repair': 'Não',
                    'work': 'Presencial',
                    'cost': '100'
                }
            },
            {
                'name': 'Arnim Zola',
                'email': 'zola@hidra.com',
                'password': 'pwd123',
                'geek_profile': {
                    'whatsapp': '21999999999',
                    'desc': 'Instalo Distros Ubuntu, Debian, ElementaryOS, PopOS, Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, RedHat, CentOS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suze, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro Linux, BigLinux, ZorinOS, Unit',
                    'printer_repair': 'Não',
                    'work': 'Ambos',
                    'cost': '110'
                }
            },
            {
                'name': 'Reed Richards',
                'email': 'reed@fantastic4.com',
                'password': 'pwd123',
                'geek_profile': {
                    'whatsapp': '31999999999',
                    'desc': 'Instalado e faço manutenção em qualquer tipo de impressora, matricial padrão, matricial fiscal, a jato, a cera, a laser e até 3D. Também faço remold de fitas coloridas para Epson LX300. ',
                    'printer_repair': 'Sim',
                    'work': 'Remoto',
                    'cost': '120'
                }
            }
        ]
    }