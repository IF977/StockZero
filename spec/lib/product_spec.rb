require "spec_helper"
require "product"
describe Product do
    regex_letters = /[A-Za-z]/
    regex_number = /[0-9]/
    
    
    
    pr=Product.new
    
    it "Instance of product" do
        expect(pr).to be_an_instance_of(Product)
    end
    
    it "nome_produto is valid" do
        expect(pr.nome_produto).to match(regex_letters)
        expect(pr.nome_produto).not_to be_empty
        expect(pr.nome_produto).to be_an_instance_of(String)
    end
    it "preco is valid" do
        expect(pr.preco).to match(regex_letters)
        expect(pr.preco).not_to be_empty
        expect(pr.preco).to be_an_instance_of(String)
    end
    it "qtd_produtos is valid" do
        expect(pr.qtd_produtos).to match(regex_number) and match(regex_letters)
        expect(pr.qtd_produtos).not_to be_empty
        expect(pr.qtd_produtos).not_to match("99999")
        expect(pr.qtd_produtos).not_to match("vinte")
    end
    it "tempo_entrega is valid" do
        expect(pr.tempo_entrega).to match(regex_letters)
        expect(pr.tempo_entrega).not_to be_empty
        expect(pr.tempo_entrega).to be_an_instance_of(String)
    end
    it "validade is valid" do
        expect(pr.validade).to match(regex_letters)
        expect(pr.validade).not_to be_empty
        expect(pr.validade).to be_an_instance_of(String)
    end
    it "min_qtd_entrega is valid" do
        expect(pr.min_qtd_entrega).to match(regex_letters)
        expect(pr.min_qtd_entrega).not_to be_empty
        expect(pr.min_qtd_entrega).to be_an_instance_of(String)
    end
    it "descricao_produto is valid" do
        expect(pr.descricao_produto).to match(regex_letters)
        expect(pr.descricao_produto).not_to be_empty
        expect(pr.descricao_produto).to be_an_instance_of(String)
    end
    it "composicao_produto is valid" do
        expect(pr.composicao_produto).to match(regex_letters)
        expect(pr.composicao_produto).not_to be_empty
        expect(pr.composicao_produto).to be_an_instance_of(String)
    end
    it "categoria_produto is valid" do
        expect(pr.categoria_produto).to match(regex_letters)
        expect(pr.categoria_produto).not_to be_empty
        expect(pr.categoria_produto).to be_an_instance_of(String)
    end
    it "user_id is valid" do
        expect(pr.user_id).to match(regex_number) and match(regex_letters)
        expect(pr.user_id).not_to be_empty
        expect(pr.user_id).not_to match("99999")
        expect(pr.user_id).not_to match("vinte")
    end
end 
