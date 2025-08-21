print("Existe dado nulo ou vazio, insira novamente seu nome")

nome = ""

while nome == null:
    print("Nome nulo")


desconto_porcentagem = 0
opcao_pagamento = 0
forma_Pagamento = ""
dinheiro =0
valor_final =0
troco =0

if dinheiro > valor_final:
    print(f"Troco: R${troco:.2f}. Compra finalizada!")
elif dinheiro < valor_final:
    print("Saldo insuficiente, tente novamente.")
else:
    print("Compra finalizada!")


match opcao_pagamento:  # Decisões Encadeadas
    case 1:
        valor_final -= (valor_total * 0.1)
        print(f"Total: R${valor_final:.2f}")


def menu_cliente():
    print("ola")


nome = input("Para iniciar, insira o seu nome: ")

nome = input("Digite seu nome: ").title()



carrinho_servicos = []
carrinho_valores = []
servicos=[]
precos=[]
a=0

carrinho_servicos.append("item")
del carrinho_servicos[0]

for i in range(len(servicos)):
    print(f"{i + 1}. {servicos[i]} - R${precos[i]}")


# Lista de serviços e preços (exemplo)
servicos = ["Banho e Tosa", "Consulta Veterinária", "Hospedagem", "Creche", "Adestramento"]
precos = [70.5, 120.0, 75.9, 90.5, 130.0]

# Função para listar serviços
def listar_servicos():
    for i in range(len(servicos)):
        print(f"{i + 1}. {servicos[i]} - R${precos[i]}")

# Variável para armazenar a opção
opcao_pagamento = 0

# Simulação do do/while
while True:
    try:
        opcao_pagamento = int(input("Escolha uma opção de pagamento (1-5): "))
    except ValueError:
        print("Digite apenas números.")
        continue  # Volta para o início do loop
    if 1 <= opcao_pagamento <= 5:
        break  # Sai do loop se a opção estiver no intervalo
    print("Opção inválida")

print(f"Você escolheu a opção {opcao_pagamento}")


try:
    if not carrinho_servicos:
        print("Seu carrinho está vazio.")

    indice = int(input("Qual serviço deseja deletar? "))

    print(f"{carrinho_servicos[indice - 1]} removido.")
    del carrinho_servicos[indice - 1]
    del carrinho_valores[indice - 1]

except ValueError:
    print("Digite apenas números.")  # equivalente ao FormatException

except IndexError:
    print("Serviço inválido.")  # equivalente ao RangeError


