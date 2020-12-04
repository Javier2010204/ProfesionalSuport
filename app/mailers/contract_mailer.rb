class ContractMailer < ApplicationMailer

    default from: "micorreo@gmail.com"

    def new_contract_mail(contract)
        @contract = contract
        mail(to: @contract.email, subject: "Contrato enviado con exito")
    end
    
end
