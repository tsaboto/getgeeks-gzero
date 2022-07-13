from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def users_to_insert_db():
    return[
        factory_user('login'),
        factory_user('be_geek'),
        factory_user('attempt_be_geek')
    ]

def factory_user(target):

    data = {
        'faker':{
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email':{
            'name':'Maria',
            'lastname': 'Campos',
            'email': 'maria.campos&gmail',
            'password': 'pwd123'
        },

        'login':{
            'name': 'Tatiane',
            'lastname': 'Saboto',
            'email': 'tsaboto@gmail.com',
            'password': 'pwd123'
        },
        'be_geek':{
            'name': 'Kim',
            'lastname': 'Dotcom',
            'email': 'kim@dot.com',
            'password': 'pwd123',
            'geek_profile':{
                'whats': '11999999999',
                'desc': 'Seu computador esta lento? Reiniciando do Nada? Talvez seja um virus ou alguma hardware com defeito. Posso fazer a manutenção do seu PC, fomartando, reinstalando o SO, trocando alguma componentes fisico. So me chamar no whatsAPP',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        },
        'attempt_be_geek':{
            'name': 'Paulo',
            'lastname': 'De Castro',
            'email': 'paulodc@dot.com',
            'password': 'pwd123',
            'geek_profile':{
                'whats': '22999999999',
                'desc': 'Formato seu PCFormato seu PCFormato seu PCFormato seu PC Formato seu PC Formato seu PCFormato seu PCFormato seu PCFormato seu PCFormato seu PCFormato seu PCFormato seu PCFormato seu PCFormato seu PCFormato ',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '200'
            }
        }

    }

    return data[target]