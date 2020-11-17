<%-- 
    Document   : index
    Created on : 16 de nov de 2020, 15:23:11
    Author     : guilherme
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>

        <c:import url="/WEB-INF/comum/Head.jsp"></c:import>

            <title>Desafio </title>

        </head>

        <body id="page-top">

        <c:import url="/WEB-INF/comum/Topo.jsp"></c:import>
            <!-- NAVBAR -->

            <div id="wrapper">
                <!-- MENU LATERAL -->
            <c:import url="/WEB-INF/comum/Menu.jsp"></c:import>

                <div id="content-wrapper">
                    <div class="container-fluid">

                        <!-- MENSAGEM -->
                    <c:import url="/WEB-INF/comum/Mensagem.jsp"></c:import>


                        <div class="card mb-3">

                            <div class="card-header">
                                <i class="fas fa-street-view"></i> <strong>Endereço</strong>

                                <a href="#" data-toggle="modal" data-target="#enderecoModal" data-nomeacao="Cadastrar Endereço" data-action="cadastrar" class="float-right btn btn-sm btn-primary">
                                    <i class="fas fa-plus"></i>&nbsp; Cadastrar endereço
                                </a>


                            </div>
                            <div class="card-body">

                                <div class="table-responsive">
                                    <div id="spinner" class="col text-center" style="height: 400px; font-size: 2em; display: none">
                                        <i class="fas fa-spinner fa-pulse fa-lg"></i>
                                    </div>
                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                        <div class="col-sm-12">
                                            <table class="table table-bordered table-striped table-hover table-sm text-center" id="dataTable" style="width:100%; display: none">
                                                <thead >
                                                    <tr>
                                                        <th>Id</th>
                                                        <th>Rua</th>
                                                        <th>N°</th>
                                                        <th>Cidade</th>
                                                        <th>Ações <i class="fas fa-lg fa-cog"></i></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!--CADASTROS PM-->
                                                <c:forEach var="endereco" items="${listEndereco}">
                                                    <tr>
                                                        <td>${endereco.id}</td>
                                                        <td>${endereco.streetName}</td>
                                                        <td>${endereco.number}</td>
                                                        <td>${endereco.city}</td>
                                                        <td>
                                                            <button type="button" onclick="consulta('${endereco.id}')" class="btn btn-sm btn-outline-info"><i class="fas fa-lg fa-search" title="Consultar"></i></button>
                                                            <a href="#" data-toggle="modal" data-target="#enderecoModal" data-nomeacao="Editar Endereço" data-id="${endereco.id}" data-street="${endereco.streetName}" data-number="${endereco.number}" data-complement="${endereco.complement}" data-neighbourhood="${endereco.neighbourhood}" data-city="${endereco.city}" data-state="${endereco.state}" data-country="${endereco.country}" data-zipcode="${endereco.zipcode}" data-action="editar" class="btn btn-sm btn-outline-primary"><i class="fas fa-lg fa-edit"></i></a>
                                                            <a href="excluir?id=${endereco.id}" class="btn btn-sm btn-outline-danger"><i class="fas fa-lg fa-trash-alt"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                                <br>
                                <div id="consulta">
                                    <h5>Consulta:</h5>
                                    <div class="row">
                                        <div class="col">
                                            <label>Nome da Rua:&nbsp;</label><span id="campo1"></span>
                                        </div>                                        
                                        <div class="col">
                                            <label>Número:&nbsp;</label><span id="campo2"></span>
                                        </div>                                        
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label>Complemento:&nbsp;</label><span id="campo3"></span>
                                        </div>                                        
                                        <div class="col">
                                            <label>Referência:&nbsp;</label><span id="campo4"></span>
                                        </div>                                        
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label>Cidade:&nbsp;</label><span id="campo5"></span>
                                        </div>                                        
                                        <div class="col">
                                            <label>Estado:&nbsp;</label><span id="campo6"></span>
                                        </div>                                        
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <label>País:&nbsp;</label><span id="campo7"></span>
                                        </div>                                        
                                        <div class="col">
                                            <label>Código Postal:&nbsp;</label><span id="campo8"></span>
                                        </div>                                        
                                    </div>
                                </div>

                            <!-- ------------ CONTEUDO AQUI  ------------------ -->

                        </div>
                    </div>



                </div>
                <!-- /.container-fluid -->
                <c:import url="/WEB-INF/comum/Footer.jsp"></c:import>
                    <!-- RODAPE -->
                </div>
                <!-- /.content-wrapper -->
            </div>
            <!-- /#wrapper -->

            <div class="modal fade bd-example-modal-lg" id="enderecoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Cadastrar Endereço</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">x</span>
                            </button>
                        </div>
                        <form autocomplete="off" id="formModalEndereco" method="POST">
                            <div class="modal-body">
                                <div class="form-group">
                                    <input type="hidden" id="id" name="id" value="">
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="text" name="streetName" id="streetName" class="form-control" placeholder="Nome da Rua" required="" value="">
                                                    <label for="streetName">Nome da Rua</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="number" name="number" id="number" class="form-control" placeholder="Número" required="" value="">
                                                    <label for="number">Número</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="text" name="complement" id="complement" class="form-control" placeholder="Complemento" value="">
                                                    <label for="complement">Complemento</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="text" name="neighbourhood" id="neighbourhood" class="form-control" placeholder="Referência" required="" value="">
                                                    <label for="neighbourhood">Referência</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="text" name="city" id="city" class="form-control" placeholder="Cidade" required="" value="">
                                                    <label for="city">Cidade</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="text" name="state" id="state" class="form-control" style="text-transform: uppercase" maxlength="2" placeholder="Estado" required="" value="">
                                                    <label for="state">Estado</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row"> 
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="text" name="country" id="country" class="form-control" placeholder="País" value="">
                                                    <label for="country">País</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <div class="form-label-group">
                                                    <input type="text" name="zipcode" id="zipcode" class="form-control" placeholder="Codigo Postal" required="" value="">
                                                    <label for="zipcode">Codigo Postal</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div id="map"></div> 
                                    </div>

                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <input type="submit" class="btn btn-primary" value="Salvar"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        <c:import url="/WEB-INF/comum/Final.jsp"></c:import>
        <!-- FIM DE PAGINA E MODALS -->
    </body>

    <script>
        $('#enderecoModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); // Button that triggered the modal
            var recipient = button.data('id'); // Extract info from data-* attributes
            var recipient2 = button.data('street');
            var recipient3 = button.data('number');
            var recipient4 = button.data('complement');
            var recipient5 = button.data('neighbourhood');
            var recipient6 = button.data('city');
            var recipient7 = button.data('state');
            var recipient8 = button.data('country');
            var recipient9 = button.data('zipcode');
            var recipient10 = button.data('action');
            var recipient11 = button.data('nomeacao');

            var modal = $(this);
            modal.find('.modal-title').text(recipient11);
            $('#formModalEndereco').attr('action', recipient10);
            $(this).find('#streetName').focus();
            modal.find('#id').val(recipient);
            modal.find('#streetName').val(recipient2);
            modal.find('#number').val(recipient3);
            modal.find('#complement').val(recipient4);
            modal.find('#neighbourhood').val(recipient5);
            modal.find('#city').val(recipient6);
            modal.find('#state').val(recipient7);
            modal.find('#country').val(recipient8);
            modal.find('#zipcode').val(recipient9);

        });
        
        function consulta(id){
            $.ajax({
                url: "consulta?id=" + id ,
                dataType: 'json',
                success: function (resposta) {
                    console.log(resposta);
                    resposta.forEach(function (i) {
                        $('#campo1').html(i.streetName);
                        $('#campo2').html(i.number);
                        $('#campo3').html(i.complement);
                        $('#campo4').html(i.neighbourhood);
                        $('#campo5').html(i.city);
                        $('#campo6').html(i.state);
                        $('#campo7').html(i.country);
                        $('#campo8').html(i.zipcode);
                    });
                }
            }); //ajax
        }

    </script>

</html>


