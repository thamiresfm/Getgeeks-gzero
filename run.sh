# Para rodar git bash
robot -l NONE -o NONE -r NONE tasks/Delorean.robot
robot -d ./logs tests/Signup.robot

# chmod +x run.sh-- permissão para execultar o script