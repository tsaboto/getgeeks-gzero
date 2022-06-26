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

    name='Betao Santos'
    email= 'betao@gmail.com'
    password= 'pwd123'

    data = {

        'signup': {
            'name': name,
            'email': email,
            'password': password
        },
        'login':{
            'email': email,
            'password': password
        }
    }

    return data[target]