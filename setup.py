from setuptools import setup

setup(
    name='microservice_package',
    packages=['microservice_package'],
    include_package_data=True,
    install_requires=[
        'flask==1.1.2',
    ],
)

