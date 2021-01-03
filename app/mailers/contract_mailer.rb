class ContractMailer < ApplicationMailer

    default from: "info@professionalssupport.com"

    def new_contract_mail(contract)
        @contract = contract
        mail(to: @contract.email,bcc:"info@professionalssupport.com", subject: "Contrato enviado con exito")
    end
    
end
