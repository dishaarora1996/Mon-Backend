"""
Django settings for bba project.

Generated by 'django-admin startproject' using Django 4.2.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.2/ref/settings/
"""

from pathlib import Path
import os
from django.contrib.messages import constants as messages
from dotenv import load_dotenv

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

load_dotenv()

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = str(os.getenv('SECRET_KEY'))

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['*']


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'whitenoise.runserver_nostatic', # Ensure this is before 'django.contrib.staticfiles'
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'corsheaders',
    'bba_admin',
    'rest_framework',
    'knox', # pip install django-rest-knox
    # 'rest_framework.authtoken',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',  # Add WhiteNoise middleware
    'django.contrib.sessions.middleware.SessionMiddleware',
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

CORS_ALLOW_ALL_ORIGINS = True

IMAGE_MEDIA_PATH = str(os.getenv('IMAGE_MEDIA_PATH'))

ROOT_URLCONF = 'bba.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
		        'bba_admin.context_processors.image_url',
                'bba_admin.context_processors.menu_permission',
            ],
        },
    },
]

WSGI_APPLICATION = 'bba.wsgi.application'



# ============================ Oauth implementation =====================================#
# REST_FRAMEWORK = {
# 	# 'DEFAULT_AUTHENTICATION_CLASSES': (
# 	# 	#'rest_framework.authentication.TokenAuthentication',
# 	# 	'knox.auth.TokenAuthentication',
# 	# ),
# 	'DEFAULT_PERMISSION_CLASSES': (
# 		# 'rest_framework.permissions.IsAuthenticated',
# 		'rest_framework.permissions.AllowAny',
# 	),
#    # 'EXCEPTION_HANDLER':'exceptions.root_simple_error_handler'
# }



# Database
# https://docs.djangoproject.com/en/4.2/ref/settings/#databases


# if bool(int(str(os.getenv('SQLITE')))):
#     PROJECT_DIR = os.path.abspath(os.path.dirname(__file__))
#     DATABASES = {
#         'default': {
#             'ENGINE': 'django.db.backends.sqlite3',
#             'NAME': os.path.join(PROJECT_DIR, 'my.db'),
#         }
#     }
# else:
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': str(os.getenv('PG_DATABASES_NAME')),
        'USER': str(os.getenv('PG_DATABASES_USER')),
        'PASSWORD': str(os.getenv('PG_DATABASES_PASSWORD')),
        'HOST': str(os.getenv('PG_DATABASES_HOST')),
        'PORT': str(os.getenv('PG_DATABASES_PORT')),
    }
}




# Password validation
# https://docs.djangoproject.com/en/4.2/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.2/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_DIRS = (
    os.path.join(BASE_DIR, 'static'),
)

STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

# Default primary key field type
# https://docs.djangoproject.com/en/4.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

MEDIA_ROOT = BASE_DIR/'media'
MEDIA_URL = '/media/'

MESSAGE_TAGS = {
        messages.DEBUG: 'alert-secondary',
        messages.INFO: 'alert-info',
        messages.SUCCESS: 'alert-success',
        messages.WARNING: 'alert-warning',
        messages.ERROR: 'alert-danger',
 }

# Set up logging directory
LOGS_DIR = BASE_DIR / 'logs'
LOGS_DIR.mkdir(exist_ok=True)

if bool(int(str(os.getenv('LOGGING_ENABLED')))):
    LOGGING = {
        'version': 1,
        'disable_existing_loggers': False,
        'handlers': {
            'file': {
                'level': 'DEBUG',
                'class': 'logging.FileHandler',
                'filename': LOGS_DIR / 'debug.log',
            },
        },
        'loggers': {
            'django': {
                'handlers': ['file'],
                'level': 'DEBUG',
                'propagate': True,
            },
        },
    }
else:
    pass


# AUTH_USER_MODEL= 'auth.User'  #django.contrib.auth.model


# =================================== Knox Settings =====================
REST_KNOX = {
  'SECURE_HASH_ALGORITHM': 'cryptography.hazmat.primitives.hashes.SHA512',
  'AUTH_TOKEN_CHARACTER_LENGTH': 64,
  'TOKEN_TTL': None, # timedelta(hours=10) Token never expire
  'USER_SERIALIZER': 'knox.serializers.UserSerializer',
  'TOKEN_LIMIT_PER_USER': None,
  'AUTO_REFRESH': False,
  #'EXPIRY_DATETIME_FORMAT': api_settings.DATETME_FORMAT,
}











# LOGGER_ROTATING_FILE_HANDLER_MESSAGES = 'logging.handlers.RotatingFileHandler'
# LOGGING = {
#     'version': 1,
#     'disable_existing_loggers': False,
#     'formatters': {
#         'file': {
#             'format': '%(asctime)s %(name) - 12s %(levelname) - 8s %(message)s'
#         },
#         'console': {
#             'format': '%(asctime)s %(name) - 12s %(levelname) - 8s %(message)s'
#         }
#     },
#     'handlers': {
#         'file_bba_admin': {
#             'level': 'INFO',
#             'class': LOGGER_ROTATING_FILE_HANDLER_MESSAGES,
#             'filename': 'logs/bba_admin.log',
#             'maxBytes': 1048576, # 20MB = 20971520
#             'backupCount': 2,
#             'formatter': 'file',
#             'delay': False
#         },
#         'console': {
#         'level': 'INFO',
#         'class': 'logging.StreamHandler',
#         'formatter': 'console'
#         }
#     },
#     'loggers': {
#         'django': {
#             'level': 'INFO',
#             'handlers': ['console'],
#             'propagate': True
#         },
#         'bba_admin': {
#             'level': 'INFO',
#             'handlers': ['file_bba_admin'],
#             'propagate': True
#         }
#     }
# }
#
#